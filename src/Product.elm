module Product exposing (..)

import Json.Decode as Decode
import Json.Decode.Extra as Decode


type alias Product =
    { sku : ProductSku
    , name : ProductName
    , prices : List ProductPrice
    , dimensionValues : List DimensionValue
    }


type ProductSku
    = ProductSku String


type ProductName
    = ProductName String


type alias ProductPrice =
    { currencyUnits : Int
    , currencyHundredthsOfUnits : Int
    , currencyCode : CurrencyCode
    }


type CurrencyCode
    = AED
    | AUD
    | CAD
    | EUR
    | GBP
    | HKD
    | JPY
    | NZD
    | SGD
    | USD


allCurrencyCodes : List CurrencyCode
allCurrencyCodes =
    let
        pleaseDontForgetToUpdateThisFunction x =
            case x of
                AED ->
                    ()

                AUD ->
                    ()

                CAD ->
                    ()

                EUR ->
                    ()

                GBP ->
                    ()

                HKD ->
                    ()

                JPY ->
                    ()

                NZD ->
                    ()

                SGD ->
                    ()

                USD ->
                    ()
    in
    [ AED
    , AUD
    , CAD
    , EUR
    , GBP
    , HKD
    , JPY
    , NZD
    , SGD
    , USD
    ]


type alias DimensionValue =
    { value : String
    , dimension : Dimension
    }


type alias Dimension =
    { name : String
    }


productNameToString : ProductName -> String
productNameToString (ProductName name) =
    name


skuToString : ProductSku -> String
skuToString (ProductSku sku) =
    sku


currencyCodeToString : CurrencyCode -> String
currencyCodeToString cCode =
    case cCode of
        AED ->
            "AED"

        AUD ->
            "AUD"

        CAD ->
            "CAD"

        EUR ->
            "EUR"

        GBP ->
            "GBP"

        HKD ->
            "HKD"

        JPY ->
            "JPY"

        NZD ->
            "NZD"

        SGD ->
            "SGD"

        USD ->
            "USD"


currencyCodeFromString : String -> Maybe CurrencyCode
currencyCodeFromString s =
    case s of
        "AED" ->
            Just AED

        "AUD" ->
            Just AUD

        "CAD" ->
            Just CAD

        "EUR" ->
            Just EUR

        "GBP" ->
            Just GBP

        "HKD" ->
            Just HKD

        "JPY" ->
            Just JPY

        "NZD" ->
            Just NZD

        "SGD" ->
            Just SGD

        "USD" ->
            Just USD

        _ ->
            Nothing


decoder : Decode.Decoder Product
decoder =
    Decode.succeed Product
        |> Decode.andMap (Decode.field "sku" decodeSku)
        |> Decode.andMap (Decode.field "name" decodeName)
        |> Decode.andMap (Decode.field "prices" (Decode.list decodePrice))
        |> Decode.andMap (Decode.field "dimensionValues" (Decode.list decodeDimensionValue))


decodeSku : Decode.Decoder ProductSku
decodeSku =
    Decode.succeed ProductSku
        |> Decode.andMap Decode.string


decodeName : Decode.Decoder ProductName
decodeName =
    Decode.map ProductName Decode.string


decodePrice : Decode.Decoder ProductPrice
decodePrice =
    Decode.succeed ProductPrice
        |> Decode.andMap (Decode.field "units" Decode.int)
        |> Decode.andMap (Decode.field "hundredths" Decode.int)
        |> Decode.andMap (Decode.field "currencyCode" decodeCurrencyCode)


decodeDimensionValue : Decode.Decoder DimensionValue
decodeDimensionValue =
    Decode.succeed DimensionValue
        |> Decode.andMap (Decode.field "value" Decode.string)
        |> Decode.andMap (Decode.field "dimension" decodeDimension)


decodeCurrencyCode : Decode.Decoder CurrencyCode
decodeCurrencyCode =
    Decode.string
        |> Decode.andThen
            (currencyCodeFromString
                >> Decode.fromMaybe "invalid currency code"
            )


decodeDimension : Decode.Decoder Dimension
decodeDimension =
    Decode.succeed Dimension
        |> Decode.andMap (Decode.field "name" Decode.string)


sampleProducts : List Product
sampleProducts =
    [ Product
        (ProductSku "AMPA-GUN-401")
        (ProductName "Micro Pen - Gunmetal")
        [ ProductPrice 150 0 HKD
        , ProductPrice 29 0 AUD
        , ProductPrice 25 0 CAD
        , ProductPrice 19 0 EUR
        , ProductPrice 18 0 GBP
        , ProductPrice 2700 0 JPY
        , ProductPrice 29 0 SGD
        , ProductPrice 19 0 USD
        , ProductPrice 70 0 AED
        , ProductPrice 35 0 NZD
        ]
        [ DimensionValue "gunmetal" (Dimension "Color")
        , DimensionValue "metal" (Dimension "Material")
        , DimensionValue "facebook" (Dimension "Product Feed")
        , DimensionValue "google_shopping" (Dimension "Product Feed")
        , DimensionValue "instagram" (Dimension "Product Feed")
        , DimensionValue "rakuten_affiliate" (Dimension "Product Feed")
        , DimensionValue "Writing" (Dimension "Product Range")
        , DimensionValue "Micro Pen" (Dimension "Product Style")
        , DimensionValue "Work Accessories" (Dimension "Product Type")
        , DimensionValue "extra_small" (Dimension "Shipping Sizes")
        , DimensionValue "AMPA" (Dimension "Style")
        ]
    ]
