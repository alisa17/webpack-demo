module Main exposing (..)

import Browser
import Html exposing (Html, div, h1, img, text)
import Html.Attributes as HtmlA exposing (src)
import Html.Events as HtmlE
import Product exposing (DimensionValue, Product, ProductPrice)
import Task


main : Program () Model Msg
main =
    Browser.element
        { view = view
        , init = \_ -> init
        , update = update
        , subscriptions = always Sub.none
        }


type alias Model =
    { applicationState : ApplicationState
    , products : List Product
    }


type ApplicationState
    = AllProducts
    | SingleProduct Product


init : ( Model, Cmd Msg )
init =
    ( { applicationState = AllProducts

      -- TODO: don't initialise with sample data
      , products = Product.sampleProducts
      }
    , Cmd.none
    )


type Msg
    = UserSelectsProduct Product
    | UserListsProducts


update : Msg -> Model -> ( Model, Cmd Msg )
update msg model =
    case msg of
        UserListsProducts ->
            ( { model | applicationState = AllProducts }, Cmd.none )

        UserSelectsProduct p ->
            ( { model | applicationState = SingleProduct p }, Cmd.none )


view : Model -> Html Msg
view { applicationState, products } =
    case applicationState of
        AllProducts ->
            List.map (viewProduct applicationState) products
                |> Html.div [ HtmlA.class "products" ]

        SingleProduct p ->
            div [] [ viewProduct applicationState p ]


viewProduct : ApplicationState -> Product -> Html Msg
viewProduct appState ({ name, sku, prices, dimensionValues } as product) =
    let
        action =
            case appState of
                SingleProduct _ ->
                    UserListsProducts

                AllProducts ->
                    UserSelectsProduct product

        actionText =
            case appState of
                SingleProduct _ ->
                    "Back >>"

                AllProducts ->
                    "See more"
    in
    [ Html.h2 [] [ Html.text <| Product.productNameToString name ]
    , Html.div [] [ Html.text <| Product.skuToString sku ]
    , Html.div [] (viewPrices prices)
    , case appState of
        SingleProduct _ ->
            viewDimensions dimensionValues

        AllProducts ->
            Html.text ""
    , Html.button [ HtmlE.onClick action ] [ Html.text actionText ]
    ]
        |> Html.div [ HtmlA.class "product" ]


viewPrices : List ProductPrice -> List (Html msg)
viewPrices prices =
    List.map
        (\{ currencyUnits, currencyHundredthsOfUnits, currencyCode } ->
            Html.div []
                [ Html.text (Product.currencyCodeToString currencyCode ++ ": " ++ String.fromInt currencyUnits ++ String.fromInt currencyHundredthsOfUnits)
                ]
        )
        prices


viewDimensions : List DimensionValue -> Html msg
viewDimensions dimensions =
    List.map (\{ value, dimension } -> Html.li [] [ Html.text <| dimension.name ++ ":" ++ value ])
        dimensions
        |> Html.ul []
