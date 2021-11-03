module Tests exposing (currencyCodeRoundTrip, productCanBeParsed)

import Expect
import Json.Decode as Json
import Product exposing (Product)
import Test exposing (Test, describe, test)


productCanBeParsed : Test
productCanBeParsed =
    test "Sample product can be parsed" <|
        \_ ->
            Json.decodeString Product.decoder sampleProductJson
                |> Expect.equal (Ok sampleProduct)


currencyCodeRoundTrip : Test
currencyCodeRoundTrip =
    test "currencyCodeToString and currencyCodeFromString are inverses" <|
        \() ->
            Expect.all
                (Product.allCurrencyCodes
                    |> List.map
                        (\currencyCode () ->
                            Product.currencyCodeToString currencyCode
                                |> Product.currencyCodeFromString
                                |> Expect.equal (Just currencyCode)
                        )
                )
                ()


sampleProductJson : String
sampleProductJson =
    """
{"sku":"AMPA-GUN-401","name":"Micro Pen - Gunmetal","prices":[{"units":150,"hundredths":0,"currencyCode":"HKD"},{"units":29,"hundredths":0,"currencyCode":"AUD"},{"units":25,"hundredths":0,"currencyCode":"CAD"},{"units":19,"hundredths":0,"currencyCode":"EUR"},{"units":18,"hundredths":0,"currencyCode":"GBP"},{"units":2700,"hundredths":0,"currencyCode":"JPY"},{"units":29,"hundredths":0,"currencyCode":"SGD"},{"units":19,"hundredths":0,"currencyCode":"USD"},{"units":70,"hundredths":0,"currencyCode":"AED"},{"units":35,"hundredths":0,"currencyCode":"NZD"}],"dimensionValues":[{"value":"gunmetal","dimension":{"name":"Color"}},{"value":"metal","dimension":{"name":"Material"}},{"value":"facebook","dimension":{"name":"Product Feed"}},{"value":"google_shopping","dimension":{"name":"Product Feed"}},{"value":"instagram","dimension":{"name":"Product Feed"}},{"value":"rakuten_affiliate","dimension":{"name":"Product Feed"}},{"value":"Writing","dimension":{"name":"Product Range"}},{"value":"Micro Pen","dimension":{"name":"Product Style"}},{"value":"Work Accessories","dimension":{"name":"Product Type"}},{"value":"extra_small","dimension":{"name":"Shipping Sizes"}},{"value":"AMPA","dimension":{"name":"Style"}}]}
"""


sampleProduct : Product
sampleProduct =
    { sku = Product.ProductSku "AMPA-GUN-401"
    , name = Product.ProductName "Micro Pen - Gunmetal"
    , prices =
        [ { currencyUnits = 150, currencyHundredthsOfUnits = 0, currencyCode = Product.HKD }
        , { currencyUnits = 29, currencyHundredthsOfUnits = 0, currencyCode = Product.AUD }
        , { currencyUnits = 25, currencyHundredthsOfUnits = 0, currencyCode = Product.CAD }
        , { currencyUnits = 19, currencyHundredthsOfUnits = 0, currencyCode = Product.EUR }
        , { currencyUnits = 18, currencyHundredthsOfUnits = 0, currencyCode = Product.GBP }
        , { currencyUnits = 2700, currencyHundredthsOfUnits = 0, currencyCode = Product.JPY }
        , { currencyUnits = 29, currencyHundredthsOfUnits = 0, currencyCode = Product.SGD }
        , { currencyUnits = 19, currencyHundredthsOfUnits = 0, currencyCode = Product.USD }
        , { currencyUnits = 70, currencyHundredthsOfUnits = 0, currencyCode = Product.AED }
        , { currencyUnits = 35, currencyHundredthsOfUnits = 0, currencyCode = Product.NZD }
        ]
    , dimensionValues =
        [ { value = "gunmetal", dimension = { name = "Color" } }
        , { value = "metal", dimension = { name = "Material" } }
        , { value = "facebook", dimension = { name = "Product Feed" } }
        , { value = "google_shopping", dimension = { name = "Product Feed" } }
        , { value = "instagram", dimension = { name = "Product Feed" } }
        , { value = "rakuten_affiliate", dimension = { name = "Product Feed" } }
        , { value = "Writing", dimension = { name = "Product Range" } }
        , { value = "Micro Pen", dimension = { name = "Product Style" } }
        , { value = "Work Accessories", dimension = { name = "Product Type" } }
        , { value = "extra_small", dimension = { name = "Shipping Sizes" } }
        , { value = "AMPA", dimension = { name = "Style" } }
        ]
    }
