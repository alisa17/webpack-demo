module Main exposing (..)

import Browser
import Html exposing (Html, div, h1, img, text)
import Html.Attributes as HtmlA exposing (src)
import Product exposing (Product)
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
            List.map (\p -> Html.h1 [] [ Html.text <| Product.getProductNameString p ]) products
                |> Html.div [ HtmlA.class "hello" ]

        SingleProduct p ->
            div [] [ Html.text "single" ]
