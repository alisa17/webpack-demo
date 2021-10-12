module Product exposing (..)


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
    , Product
        (ProductSku "ANTA-BLK-401")
        (ProductName "The Notetaker - Black")
        [ ProductPrice 230 0 HKD
        , ProductPrice 45 0 AUD
        , ProductPrice 39 0 CAD
        , ProductPrice 29 0 EUR
        , ProductPrice 25 0 GBP
        , ProductPrice 4000 0 JPY
        , ProductPrice 39 0 SGD
        , ProductPrice 29 0 USD
        , ProductPrice 109 0 AED
        , ProductPrice 49 0 NZD
        ]
        [ DimensionValue "black" (Dimension "Color")
        , DimensionValue "metal" (Dimension "Material")
        , DimensionValue "facebook" (Dimension "Product Feed")
        , DimensionValue "google_shopping" (Dimension "Product Feed")
        , DimensionValue "instagram" (Dimension "Product Feed")
        , DimensionValue "rakuten_affiliate" (Dimension "Product Feed")
        , DimensionValue "Writing" (Dimension "Product Range")
        , DimensionValue "The Notetaker" (Dimension "Product Style")
        , DimensionValue "Work Accessories" (Dimension "Product Type")
        , DimensionValue "extra_small" (Dimension "Shipping Sizes")
        , DimensionValue "ANTA" (Dimension "Style")
        ]
    , Product
        (ProductSku "BCBA-MOSSGREY")
        (ProductName "Classic Backpack - Previous Design - Moss")
        [ ProductPrice 700 0 HKD
        , ProductPrice 109 0 AUD
        , ProductPrice 95 0 CAD
        , ProductPrice 89 0 EUR
        , ProductPrice 79 0 GBP
        , ProductPrice 12200 0 JPY
        , ProductPrice 129 0 SGD
        , ProductPrice 89 0 USD
        , ProductPrice 339 0 AED
        , ProductPrice 129 0 NZD
        ]
        [ DimensionValue "moss" (Dimension "Color")
        , DimensionValue "venture" (Dimension "Material")
        , DimensionValue "facebook" (Dimension "Product Feed")
        , DimensionValue "google_shopping" (Dimension "Product Feed")
        , DimensionValue "instagram" (Dimension "Product Feed")
        , DimensionValue "rakuten_affiliate" (Dimension "Product Feed")
        , DimensionValue "Backpack" (Dimension "Product Range")
        , DimensionValue "Classic Backpack" (Dimension "Product Style")
        , DimensionValue "Bag" (Dimension "Product Type")
        , DimensionValue "feb2019-bags-promo" (Dimension "Promotion Tag")
        , DimensionValue "medium" (Dimension "Shipping Sizes")
        , DimensionValue "BCBA" (Dimension "Style")
        ]
    , Product
        (ProductSku "BCBB-ASH-202")
        (ProductName "Classic Backpack - Ash")
        [ ProductPrice 1090 0 HKD
        , ProductPrice 169 0 AUD
        , ProductPrice 149 0 CAD
        , ProductPrice 139 0 EUR
        , ProductPrice 119 0 GBP
        , ProductPrice 20300 0 JPY
        , ProductPrice 199 0 SGD
        , ProductPrice 139 0 USD
        , ProductPrice 529 0 AED
        , ProductPrice 199 0 NZD
        ]
        [ DimensionValue "ash" (Dimension "Color")
        , DimensionValue "venture" (Dimension "Material")
        , DimensionValue "facebook" (Dimension "Product Feed")
        , DimensionValue "google_shopping" (Dimension "Product Feed")
        , DimensionValue "instagram" (Dimension "Product Feed")
        , DimensionValue "rakuten_affiliate" (Dimension "Product Feed")
        , DimensionValue "Backpack" (Dimension "Product Range")
        , DimensionValue "Classic Backpack" (Dimension "Product Style")
        , DimensionValue "Bag" (Dimension "Product Type")
        , DimensionValue "large" (Dimension "Shipping Sizes")
        , DimensionValue "BCBB" (Dimension "Style")
        ]
    , Product
        (ProductSku "BCBB-BLK-204")
        (ProductName "Classic Backpack - Black")
        [ ProductPrice 1090 0 HKD
        , ProductPrice 169 0 AUD
        , ProductPrice 149 0 CAD
        , ProductPrice 139 0 EUR
        , ProductPrice 119 0 GBP
        , ProductPrice 20300 0 JPY
        , ProductPrice 199 0 SGD
        , ProductPrice 139 0 USD
        , ProductPrice 529 0 AED
        , ProductPrice 199 0 NZD
        ]
        [ DimensionValue "black" (Dimension "Color")
        , DimensionValue "nylon" (Dimension "Material")
        , DimensionValue "facebook" (Dimension "Product Feed")
        , DimensionValue "google_shopping" (Dimension "Product Feed")
        , DimensionValue "instagram" (Dimension "Product Feed")
        , DimensionValue "rakuten_affiliate" (Dimension "Product Feed")
        , DimensionValue "Backpack" (Dimension "Product Range")
        , DimensionValue "Classic Backpack" (Dimension "Product Style")
        , DimensionValue "Bag" (Dimension "Product Type")
        , DimensionValue "large" (Dimension "Shipping Sizes")
        , DimensionValue "BCBB" (Dimension "Style")
        ]
    , Product
        (ProductSku "BCBB-BNE-202")
        (ProductName "Classic Backpack - Blue Neon")
        [ ProductPrice 1090 0 HKD
        , ProductPrice 169 0 AUD
        , ProductPrice 149 0 CAD
        , ProductPrice 139 0 EUR
        , ProductPrice 119 0 GBP
        , ProductPrice 20300 0 JPY
        , ProductPrice 199 0 SGD
        , ProductPrice 139 0 USD
        , ProductPrice 529 0 AED
        , ProductPrice 199 0 NZD
        ]
        [ DimensionValue "blue_neon" (Dimension "Color")
        , DimensionValue "venture" (Dimension "Material")
        , DimensionValue "facebook" (Dimension "Product Feed")
        , DimensionValue "google_shopping" (Dimension "Product Feed")
        , DimensionValue "instagram" (Dimension "Product Feed")
        , DimensionValue "rakuten_affiliate" (Dimension "Product Feed")
        , DimensionValue "Backpack" (Dimension "Product Range")
        , DimensionValue "Classic Backpack" (Dimension "Product Style")
        , DimensionValue "Bag" (Dimension "Product Type")
        , DimensionValue "large" (Dimension "Shipping Sizes")
        , DimensionValue "BCBB" (Dimension "Style")
        ]
    , Product
        (ProductSku "BCBB-CHA-210")
        (ProductName "Classic Backpack - Charcoal")
        [ ProductPrice 1090 0 HKD
        , ProductPrice 169 0 AUD
        , ProductPrice 149 0 CAD
        , ProductPrice 139 0 EUR
        , ProductPrice 119 0 GBP
        , ProductPrice 20300 0 JPY
        , ProductPrice 199 0 SGD
        , ProductPrice 139 0 USD
        , ProductPrice 529 0 AED
        , ProductPrice 199 0 NZD
        ]
        [ DimensionValue "charcoal" (Dimension "Color")
        , DimensionValue "polycanvas_recycled" (Dimension "Material")
        , DimensionValue "facebook" (Dimension "Product Feed")
        , DimensionValue "google_shopping" (Dimension "Product Feed")
        , DimensionValue "instagram" (Dimension "Product Feed")
        , DimensionValue "rakuten_affiliate" (Dimension "Product Feed")
        , DimensionValue "Backpack" (Dimension "Product Range")
        , DimensionValue "Classic Backpack" (Dimension "Product Style")
        , DimensionValue "Bag" (Dimension "Product Type")
        , DimensionValue "large" (Dimension "Shipping Sizes")
        , DimensionValue "BCBB" (Dimension "Style")
        ]
    , Product
        (ProductSku "BCBB-DOC-208")
        (ProductName "Classic Backpack - Desert Ochre")
        [ ProductPrice 1090 0 HKD
        , ProductPrice 169 0 AUD
        , ProductPrice 149 0 CAD
        , ProductPrice 139 0 EUR
        , ProductPrice 119 0 GBP
        , ProductPrice 20300 0 JPY
        , ProductPrice 199 0 SGD
        , ProductPrice 139 0 USD
        , ProductPrice 529 0 AED
        , ProductPrice 199 0 NZD
        ]
        [ DimensionValue "desert_ochre" (Dimension "Color")
        , DimensionValue "dura_nylon" (Dimension "Material")
        , DimensionValue "facebook" (Dimension "Product Feed")
        , DimensionValue "google_shopping" (Dimension "Product Feed")
        , DimensionValue "instagram" (Dimension "Product Feed")
        , DimensionValue "rakuten_affiliate" (Dimension "Product Feed")
        , DimensionValue "Backpack" (Dimension "Product Range")
        , DimensionValue "Classic Backpack" (Dimension "Product Style")
        , DimensionValue "Bag" (Dimension "Product Type")
        , DimensionValue "large" (Dimension "Shipping Sizes")
        , DimensionValue "BCBB" (Dimension "Style")
        ]
    , Product
        (ProductSku "BCBB-IBL-202")
        (ProductName "Classic Backpack - Ink Blue")
        [ ProductPrice 1090 0 HKD
        , ProductPrice 169 0 AUD
        , ProductPrice 149 0 CAD
        , ProductPrice 139 0 EUR
        , ProductPrice 119 0 GBP
        , ProductPrice 20300 0 JPY
        , ProductPrice 199 0 SGD
        , ProductPrice 139 0 USD
        , ProductPrice 529 0 AED
        , ProductPrice 199 0 NZD
        ]
        [ DimensionValue "ink_blue" (Dimension "Color")
        , DimensionValue "venture" (Dimension "Material")
        , DimensionValue "facebook" (Dimension "Product Feed")
        , DimensionValue "google_shopping" (Dimension "Product Feed")
        , DimensionValue "instagram" (Dimension "Product Feed")
        , DimensionValue "rakuten_affiliate" (Dimension "Product Feed")
        , DimensionValue "Backpack" (Dimension "Product Range")
        , DimensionValue "Classic Backpack" (Dimension "Product Style")
        , DimensionValue "Bag" (Dimension "Product Type")
        , DimensionValue "large" (Dimension "Shipping Sizes")
        , DimensionValue "BCBB" (Dimension "Style")
        ]
    , Product
        (ProductSku "BCBB-NEC-208")
        (ProductName "Classic Backpack - Neon Cabernet")
        [ ProductPrice 1090 0 HKD
        , ProductPrice 169 0 AUD
        , ProductPrice 149 0 CAD
        , ProductPrice 139 0 EUR
        , ProductPrice 119 0 GBP
        , ProductPrice 20300 0 JPY
        , ProductPrice 199 0 SGD
        , ProductPrice 139 0 USD
        , ProductPrice 529 0 AED
        , ProductPrice 199 0 NZD
        ]
        [ DimensionValue "neon_cabernet" (Dimension "Color")
        , DimensionValue "dura_nylon" (Dimension "Material")
        , DimensionValue "facebook" (Dimension "Product Feed")
        , DimensionValue "google_shopping" (Dimension "Product Feed")
        , DimensionValue "instagram" (Dimension "Product Feed")
        , DimensionValue "rakuten_affiliate" (Dimension "Product Feed")
        , DimensionValue "Backpack" (Dimension "Product Range")
        , DimensionValue "Classic Backpack" (Dimension "Product Style")
        , DimensionValue "Bag" (Dimension "Product Type")
        , DimensionValue "large" (Dimension "Shipping Sizes")
        , DimensionValue "BCBB" (Dimension "Style")
        ]
    , Product
        (ProductSku "BCBB-OLI-206")
        (ProductName "Classic Backpack - Olive")
        [ ProductPrice 1090 0 HKD
        , ProductPrice 169 0 AUD
        , ProductPrice 149 0 CAD
        , ProductPrice 139 0 EUR
        , ProductPrice 119 0 GBP
        , ProductPrice 20300 0 JPY
        , ProductPrice 199 0 SGD
        , ProductPrice 139 0 USD
        , ProductPrice 529 0 AED
        , ProductPrice 199 0 NZD
        ]
        [ DimensionValue "olive" (Dimension "Color")
        , DimensionValue "polycanvas" (Dimension "Material")
        , DimensionValue "facebook" (Dimension "Product Feed")
        , DimensionValue "google_shopping" (Dimension "Product Feed")
        , DimensionValue "instagram" (Dimension "Product Feed")
        , DimensionValue "rakuten_affiliate" (Dimension "Product Feed")
        , DimensionValue "Backpack" (Dimension "Product Range")
        , DimensionValue "Classic Backpack" (Dimension "Product Style")
        , DimensionValue "Bag" (Dimension "Product Type")
        , DimensionValue "large" (Dimension "Shipping Sizes")
        , DimensionValue "BCBB" (Dimension "Style")
        ]
    , Product
        (ProductSku "BCBC-BSN-204")
        (ProductName "Classic Backpack – Premium - Black Sand")
        [ ProductPrice 1800 0 HKD
        , ProductPrice 289 0 AUD
        , ProductPrice 249 0 CAD
        , ProductPrice 229 0 EUR
        , ProductPrice 199 0 GBP
        , ProductPrice 31000 0 JPY
        , ProductPrice 309 0 SGD
        , ProductPrice 229 0 USD
        , ProductPrice 869 0 AED
        , ProductPrice 329 0 NZD
        ]
        [ DimensionValue "black_sand" (Dimension "Color")
        , DimensionValue "nylon" (Dimension "Material")
        , DimensionValue "facebook" (Dimension "Product Feed")
        , DimensionValue "google_shopping" (Dimension "Product Feed")
        , DimensionValue "instagram" (Dimension "Product Feed")
        , DimensionValue "rakuten_affiliate" (Dimension "Product Feed")
        , DimensionValue "Premium Bag" (Dimension "Product Range")
        , DimensionValue "Classic Backpack – Premium Edition" (Dimension "Product Style")
        , DimensionValue "Bag" (Dimension "Product Type")
        , DimensionValue "medium" (Dimension "Shipping Sizes")
        , DimensionValue "BCBC" (Dimension "Style")
        ]
    , Product
        (ProductSku "BCBC-DES-208")
        (ProductName "Classic Backpack – Premium - Desert")
        [ ProductPrice 1800 0 HKD
        , ProductPrice 289 0 AUD
        , ProductPrice 249 0 CAD
        , ProductPrice 229 0 EUR
        , ProductPrice 199 0 GBP
        , ProductPrice 31000 0 JPY
        , ProductPrice 309 0 SGD
        , ProductPrice 229 0 USD
        , ProductPrice 869 0 AED
        , ProductPrice 329 0 NZD
        ]
        [ DimensionValue "desert" (Dimension "Color")
        , DimensionValue "dura_nylon" (Dimension "Material")
        , DimensionValue "facebook" (Dimension "Product Feed")
        , DimensionValue "google_shopping" (Dimension "Product Feed")
        , DimensionValue "instagram" (Dimension "Product Feed")
        , DimensionValue "rakuten_affiliate" (Dimension "Product Feed")
        , DimensionValue "Premium Bag" (Dimension "Product Range")
        , DimensionValue "Classic Backpack – Premium Edition" (Dimension "Product Style")
        , DimensionValue "Bag" (Dimension "Product Type")
        , DimensionValue "medium" (Dimension "Shipping Sizes")
        , DimensionValue "BCBC" (Dimension "Style")
        ]
    , Product
        (ProductSku "BCFA-ASH-202")
        (ProductName "Classic Brief - Ash")
        [ ProductPrice 700 0 HKD
        , ProductPrice 109 0 AUD
        , ProductPrice 95 0 CAD
        , ProductPrice 89 0 EUR
        , ProductPrice 79 0 GBP
        , ProductPrice 129 0 SGD
        , ProductPrice 89 0 USD
        , ProductPrice 12200 0 JPY
        , ProductPrice 339 0 AED
        , ProductPrice 129 0 NZD
        ]
        [ DimensionValue "ash" (Dimension "Color")
        , DimensionValue "venture" (Dimension "Material")
        , DimensionValue "facebook" (Dimension "Product Feed")
        , DimensionValue "google_shopping" (Dimension "Product Feed")
        , DimensionValue "instagram" (Dimension "Product Feed")
        , DimensionValue "rakuten_affiliate" (Dimension "Product Feed")
        , DimensionValue "Work Bag" (Dimension "Product Range")
        , DimensionValue "Classic Brief" (Dimension "Product Style")
        , DimensionValue "Bag" (Dimension "Product Type")
        , DimensionValue "feb2019-bags-promo" (Dimension "Promotion Tag")
        , DimensionValue "medium" (Dimension "Shipping Sizes")
        , DimensionValue "BCFA" (Dimension "Style")
        ]
    , Product
        (ProductSku "BCFA-BLK-206")
        (ProductName "Classic Brief - Black")
        [ ProductPrice 700 0 HKD
        , ProductPrice 109 0 AUD
        , ProductPrice 95 0 CAD
        , ProductPrice 89 0 EUR
        , ProductPrice 79 0 GBP
        , ProductPrice 129 0 SGD
        , ProductPrice 89 0 USD
        , ProductPrice 12200 0 JPY
        , ProductPrice 339 0 AED
        , ProductPrice 129 0 NZD
        ]
        [ DimensionValue "black" (Dimension "Color")
        , DimensionValue "polycanvas" (Dimension "Material")
        , DimensionValue "facebook" (Dimension "Product Feed")
        , DimensionValue "google_shopping" (Dimension "Product Feed")
        , DimensionValue "instagram" (Dimension "Product Feed")
        , DimensionValue "rakuten_affiliate" (Dimension "Product Feed")
        , DimensionValue "Work Bag" (Dimension "Product Range")
        , DimensionValue "Classic Brief" (Dimension "Product Style")
        , DimensionValue "Bag" (Dimension "Product Type")
        , DimensionValue "feb2019-bags-promo" (Dimension "Promotion Tag")
        , DimensionValue "medium" (Dimension "Shipping Sizes")
        , DimensionValue "BCFA" (Dimension "Style")
        ]
    , Product
        (ProductSku "BCFA-IBL-202")
        (ProductName "Classic Brief - Ink Blue")
        [ ProductPrice 700 0 HKD
        , ProductPrice 12200 0 JPY
        , ProductPrice 109 0 AUD
        , ProductPrice 95 0 CAD
        , ProductPrice 89 0 EUR
        , ProductPrice 79 0 GBP
        , ProductPrice 129 0 SGD
        , ProductPrice 89 0 USD
        , ProductPrice 339 0 AED
        , ProductPrice 129 0 NZD
        ]
        [ DimensionValue "ink_blue" (Dimension "Color")
        , DimensionValue "venture" (Dimension "Material")
        , DimensionValue "facebook" (Dimension "Product Feed")
        , DimensionValue "google_shopping" (Dimension "Product Feed")
        , DimensionValue "instagram" (Dimension "Product Feed")
        , DimensionValue "rakuten_affiliate" (Dimension "Product Feed")
        , DimensionValue "Work Bag" (Dimension "Product Range")
        , DimensionValue "Classic Brief" (Dimension "Product Style")
        , DimensionValue "Bag" (Dimension "Product Type")
        , DimensionValue "feb2019-bags-promo" (Dimension "Promotion Tag")
        , DimensionValue "medium" (Dimension "Shipping Sizes")
        , DimensionValue "BCFA" (Dimension "Style")
        ]
    , Product
        (ProductSku "BCMA-ASH-202")
        (ProductName "Campus Backpack - Ash")
        [ ProductPrice 740 0 HKD
        , ProductPrice 13000 0 JPY
        , ProductPrice 119 0 AUD
        , ProductPrice 99 0 CAD
        , ProductPrice 95 0 EUR
        , ProductPrice 85 0 GBP
        , ProductPrice 135 0 SGD
        , ProductPrice 95 0 USD
        , ProductPrice 359 0 AED
        , ProductPrice 129 0 NZD
        ]
        [ DimensionValue "ash" (Dimension "Color")
        , DimensionValue "venture" (Dimension "Material")
        , DimensionValue "facebook" (Dimension "Product Feed")
        , DimensionValue "google_shopping" (Dimension "Product Feed")
        , DimensionValue "instagram" (Dimension "Product Feed")
        , DimensionValue "rakuten_affiliate" (Dimension "Product Feed")
        , DimensionValue "Backpack" (Dimension "Product Range")
        , DimensionValue "Campus Backpack" (Dimension "Product Style")
        , DimensionValue "Bag" (Dimension "Product Type")
        , DimensionValue "feb2019-bags-promo" (Dimension "Promotion Tag")
        , DimensionValue "medium" (Dimension "Shipping Sizes")
        , DimensionValue "BCMA" (Dimension "Style")
        ]
    , Product
        (ProductSku "BCMA-BLK-206")
        (ProductName "Campus Backpack - Black")
        [ ProductPrice 740 0 HKD
        , ProductPrice 13000 0 JPY
        , ProductPrice 119 0 AUD
        , ProductPrice 99 0 CAD
        , ProductPrice 95 0 EUR
        , ProductPrice 85 0 GBP
        , ProductPrice 135 0 SGD
        , ProductPrice 95 0 USD
        , ProductPrice 359 0 AED
        , ProductPrice 129 0 NZD
        ]
        [ DimensionValue "black" (Dimension "Color")
        , DimensionValue "polycanvas" (Dimension "Material")
        , DimensionValue "facebook" (Dimension "Product Feed")
        , DimensionValue "google_shopping" (Dimension "Product Feed")
        , DimensionValue "instagram" (Dimension "Product Feed")
        , DimensionValue "rakuten_affiliate" (Dimension "Product Feed")
        , DimensionValue "Backpack" (Dimension "Product Range")
        , DimensionValue "Campus Backpack" (Dimension "Product Style")
        , DimensionValue "Bag" (Dimension "Product Type")
        , DimensionValue "feb2019-bags-promo" (Dimension "Promotion Tag")
        , DimensionValue "medium" (Dimension "Shipping Sizes")
        , DimensionValue "BCMA" (Dimension "Style")
        ]
    , Product
        (ProductSku "BCMA-BNE-202")
        (ProductName "Campus Backpack - Blue Neon")
        [ ProductPrice 740 0 HKD
        , ProductPrice 119 0 AUD
        , ProductPrice 99 0 CAD
        , ProductPrice 95 0 EUR
        , ProductPrice 85 0 GBP
        , ProductPrice 13000 0 JPY
        , ProductPrice 135 0 SGD
        , ProductPrice 95 0 USD
        , ProductPrice 359 0 AED
        , ProductPrice 129 0 NZD
        ]
        [ DimensionValue "blue_neon" (Dimension "Color")
        , DimensionValue "venture" (Dimension "Material")
        , DimensionValue "facebook" (Dimension "Product Feed")
        , DimensionValue "google_shopping" (Dimension "Product Feed")
        , DimensionValue "instagram" (Dimension "Product Feed")
        , DimensionValue "rakuten_affiliate" (Dimension "Product Feed")
        , DimensionValue "Backpack" (Dimension "Product Range")
        , DimensionValue "Campus Backpack" (Dimension "Product Style")
        , DimensionValue "Bag" (Dimension "Product Type")
        , DimensionValue "medium" (Dimension "Shipping Sizes")
        , DimensionValue "BCMA" (Dimension "Style")
        ]
    , Product
        (ProductSku "BCMA-CHA-210")
        (ProductName "Campus Backpack - Charcoal")
        [ ProductPrice 740 0 HKD
        , ProductPrice 119 0 AUD
        , ProductPrice 99 0 CAD
        , ProductPrice 95 0 EUR
        , ProductPrice 85 0 GBP
        , ProductPrice 13000 0 JPY
        , ProductPrice 135 0 SGD
        , ProductPrice 95 0 USD
        , ProductPrice 359 0 AED
        , ProductPrice 129 0 NZD
        ]
        [ DimensionValue "charcoal" (Dimension "Color")
        , DimensionValue "polycanvas_recycled" (Dimension "Material")
        , DimensionValue "facebook" (Dimension "Product Feed")
        , DimensionValue "google_shopping" (Dimension "Product Feed")
        , DimensionValue "instagram" (Dimension "Product Feed")
        , DimensionValue "rakuten_affiliate" (Dimension "Product Feed")
        , DimensionValue "Backpack" (Dimension "Product Range")
        , DimensionValue "Campus Backpack" (Dimension "Product Style")
        , DimensionValue "Bag" (Dimension "Product Type")
        , DimensionValue "medium" (Dimension "Shipping Sizes")
        , DimensionValue "BCMA" (Dimension "Style")
        ]
    , Product
        (ProductSku "BCMA-DOC-208")
        (ProductName "Campus Backpack - Desert Ochre")
        [ ProductPrice 740 0 HKD
        , ProductPrice 119 0 AUD
        , ProductPrice 99 0 CAD
        , ProductPrice 95 0 EUR
        , ProductPrice 85 0 GBP
        , ProductPrice 13000 0 JPY
        , ProductPrice 135 0 SGD
        , ProductPrice 95 0 USD
        , ProductPrice 359 0 AED
        , ProductPrice 129 0 NZD
        ]
        [ DimensionValue "desert_ochre" (Dimension "Color")
        , DimensionValue "dura_nylon" (Dimension "Material")
        , DimensionValue "facebook" (Dimension "Product Feed")
        , DimensionValue "google_shopping" (Dimension "Product Feed")
        , DimensionValue "instagram" (Dimension "Product Feed")
        , DimensionValue "rakuten_affiliate" (Dimension "Product Feed")
        , DimensionValue "Backpack" (Dimension "Product Range")
        , DimensionValue "Campus Backpack" (Dimension "Product Style")
        , DimensionValue "Bag" (Dimension "Product Type")
        , DimensionValue "medium" (Dimension "Shipping Sizes")
        , DimensionValue "BCMA" (Dimension "Style")
        ]
    , Product
        (ProductSku "BCMA-IBL-202")
        (ProductName "Campus Backpack - Ink Blue")
        [ ProductPrice 740 0 HKD
        , ProductPrice 119 0 AUD
        , ProductPrice 99 0 CAD
        , ProductPrice 95 0 EUR
        , ProductPrice 85 0 GBP
        , ProductPrice 135 0 SGD
        , ProductPrice 95 0 USD
        , ProductPrice 13000 0 JPY
        , ProductPrice 359 0 AED
        , ProductPrice 129 0 NZD
        ]
        [ DimensionValue "ink_blue" (Dimension "Color")
        , DimensionValue "venture" (Dimension "Material")
        , DimensionValue "facebook" (Dimension "Product Feed")
        , DimensionValue "google_shopping" (Dimension "Product Feed")
        , DimensionValue "instagram" (Dimension "Product Feed")
        , DimensionValue "rakuten_affiliate" (Dimension "Product Feed")
        , DimensionValue "Backpack" (Dimension "Product Range")
        , DimensionValue "Campus Backpack" (Dimension "Product Style")
        , DimensionValue "Bag" (Dimension "Product Type")
        , DimensionValue "feb2019-bags-promo" (Dimension "Promotion Tag")
        , DimensionValue "medium" (Dimension "Shipping Sizes")
        , DimensionValue "BCMA" (Dimension "Style")
        ]
    , Product
        (ProductSku "BCMA-OLI-206")
        (ProductName "Campus Backpack - Olive")
        [ ProductPrice 740 0 HKD
        , ProductPrice 119 0 AUD
        , ProductPrice 99 0 CAD
        , ProductPrice 95 0 EUR
        , ProductPrice 85 0 GBP
        , ProductPrice 135 0 SGD
        , ProductPrice 95 0 USD
        , ProductPrice 13000 0 JPY
        , ProductPrice 359 0 AED
        , ProductPrice 129 0 NZD
        ]
        [ DimensionValue "olive" (Dimension "Color")
        , DimensionValue "polycanvas" (Dimension "Material")
        , DimensionValue "facebook" (Dimension "Product Feed")
        , DimensionValue "google_shopping" (Dimension "Product Feed")
        , DimensionValue "instagram" (Dimension "Product Feed")
        , DimensionValue "rakuten_affiliate" (Dimension "Product Feed")
        , DimensionValue "Backpack" (Dimension "Product Range")
        , DimensionValue "Campus Backpack" (Dimension "Product Style")
        , DimensionValue "Bag" (Dimension "Product Type")
        , DimensionValue "feb2019-bags-promo" (Dimension "Promotion Tag")
        , DimensionValue "medium" (Dimension "Shipping Sizes")
        , DimensionValue "BCMA" (Dimension "Style")
        ]
    , Product
        (ProductSku "BCMA-ROC-203")
        (ProductName "Campus Backpack - Red Ochre")
        [ ProductPrice 740 0 HKD
        , ProductPrice 119 0 AUD
        , ProductPrice 99 0 CAD
        , ProductPrice 95 0 EUR
        , ProductPrice 85 0 GBP
        , ProductPrice 135 0 SGD
        , ProductPrice 95 0 USD
        , ProductPrice 13000 0 JPY
        , ProductPrice 359 0 AED
        , ProductPrice 129 0 NZD
        ]
        [ DimensionValue "red_ochre" (Dimension "Color")
        , DimensionValue "polycanvas" (Dimension "Material")
        , DimensionValue "facebook" (Dimension "Product Feed")
        , DimensionValue "google_shopping" (Dimension "Product Feed")
        , DimensionValue "instagram" (Dimension "Product Feed")
        , DimensionValue "rakuten_affiliate" (Dimension "Product Feed")
        , DimensionValue "Backpack" (Dimension "Product Range")
        , DimensionValue "Campus Backpack" (Dimension "Product Style")
        , DimensionValue "Bag" (Dimension "Product Type")
        , DimensionValue "feb2019-bags-promo" (Dimension "Promotion Tag")
        , DimensionValue "medium" (Dimension "Shipping Sizes")
        , DimensionValue "BCMA" (Dimension "Style")
        ]
    , Product
        (ProductSku "BCPA-ASH-202")
        (ProductName "Classic Backpack Plus - Ash")
        [ ProductPrice 1400 0 HKD
        , ProductPrice 189 0 CAD
        , ProductPrice 179 0 EUR
        , ProductPrice 159 0 GBP
        , ProductPrice 259 0 SGD
        , ProductPrice 179 0 USD
        , ProductPrice 25700 0 JPY
        , ProductPrice 199 0 AUD
        , ProductPrice 679 0 AED
        , ProductPrice 199 0 NZD
        ]
        [ DimensionValue "ash" (Dimension "Color")
        , DimensionValue "venture" (Dimension "Material")
        , DimensionValue "facebook" (Dimension "Product Feed")
        , DimensionValue "google_shopping" (Dimension "Product Feed")
        , DimensionValue "instagram" (Dimension "Product Feed")
        , DimensionValue "rakuten_affiliate" (Dimension "Product Feed")
        , DimensionValue "Backpack" (Dimension "Product Range")
        , DimensionValue "Classic Backpack Plus" (Dimension "Product Style")
        , DimensionValue "Bag" (Dimension "Product Type")
        , DimensionValue "feb2019-bags-promo" (Dimension "Promotion Tag")
        , DimensionValue "large" (Dimension "Shipping Sizes")
        , DimensionValue "BCPA" (Dimension "Style")
        ]
    , Product
        (ProductSku "BCPA-BLK-202")
        (ProductName "Classic Backpack Plus - Black")
        [ ProductPrice 1400 0 HKD
        , ProductPrice 189 0 CAD
        , ProductPrice 179 0 EUR
        , ProductPrice 159 0 GBP
        , ProductPrice 259 0 SGD
        , ProductPrice 179 0 USD
        , ProductPrice 25700 0 JPY
        , ProductPrice 199 0 AUD
        , ProductPrice 679 0 AED
        , ProductPrice 199 0 NZD
        ]
        [ DimensionValue "black" (Dimension "Color")
        , DimensionValue "venture" (Dimension "Material")
        , DimensionValue "facebook" (Dimension "Product Feed")
        , DimensionValue "google_shopping" (Dimension "Product Feed")
        , DimensionValue "instagram" (Dimension "Product Feed")
        , DimensionValue "rakuten_affiliate" (Dimension "Product Feed")
        , DimensionValue "Backpack" (Dimension "Product Range")
        , DimensionValue "Classic Backpack Plus" (Dimension "Product Style")
        , DimensionValue "Bag" (Dimension "Product Type")
        , DimensionValue "feb2019-bags-promo" (Dimension "Promotion Tag")
        , DimensionValue "large" (Dimension "Shipping Sizes")
        , DimensionValue "BCPA" (Dimension "Style")
        ]
    , Product
        (ProductSku "BCPA-BNE-202")
        (ProductName "Classic Backpack Plus - Blue Neon")
        [ ProductPrice 1400 0 HKD
        , ProductPrice 199 0 AUD
        , ProductPrice 189 0 CAD
        , ProductPrice 179 0 EUR
        , ProductPrice 159 0 GBP
        , ProductPrice 25700 0 JPY
        , ProductPrice 259 0 SGD
        , ProductPrice 179 0 USD
        , ProductPrice 679 0 AED
        , ProductPrice 199 0 NZD
        ]
        [ DimensionValue "blue_neon" (Dimension "Color")
        , DimensionValue "venture" (Dimension "Material")
        , DimensionValue "facebook" (Dimension "Product Feed")
        , DimensionValue "google_shopping" (Dimension "Product Feed")
        , DimensionValue "instagram" (Dimension "Product Feed")
        , DimensionValue "rakuten_affiliate" (Dimension "Product Feed")
        , DimensionValue "Backpack" (Dimension "Product Range")
        , DimensionValue "Classic Backpack Plus" (Dimension "Product Style")
        , DimensionValue "Bag" (Dimension "Product Type")
        , DimensionValue "large" (Dimension "Shipping Sizes")
        , DimensionValue "BCPA" (Dimension "Style")
        ]
    , Product
        (ProductSku "BCPA-CHA-210")
        (ProductName "Classic Backpack Plus - Charcoal")
        [ ProductPrice 1400 0 HKD
        , ProductPrice 199 0 AUD
        , ProductPrice 189 0 CAD
        , ProductPrice 179 0 EUR
        , ProductPrice 159 0 GBP
        , ProductPrice 25700 0 JPY
        , ProductPrice 259 0 SGD
        , ProductPrice 179 0 USD
        , ProductPrice 679 0 AED
        , ProductPrice 199 0 NZD
        ]
        [ DimensionValue "charcoal" (Dimension "Color")
        , DimensionValue "polycanvas_recycled" (Dimension "Material")
        , DimensionValue "facebook" (Dimension "Product Feed")
        , DimensionValue "google_shopping" (Dimension "Product Feed")
        , DimensionValue "instagram" (Dimension "Product Feed")
        , DimensionValue "rakuten_affiliate" (Dimension "Product Feed")
        , DimensionValue "Backpack" (Dimension "Product Range")
        , DimensionValue "Classic Backpack Plus" (Dimension "Product Style")
        , DimensionValue "Bag" (Dimension "Product Type")
        , DimensionValue "large" (Dimension "Shipping Sizes")
        , DimensionValue "BCPA" (Dimension "Style")
        ]
    , Product
        (ProductSku "BCPA-FOR-211")
        (ProductName "Classic Backpack Plus - Forest")
        [ ProductPrice 1400 0 HKD
        , ProductPrice 199 0 AUD
        , ProductPrice 189 0 CAD
        , ProductPrice 179 0 EUR
        , ProductPrice 159 0 GBP
        , ProductPrice 25700 0 JPY
        , ProductPrice 259 0 SGD
        , ProductPrice 179 0 USD
        , ProductPrice 679 0 AED
        , ProductPrice 199 0 NZD
        ]
        [ DimensionValue "forest" (Dimension "Color")
        , DimensionValue "ripstop_recycled" (Dimension "Material")
        , DimensionValue "facebook" (Dimension "Product Feed")
        , DimensionValue "google_shopping" (Dimension "Product Feed")
        , DimensionValue "instagram" (Dimension "Product Feed")
        , DimensionValue "rakuten_affiliate" (Dimension "Product Feed")
        , DimensionValue "Backpack" (Dimension "Product Range")
        , DimensionValue "Classic Backpack Plus" (Dimension "Product Style")
        , DimensionValue "Bag" (Dimension "Product Type")
        , DimensionValue "large" (Dimension "Shipping Sizes")
        , DimensionValue "BCPA" (Dimension "Style")
        ]
    , Product
        (ProductSku "BCPA-IBL-202")
        (ProductName "Classic Backpack Plus - Ink Blue")
        [ ProductPrice 1400 0 HKD
        , ProductPrice 189 0 CAD
        , ProductPrice 179 0 EUR
        , ProductPrice 159 0 GBP
        , ProductPrice 259 0 SGD
        , ProductPrice 179 0 USD
        , ProductPrice 25700 0 JPY
        , ProductPrice 199 0 AUD
        , ProductPrice 679 0 AED
        , ProductPrice 199 0 NZD
        ]
        [ DimensionValue "ink_blue" (Dimension "Color")
        , DimensionValue "venture" (Dimension "Material")
        , DimensionValue "facebook" (Dimension "Product Feed")
        , DimensionValue "google_shopping" (Dimension "Product Feed")
        , DimensionValue "instagram" (Dimension "Product Feed")
        , DimensionValue "rakuten_affiliate" (Dimension "Product Feed")
        , DimensionValue "Backpack" (Dimension "Product Range")
        , DimensionValue "Classic Backpack Plus" (Dimension "Product Style")
        , DimensionValue "Bag" (Dimension "Product Type")
        , DimensionValue "feb2019-bags-promo" (Dimension "Promotion Tag")
        , DimensionValue "large" (Dimension "Shipping Sizes")
        , DimensionValue "BCPA" (Dimension "Style")
        ]
    , Product
        (ProductSku "BCPA-IBT-202")
        (ProductName "Classic Backpack Plus - Ink Blue")
        [ ProductPrice 1400 0 HKD
        , ProductPrice 199 0 AUD
        , ProductPrice 189 0 CAD
        , ProductPrice 179 0 EUR
        , ProductPrice 159 0 GBP
        , ProductPrice 25700 0 JPY
        , ProductPrice 259 0 SGD
        , ProductPrice 179 0 USD
        , ProductPrice 679 0 AED
        , ProductPrice 199 0 NZD
        ]
        [ DimensionValue "ink_blue" (Dimension "Color")
        , DimensionValue "venture" (Dimension "Material")
        , DimensionValue "facebook" (Dimension "Product Feed")
        , DimensionValue "google_shopping" (Dimension "Product Feed")
        , DimensionValue "instagram" (Dimension "Product Feed")
        , DimensionValue "rakuten_affiliate" (Dimension "Product Feed")
        , DimensionValue "Backpack" (Dimension "Product Range")
        , DimensionValue "Classic Backpack Plus" (Dimension "Product Style")
        , DimensionValue "Bag" (Dimension "Product Type")
        , DimensionValue "large" (Dimension "Shipping Sizes")
        , DimensionValue "BCPA" (Dimension "Style")
        ]
    , Product
        (ProductSku "BCPA-NEC-208")
        (ProductName "Classic Backpack Plus - Neon Cabernet")
        [ ProductPrice 1400 0 HKD
        , ProductPrice 199 0 AUD
        , ProductPrice 189 0 CAD
        , ProductPrice 179 0 EUR
        , ProductPrice 159 0 GBP
        , ProductPrice 25700 0 JPY
        , ProductPrice 259 0 SGD
        , ProductPrice 179 0 USD
        , ProductPrice 679 0 AED
        , ProductPrice 199 0 NZD
        ]
        [ DimensionValue "neon_cabernet" (Dimension "Color")
        , DimensionValue "dura_nylon" (Dimension "Material")
        , DimensionValue "facebook" (Dimension "Product Feed")
        , DimensionValue "google_shopping" (Dimension "Product Feed")
        , DimensionValue "instagram" (Dimension "Product Feed")
        , DimensionValue "rakuten_affiliate" (Dimension "Product Feed")
        , DimensionValue "Backpack" (Dimension "Product Range")
        , DimensionValue "Classic Backpack Plus" (Dimension "Product Style")
        , DimensionValue "Bag" (Dimension "Product Type")
        , DimensionValue "large" (Dimension "Shipping Sizes")
        , DimensionValue "BCPA" (Dimension "Style")
        ]
    , Product
        (ProductSku "BCTA-ASH-202")
        (ProductName "Classic Tote - Ash")
        [ ProductPrice 89 0 AUD
        , ProductPrice 79 0 CAD
        , ProductPrice 69 0 EUR
        , ProductPrice 59 0 GBP
        , ProductPrice 9500 0 JPY
        , ProductPrice 99 0 SGD
        , ProductPrice 69 0 USD
        , ProductPrice 550 0 HKD
        , ProductPrice 259 0 AED
        , ProductPrice 99 0 NZD
        ]
        [ DimensionValue "ash" (Dimension "Color")
        , DimensionValue "venture" (Dimension "Material")
        , DimensionValue "facebook" (Dimension "Product Feed")
        , DimensionValue "google_shopping" (Dimension "Product Feed")
        , DimensionValue "instagram" (Dimension "Product Feed")
        , DimensionValue "rakuten_affiliate" (Dimension "Product Feed")
        , DimensionValue "Tote" (Dimension "Product Range")
        , DimensionValue "Classic Tote" (Dimension "Product Style")
        , DimensionValue "Bag" (Dimension "Product Type")
        , DimensionValue "feb2019-bags-promo" (Dimension "Promotion Tag")
        , DimensionValue "medium" (Dimension "Shipping Sizes")
        , DimensionValue "BCTA" (Dimension "Style")
        ]
    , Product
        (ProductSku "BCTA-BLK-206")
        (ProductName "Classic Tote - Black")
        [ ProductPrice 700 0 HKD
        , ProductPrice 12200 0 JPY
        , ProductPrice 109 0 AUD
        , ProductPrice 95 0 CAD
        , ProductPrice 89 0 EUR
        , ProductPrice 79 0 GBP
        , ProductPrice 129 0 SGD
        , ProductPrice 89 0 USD
        , ProductPrice 339 0 AED
        , ProductPrice 129 0 NZD
        ]
        [ DimensionValue "black" (Dimension "Color")
        , DimensionValue "polycanvas" (Dimension "Material")
        , DimensionValue "facebook" (Dimension "Product Feed")
        , DimensionValue "google_shopping" (Dimension "Product Feed")
        , DimensionValue "instagram" (Dimension "Product Feed")
        , DimensionValue "rakuten_affiliate" (Dimension "Product Feed")
        , DimensionValue "Tote" (Dimension "Product Range")
        , DimensionValue "Classic Tote" (Dimension "Product Style")
        , DimensionValue "Bag" (Dimension "Product Type")
        , DimensionValue "feb2019-bags-promo" (Dimension "Promotion Tag")
        , DimensionValue "medium" (Dimension "Shipping Sizes")
        , DimensionValue "BCTA" (Dimension "Style")
        ]
    , Product
        (ProductSku "BCTA-BNE-202")
        (ProductName "Classic Tote - Blue Neon")
        [ ProductPrice 700 0 HKD
        , ProductPrice 109 0 AUD
        , ProductPrice 95 0 CAD
        , ProductPrice 89 0 EUR
        , ProductPrice 79 0 GBP
        , ProductPrice 12200 0 JPY
        , ProductPrice 129 0 SGD
        , ProductPrice 89 0 USD
        , ProductPrice 339 0 AED
        , ProductPrice 129 0 NZD
        ]
        [ DimensionValue "blue_neon" (Dimension "Color")
        , DimensionValue "venture" (Dimension "Material")
        , DimensionValue "facebook" (Dimension "Product Feed")
        , DimensionValue "google_shopping" (Dimension "Product Feed")
        , DimensionValue "instagram" (Dimension "Product Feed")
        , DimensionValue "rakuten_affiliate" (Dimension "Product Feed")
        , DimensionValue "Tote" (Dimension "Product Range")
        , DimensionValue "Classic Tote" (Dimension "Product Style")
        , DimensionValue "Bag" (Dimension "Product Type")
        , DimensionValue "medium" (Dimension "Shipping Sizes")
        , DimensionValue "BCTA" (Dimension "Style")
        ]
    , Product
        (ProductSku "BCTA-CHA-210")
        (ProductName "Classic Tote - Charcoal")
        [ ProductPrice 700 0 HKD
        , ProductPrice 109 0 AUD
        , ProductPrice 95 0 CAD
        , ProductPrice 89 0 EUR
        , ProductPrice 79 0 GBP
        , ProductPrice 12200 0 JPY
        , ProductPrice 129 0 SGD
        , ProductPrice 89 0 USD
        , ProductPrice 339 0 AED
        , ProductPrice 129 0 NZD
        ]
        [ DimensionValue "charcoal" (Dimension "Color")
        , DimensionValue "polycanvas_recycled" (Dimension "Material")
        , DimensionValue "facebook" (Dimension "Product Feed")
        , DimensionValue "google_shopping" (Dimension "Product Feed")
        , DimensionValue "instagram" (Dimension "Product Feed")
        , DimensionValue "rakuten_affiliate" (Dimension "Product Feed")
        , DimensionValue "Tote" (Dimension "Product Range")
        , DimensionValue "Classic Tote" (Dimension "Product Style")
        , DimensionValue "Bag" (Dimension "Product Type")
        , DimensionValue "medium" (Dimension "Shipping Sizes")
        , DimensionValue "BCTA" (Dimension "Style")
        ]
    , Product
        (ProductSku "BCTA-DOC-208")
        (ProductName "Classic Tote - Desert Ochre")
        [ ProductPrice 700 0 HKD
        , ProductPrice 109 0 AUD
        , ProductPrice 95 0 CAD
        , ProductPrice 89 0 EUR
        , ProductPrice 79 0 GBP
        , ProductPrice 12200 0 JPY
        , ProductPrice 129 0 SGD
        , ProductPrice 89 0 USD
        , ProductPrice 339 0 AED
        , ProductPrice 129 0 NZD
        ]
        [ DimensionValue "desert_ochre" (Dimension "Color")
        , DimensionValue "dura_nylon" (Dimension "Material")
        , DimensionValue "facebook" (Dimension "Product Feed")
        , DimensionValue "google_shopping" (Dimension "Product Feed")
        , DimensionValue "instagram" (Dimension "Product Feed")
        , DimensionValue "rakuten_affiliate" (Dimension "Product Feed")
        , DimensionValue "Tote" (Dimension "Product Range")
        , DimensionValue "Classic Tote" (Dimension "Product Style")
        , DimensionValue "Bag" (Dimension "Product Type")
        , DimensionValue "medium" (Dimension "Shipping Sizes")
        , DimensionValue "BCTA" (Dimension "Style")
        ]
    , Product
        (ProductSku "BCTA-IBL-202")
        (ProductName "Classic Tote - Ink Blue")
        [ ProductPrice 9500 0 JPY
        , ProductPrice 89 0 AUD
        , ProductPrice 79 0 CAD
        , ProductPrice 69 0 EUR
        , ProductPrice 59 0 GBP
        , ProductPrice 99 0 SGD
        , ProductPrice 69 0 USD
        , ProductPrice 550 0 HKD
        , ProductPrice 259 0 AED
        , ProductPrice 99 0 NZD
        ]
        [ DimensionValue "ink_blue" (Dimension "Color")
        , DimensionValue "venture" (Dimension "Material")
        , DimensionValue "facebook" (Dimension "Product Feed")
        , DimensionValue "google_shopping" (Dimension "Product Feed")
        , DimensionValue "instagram" (Dimension "Product Feed")
        , DimensionValue "rakuten_affiliate" (Dimension "Product Feed")
        , DimensionValue "Tote" (Dimension "Product Range")
        , DimensionValue "Classic Tote" (Dimension "Product Style")
        , DimensionValue "Bag" (Dimension "Product Type")
        , DimensionValue "feb2019-bags-promo" (Dimension "Promotion Tag")
        , DimensionValue "medium" (Dimension "Shipping Sizes")
        , DimensionValue "BCTA" (Dimension "Style")
        ]
    , Product
        (ProductSku "BCTA-OLI-206")
        (ProductName "Classic Tote - Olive")
        [ ProductPrice 700 0 HKD
        , ProductPrice 109 0 AUD
        , ProductPrice 95 0 CAD
        , ProductPrice 89 0 EUR
        , ProductPrice 79 0 GBP
        , ProductPrice 129 0 SGD
        , ProductPrice 89 0 USD
        , ProductPrice 12200 0 JPY
        , ProductPrice 339 0 AED
        , ProductPrice 129 0 NZD
        ]
        [ DimensionValue "olive" (Dimension "Color")
        , DimensionValue "polycanvas" (Dimension "Material")
        , DimensionValue "facebook" (Dimension "Product Feed")
        , DimensionValue "google_shopping" (Dimension "Product Feed")
        , DimensionValue "instagram" (Dimension "Product Feed")
        , DimensionValue "rakuten_affiliate" (Dimension "Product Feed")
        , DimensionValue "Tote" (Dimension "Product Range")
        , DimensionValue "Classic Tote" (Dimension "Product Style")
        , DimensionValue "Bag" (Dimension "Product Type")
        , DimensionValue "feb2019-bags-promo" (Dimension "Promotion Tag")
        , DimensionValue "medium" (Dimension "Shipping Sizes")
        , DimensionValue "BCTA" (Dimension "Style")
        ]
    , Product
        (ProductSku "BCTA-ROC-203")
        (ProductName "Classic Tote - Red Ochre")
        [ ProductPrice 89 0 AUD
        , ProductPrice 79 0 CAD
        , ProductPrice 69 0 EUR
        , ProductPrice 59 0 GBP
        , ProductPrice 9500 0 JPY
        , ProductPrice 99 0 SGD
        , ProductPrice 69 0 USD
        , ProductPrice 550 0 HKD
        , ProductPrice 259 0 AED
        , ProductPrice 99 0 NZD
        ]
        [ DimensionValue "red_ochre" (Dimension "Color")
        , DimensionValue "polycanvas" (Dimension "Material")
        , DimensionValue "facebook" (Dimension "Product Feed")
        , DimensionValue "google_shopping" (Dimension "Product Feed")
        , DimensionValue "instagram" (Dimension "Product Feed")
        , DimensionValue "rakuten_affiliate" (Dimension "Product Feed")
        , DimensionValue "Tote" (Dimension "Product Range")
        , DimensionValue "Classic Tote" (Dimension "Product Style")
        , DimensionValue "Bag" (Dimension "Product Type")
        , DimensionValue "feb2019-bags-promo" (Dimension "Promotion Tag")
        , DimensionValue "medium" (Dimension "Shipping Sizes")
        , DimensionValue "BCTA" (Dimension "Style")
        ]
    , Product
        (ProductSku "BCTB-SLT-203")
        (ProductName "Classic Tote – Google Edition - Slate")
        [ ProductPrice 129 0 AUD
        , ProductPrice 119 0 CAD
        , ProductPrice 99 0 EUR
        , ProductPrice 89 0 GBP
        , ProductPrice 13600 0 JPY
        , ProductPrice 139 0 SGD
        , ProductPrice 99 0 USD
        , ProductPrice 780 0 HKD
        , ProductPrice 379 0 AED
        , ProductPrice 139 0 NZD
        ]
        [ DimensionValue "slate" (Dimension "Color")
        , DimensionValue "polycanvas_recycled" (Dimension "Material")
        , DimensionValue "facebook" (Dimension "Product Feed")
        , DimensionValue "google_shopping" (Dimension "Product Feed")
        , DimensionValue "instagram" (Dimension "Product Feed")
        , DimensionValue "rakuten_affiliate" (Dimension "Product Feed")
        , DimensionValue "Tote" (Dimension "Product Range")
        , DimensionValue "Classic Tote" (Dimension "Product Style")
        , DimensionValue "Bag" (Dimension "Product Type")
        , DimensionValue "medium" (Dimension "Shipping Sizes")
        , DimensionValue "BCTB" (Dimension "Style")
        ]
    , Product
        (ProductSku "BDTA-BLACK")
        (ProductName "Duo Totepack - Black")
        [ ProductPrice 2300 0 HKD
        , ProductPrice 39300 0 JPY
        , ProductPrice 349 0 AUD
        , ProductPrice 329 0 CAD
        , ProductPrice 299 0 EUR
        , ProductPrice 259 0 GBP
        , ProductPrice 405 0 SGD
        , ProductPrice 289 0 USD
        , ProductPrice 1099 0 AED
        , ProductPrice 399 0 NZD
        ]
        [ DimensionValue "black" (Dimension "Color")
        , DimensionValue "nylon" (Dimension "Material")
        , DimensionValue "facebook" (Dimension "Product Feed")
        , DimensionValue "google_shopping" (Dimension "Product Feed")
        , DimensionValue "instagram" (Dimension "Product Feed")
        , DimensionValue "rakuten_affiliate" (Dimension "Product Feed")
        , DimensionValue "Backpack" (Dimension "Product Range")
        , DimensionValue "Duo Totepack" (Dimension "Product Style")
        , DimensionValue "Bag" (Dimension "Product Type")
        , DimensionValue "feb2019-bags-promo" (Dimension "Promotion Tag")
        , DimensionValue "medium" (Dimension "Shipping Sizes")
        , DimensionValue "BDTA" (Dimension "Style")
        ]
    , Product
        (ProductSku "BDTA-CHA-210")
        (ProductName "Duo Totepack - Charcoal")
        [ ProductPrice 2300 0 HKD
        , ProductPrice 39300 0 JPY
        , ProductPrice 349 0 AUD
        , ProductPrice 329 0 CAD
        , ProductPrice 299 0 EUR
        , ProductPrice 259 0 GBP
        , ProductPrice 405 0 SGD
        , ProductPrice 289 0 USD
        , ProductPrice 1099 0 AED
        , ProductPrice 399 0 NZD
        ]
        [ DimensionValue "charcoal" (Dimension "Color")
        , DimensionValue "polycanvas_recycled" (Dimension "Material")
        , DimensionValue "facebook" (Dimension "Product Feed")
        , DimensionValue "google_shopping" (Dimension "Product Feed")
        , DimensionValue "instagram" (Dimension "Product Feed")
        , DimensionValue "rakuten_affiliate" (Dimension "Product Feed")
        , DimensionValue "Backpack" (Dimension "Product Range")
        , DimensionValue "Duo Totepack" (Dimension "Product Style")
        , DimensionValue "Bag" (Dimension "Product Type")
        , DimensionValue "medium" (Dimension "Shipping Sizes")
        , DimensionValue "BDTA" (Dimension "Style")
        ]
    , Product
        (ProductSku "BDTA-INKBLUE")
        (ProductName "Duo Totepack - Ink Blue")
        [ ProductPrice 2300 0 HKD
        , ProductPrice 39300 0 JPY
        , ProductPrice 349 0 AUD
        , ProductPrice 329 0 CAD
        , ProductPrice 299 0 EUR
        , ProductPrice 259 0 GBP
        , ProductPrice 405 0 SGD
        , ProductPrice 289 0 USD
        , ProductPrice 1099 0 AED
        , ProductPrice 399 0 NZD
        ]
        [ DimensionValue "ink_blue" (Dimension "Color")
        , DimensionValue "venture" (Dimension "Material")
        , DimensionValue "facebook" (Dimension "Product Feed")
        , DimensionValue "google_shopping" (Dimension "Product Feed")
        , DimensionValue "instagram" (Dimension "Product Feed")
        , DimensionValue "rakuten_affiliate" (Dimension "Product Feed")
        , DimensionValue "Backpack" (Dimension "Product Range")
        , DimensionValue "Duo Totepack" (Dimension "Product Style")
        , DimensionValue "Bag" (Dimension "Product Type")
        , DimensionValue "feb2019-bags-promo" (Dimension "Promotion Tag")
        , DimensionValue "medium" (Dimension "Shipping Sizes")
        , DimensionValue "BDTA" (Dimension "Style")
        ]
    , Product
        (ProductSku "BDTA-MOSSGREY")
        (ProductName "Duo Totepack - Moss")
        [ ProductPrice 2300 0 HKD
        , ProductPrice 39300 0 JPY
        , ProductPrice 349 0 AUD
        , ProductPrice 329 0 CAD
        , ProductPrice 299 0 EUR
        , ProductPrice 259 0 GBP
        , ProductPrice 405 0 SGD
        , ProductPrice 289 0 USD
        , ProductPrice 1099 0 AED
        , ProductPrice 399 0 NZD
        ]
        [ DimensionValue "moss" (Dimension "Color")
        , DimensionValue "venture" (Dimension "Material")
        , DimensionValue "facebook" (Dimension "Product Feed")
        , DimensionValue "google_shopping" (Dimension "Product Feed")
        , DimensionValue "instagram" (Dimension "Product Feed")
        , DimensionValue "rakuten_affiliate" (Dimension "Product Feed")
        , DimensionValue "Backpack" (Dimension "Product Range")
        , DimensionValue "Duo Totepack" (Dimension "Product Style")
        , DimensionValue "Bag" (Dimension "Product Type")
        , DimensionValue "feb2019-bags-promo" (Dimension "Promotion Tag")
        , DimensionValue "medium" (Dimension "Shipping Sizes")
        , DimensionValue "BDTA" (Dimension "Style")
        ]
    , Product
        (ProductSku "BDWA-MOSSGREY")
        (ProductName "Duo Work Bag - Moss")
        [ ProductPrice 1490 0 HKD
        , ProductPrice 229 0 AUD
        , ProductPrice 209 0 CAD
        , ProductPrice 199 0 EUR
        , ProductPrice 169 0 GBP
        , ProductPrice 26800 0 JPY
        , ProductPrice 275 0 SGD
        , ProductPrice 199 0 USD
        , ProductPrice 759 0 AED
        , ProductPrice 269 0 NZD
        ]
        [ DimensionValue "moss" (Dimension "Color")
        , DimensionValue "venture" (Dimension "Material")
        , DimensionValue "facebook" (Dimension "Product Feed")
        , DimensionValue "google_shopping" (Dimension "Product Feed")
        , DimensionValue "instagram" (Dimension "Product Feed")
        , DimensionValue "rakuten_affiliate" (Dimension "Product Feed")
        , DimensionValue "Work Bag" (Dimension "Product Range")
        , DimensionValue "Duo Work Bag" (Dimension "Product Style")
        , DimensionValue "Bag" (Dimension "Product Type")
        , DimensionValue "feb2019-bags-promo" (Dimension "Promotion Tag")
        , DimensionValue "medium" (Dimension "Shipping Sizes")
        , DimensionValue "BDWA" (Dimension "Style")
        ]
    , Product
        (ProductSku "BL3A-BLK-202")
        (ProductName "Laptop Brief - Black")
        [ ProductPrice 700 0 HKD
        , ProductPrice 109 0 AUD
        , ProductPrice 95 0 CAD
        , ProductPrice 89 0 EUR
        , ProductPrice 79 0 GBP
        , ProductPrice 12200 0 JPY
        , ProductPrice 129 0 SGD
        , ProductPrice 89 0 USD
        , ProductPrice 339 0 AED
        , ProductPrice 129 0 NZD
        ]
        [ DimensionValue "black" (Dimension "Color")
        , DimensionValue "venture" (Dimension "Material")
        , DimensionValue "facebook" (Dimension "Product Feed")
        , DimensionValue "google_shopping" (Dimension "Product Feed")
        , DimensionValue "instagram" (Dimension "Product Feed")
        , DimensionValue "rakuten_affiliate" (Dimension "Product Feed")
        , DimensionValue "Work Bag" (Dimension "Product Range")
        , DimensionValue "Laptop Brief" (Dimension "Product Style")
        , DimensionValue "Bag" (Dimension "Product Type")
        , DimensionValue "feb2019-bags-promo" (Dimension "Promotion Tag")
        , DimensionValue "medium" (Dimension "Shipping Sizes")
        , DimensionValue "13in" (Dimension "Size")
        , DimensionValue "BL3A" (Dimension "Style")
        ]
    , Product
        (ProductSku "BL3A-IBL-202")
        (ProductName "Laptop Brief - Ink Blue")
        [ ProductPrice 700 0 HKD
        , ProductPrice 109 0 AUD
        , ProductPrice 95 0 CAD
        , ProductPrice 89 0 EUR
        , ProductPrice 79 0 GBP
        , ProductPrice 12200 0 JPY
        , ProductPrice 129 0 SGD
        , ProductPrice 89 0 USD
        , ProductPrice 339 0 AED
        , ProductPrice 129 0 NZD
        ]
        [ DimensionValue "ink_blue" (Dimension "Color")
        , DimensionValue "venture" (Dimension "Material")
        , DimensionValue "facebook" (Dimension "Product Feed")
        , DimensionValue "google_shopping" (Dimension "Product Feed")
        , DimensionValue "instagram" (Dimension "Product Feed")
        , DimensionValue "rakuten_affiliate" (Dimension "Product Feed")
        , DimensionValue "Work Bag" (Dimension "Product Range")
        , DimensionValue "Laptop Brief" (Dimension "Product Style")
        , DimensionValue "Bag" (Dimension "Product Type")
        , DimensionValue "feb2019-bags-promo" (Dimension "Promotion Tag")
        , DimensionValue "medium" (Dimension "Shipping Sizes")
        , DimensionValue "13in" (Dimension "Size")
        , DimensionValue "BL3A" (Dimension "Style")
        ]
    , Product
        (ProductSku "BL3A-MOS-202")
        (ProductName "Laptop Brief - Moss")
        [ ProductPrice 700 0 HKD
        , ProductPrice 109 0 AUD
        , ProductPrice 95 0 CAD
        , ProductPrice 89 0 EUR
        , ProductPrice 79 0 GBP
        , ProductPrice 12200 0 JPY
        , ProductPrice 129 0 SGD
        , ProductPrice 89 0 USD
        , ProductPrice 339 0 AED
        , ProductPrice 129 0 NZD
        ]
        [ DimensionValue "moss" (Dimension "Color")
        , DimensionValue "venture" (Dimension "Material")
        , DimensionValue "facebook" (Dimension "Product Feed")
        , DimensionValue "google_shopping" (Dimension "Product Feed")
        , DimensionValue "instagram" (Dimension "Product Feed")
        , DimensionValue "rakuten_affiliate" (Dimension "Product Feed")
        , DimensionValue "Work Bag" (Dimension "Product Range")
        , DimensionValue "Laptop Brief" (Dimension "Product Style")
        , DimensionValue "Bag" (Dimension "Product Type")
        , DimensionValue "feb2019-bags-promo" (Dimension "Promotion Tag")
        , DimensionValue "medium" (Dimension "Shipping Sizes")
        , DimensionValue "13in" (Dimension "Size")
        , DimensionValue "BL3A" (Dimension "Style")
        ]
    , Product
        (ProductSku "BL5A-BLK-202")
        (ProductName "Laptop Brief - Black")
        [ ProductPrice 700 0 HKD
        , ProductPrice 109 0 AUD
        , ProductPrice 95 0 CAD
        , ProductPrice 89 0 EUR
        , ProductPrice 79 0 GBP
        , ProductPrice 12200 0 JPY
        , ProductPrice 129 0 SGD
        , ProductPrice 89 0 USD
        , ProductPrice 339 0 AED
        , ProductPrice 129 0 NZD
        ]
        [ DimensionValue "black" (Dimension "Color")
        , DimensionValue "venture" (Dimension "Material")
        , DimensionValue "facebook" (Dimension "Product Feed")
        , DimensionValue "google_shopping" (Dimension "Product Feed")
        , DimensionValue "instagram" (Dimension "Product Feed")
        , DimensionValue "rakuten_affiliate" (Dimension "Product Feed")
        , DimensionValue "Work Bag" (Dimension "Product Range")
        , DimensionValue "Laptop Brief" (Dimension "Product Style")
        , DimensionValue "Bag" (Dimension "Product Type")
        , DimensionValue "feb2019-bags-promo" (Dimension "Promotion Tag")
        , DimensionValue "medium" (Dimension "Shipping Sizes")
        , DimensionValue "15in" (Dimension "Size")
        , DimensionValue "BL3A" (Dimension "Style")
        ]
    , Product
        (ProductSku "BL5A-IBL-202")
        (ProductName "Laptop Brief - Ink Blue")
        [ ProductPrice 700 0 HKD
        , ProductPrice 109 0 AUD
        , ProductPrice 95 0 CAD
        , ProductPrice 89 0 EUR
        , ProductPrice 79 0 GBP
        , ProductPrice 12200 0 JPY
        , ProductPrice 129 0 SGD
        , ProductPrice 89 0 USD
        , ProductPrice 339 0 AED
        , ProductPrice 129 0 NZD
        ]
        [ DimensionValue "ink_blue" (Dimension "Color")
        , DimensionValue "venture" (Dimension "Material")
        , DimensionValue "facebook" (Dimension "Product Feed")
        , DimensionValue "google_shopping" (Dimension "Product Feed")
        , DimensionValue "instagram" (Dimension "Product Feed")
        , DimensionValue "rakuten_affiliate" (Dimension "Product Feed")
        , DimensionValue "Work Bag" (Dimension "Product Range")
        , DimensionValue "Laptop Brief" (Dimension "Product Style")
        , DimensionValue "Bag" (Dimension "Product Type")
        , DimensionValue "feb2019-bags-promo" (Dimension "Promotion Tag")
        , DimensionValue "medium" (Dimension "Shipping Sizes")
        , DimensionValue "15in" (Dimension "Size")
        , DimensionValue "BL3A" (Dimension "Style")
        ]
    , Product
        (ProductSku "BL5A-MOS-202")
        (ProductName "Laptop Brief - Moss")
        [ ProductPrice 700 0 HKD
        , ProductPrice 109 0 AUD
        , ProductPrice 95 0 CAD
        , ProductPrice 89 0 EUR
        , ProductPrice 79 0 GBP
        , ProductPrice 12200 0 JPY
        , ProductPrice 129 0 SGD
        , ProductPrice 89 0 USD
        , ProductPrice 339 0 AED
        , ProductPrice 129 0 NZD
        ]
        [ DimensionValue "moss" (Dimension "Color")
        , DimensionValue "venture" (Dimension "Material")
        , DimensionValue "facebook" (Dimension "Product Feed")
        , DimensionValue "google_shopping" (Dimension "Product Feed")
        , DimensionValue "instagram" (Dimension "Product Feed")
        , DimensionValue "rakuten_affiliate" (Dimension "Product Feed")
        , DimensionValue "Work Bag" (Dimension "Product Range")
        , DimensionValue "Laptop Brief" (Dimension "Product Style")
        , DimensionValue "Bag" (Dimension "Product Type")
        , DimensionValue "feb2019-bags-promo" (Dimension "Promotion Tag")
        , DimensionValue "medium" (Dimension "Shipping Sizes")
        , DimensionValue "15in" (Dimension "Size")
        , DimensionValue "BL3A" (Dimension "Style")
        ]
    , Product
        (ProductSku "BMTA-BLK-207")
        (ProductName "Melbourne Tote - Black")
        [ ProductPrice 1090 0 HKD
        , ProductPrice 169 0 AUD
        , ProductPrice 149 0 CAD
        , ProductPrice 139 0 EUR
        , ProductPrice 119 0 GBP
        , ProductPrice 18900 0 JPY
        , ProductPrice 199 0 SGD
        , ProductPrice 139 0 USD
        , ProductPrice 529 0 AED
        , ProductPrice 199 0 NZD
        ]
        [ DimensionValue "black" (Dimension "Color")
        , DimensionValue "polycanvas" (Dimension "Material")
        , DimensionValue "facebook" (Dimension "Product Feed")
        , DimensionValue "google_shopping" (Dimension "Product Feed")
        , DimensionValue "instagram" (Dimension "Product Feed")
        , DimensionValue "rakuten_affiliate" (Dimension "Product Feed")
        , DimensionValue "Work Bag" (Dimension "Product Range")
        , DimensionValue "Melbourne Tote" (Dimension "Product Style")
        , DimensionValue "Bag" (Dimension "Product Type")
        , DimensionValue "feb2019-bags-promo" (Dimension "Promotion Tag")
        , DimensionValue "large" (Dimension "Shipping Sizes")
        , DimensionValue "BMTA" (Dimension "Style")
        ]
    , Product
        (ProductSku "BMTA-FOR-211")
        (ProductName "Melbourne Tote - Forest")
        [ ProductPrice 1090 0 HKD
        , ProductPrice 169 0 AUD
        , ProductPrice 149 0 CAD
        , ProductPrice 139 0 EUR
        , ProductPrice 119 0 GBP
        , ProductPrice 18900 0 JPY
        , ProductPrice 199 0 SGD
        , ProductPrice 139 0 USD
        , ProductPrice 529 0 AED
        , ProductPrice 199 0 NZD
        ]
        [ DimensionValue "forest" (Dimension "Color")
        , DimensionValue "ripstop_recycled" (Dimension "Material")
        , DimensionValue "facebook" (Dimension "Product Feed")
        , DimensionValue "google_shopping" (Dimension "Product Feed")
        , DimensionValue "instagram" (Dimension "Product Feed")
        , DimensionValue "rakuten_affiliate" (Dimension "Product Feed")
        , DimensionValue "Work Bag" (Dimension "Product Range")
        , DimensionValue "Melbourne Tote" (Dimension "Product Style")
        , DimensionValue "Bag" (Dimension "Product Type")
        , DimensionValue "large" (Dimension "Shipping Sizes")
        , DimensionValue "BMTA" (Dimension "Style")
        ]
    , Product
        (ProductSku "BMTA-SBL-207")
        (ProductName "Melbourne Tote - Smoke Blue")
        [ ProductPrice 1090 0 HKD
        , ProductPrice 169 0 AUD
        , ProductPrice 149 0 CAD
        , ProductPrice 139 0 EUR
        , ProductPrice 119 0 GBP
        , ProductPrice 18900 0 JPY
        , ProductPrice 199 0 SGD
        , ProductPrice 139 0 USD
        , ProductPrice 529 0 AED
        , ProductPrice 199 0 NZD
        ]
        [ DimensionValue "smoke_blue" (Dimension "Color")
        , DimensionValue "polycanvas" (Dimension "Material")
        , DimensionValue "facebook" (Dimension "Product Feed")
        , DimensionValue "google_shopping" (Dimension "Product Feed")
        , DimensionValue "instagram" (Dimension "Product Feed")
        , DimensionValue "rakuten_affiliate" (Dimension "Product Feed")
        , DimensionValue "Work Bag" (Dimension "Product Range")
        , DimensionValue "Melbourne Tote" (Dimension "Product Style")
        , DimensionValue "Bag" (Dimension "Product Type")
        , DimensionValue "feb2019-bags-promo" (Dimension "Promotion Tag")
        , DimensionValue "large" (Dimension "Shipping Sizes")
        , DimensionValue "BMTA" (Dimension "Style")
        ]
    , Product
        (ProductSku "BSBA-ASH")
        (ProductName "Slim Backpack - Ash")
        [ ProductPrice 1150 0 HKD
        , ProductPrice 23000 0 JPY
        , ProductPrice 189 0 AUD
        , ProductPrice 159 0 CAD
        , ProductPrice 159 0 EUR
        , ProductPrice 129 0 GBP
        , ProductPrice 209 0 SGD
        , ProductPrice 149 0 USD
        , ProductPrice 559 0 AED
        , ProductPrice 199 0 NZD
        ]
        [ DimensionValue "ash" (Dimension "Color")
        , DimensionValue "venture" (Dimension "Material")
        , DimensionValue "facebook" (Dimension "Product Feed")
        , DimensionValue "google_shopping" (Dimension "Product Feed")
        , DimensionValue "instagram" (Dimension "Product Feed")
        , DimensionValue "rakuten_affiliate" (Dimension "Product Feed")
        , DimensionValue "Backpack" (Dimension "Product Range")
        , DimensionValue "Slim Backpack" (Dimension "Product Style")
        , DimensionValue "Bag" (Dimension "Product Type")
        , DimensionValue "feb2019-bags-promo" (Dimension "Promotion Tag")
        , DimensionValue "medium" (Dimension "Shipping Sizes")
        , DimensionValue "BSBA" (Dimension "Style")
        ]
    , Product
        (ProductSku "BSBA-BLACK")
        (ProductName "Slim Backpack - Black")
        [ ProductPrice 1150 0 HKD
        , ProductPrice 189 0 AUD
        , ProductPrice 159 0 CAD
        , ProductPrice 159 0 EUR
        , ProductPrice 129 0 GBP
        , ProductPrice 209 0 SGD
        , ProductPrice 149 0 USD
        , ProductPrice 23000 0 JPY
        , ProductPrice 559 0 AED
        , ProductPrice 199 0 NZD
        ]
        [ DimensionValue "black" (Dimension "Color")
        , DimensionValue "polycanvas" (Dimension "Material")
        , DimensionValue "facebook" (Dimension "Product Feed")
        , DimensionValue "google_shopping" (Dimension "Product Feed")
        , DimensionValue "instagram" (Dimension "Product Feed")
        , DimensionValue "rakuten_affiliate" (Dimension "Product Feed")
        , DimensionValue "Backpack" (Dimension "Product Range")
        , DimensionValue "Slim Backpack" (Dimension "Product Style")
        , DimensionValue "Bag" (Dimension "Product Type")
        , DimensionValue "feb2019-bags-promo" (Dimension "Promotion Tag")
        , DimensionValue "medium" (Dimension "Shipping Sizes")
        , DimensionValue "BSBA" (Dimension "Style")
        ]
    , Product
        (ProductSku "BSBA-NAVY")
        (ProductName "Slim Backpack - Navy")
        [ ProductPrice 1150 0 HKD
        , ProductPrice 189 0 AUD
        , ProductPrice 159 0 CAD
        , ProductPrice 159 0 EUR
        , ProductPrice 129 0 GBP
        , ProductPrice 209 0 SGD
        , ProductPrice 149 0 USD
        , ProductPrice 23000 0 JPY
        , ProductPrice 559 0 AED
        , ProductPrice 199 0 NZD
        ]
        [ DimensionValue "navy" (Dimension "Color")
        , DimensionValue "polycanvas" (Dimension "Material")
        , DimensionValue "facebook" (Dimension "Product Feed")
        , DimensionValue "google_shopping" (Dimension "Product Feed")
        , DimensionValue "instagram" (Dimension "Product Feed")
        , DimensionValue "rakuten_affiliate" (Dimension "Product Feed")
        , DimensionValue "Backpack" (Dimension "Product Range")
        , DimensionValue "Slim Backpack" (Dimension "Product Style")
        , DimensionValue "Bag" (Dimension "Product Type")
        , DimensionValue "feb2019-bags-promo" (Dimension "Promotion Tag")
        , DimensionValue "medium" (Dimension "Shipping Sizes")
        , DimensionValue "BSBA" (Dimension "Style")
        ]
    , Product
        (ProductSku "BSBA-REDOCHRE")
        (ProductName "Slim Backpack - Red Ochre")
        [ ProductPrice 1150 0 HKD
        , ProductPrice 189 0 AUD
        , ProductPrice 159 0 CAD
        , ProductPrice 159 0 EUR
        , ProductPrice 129 0 GBP
        , ProductPrice 209 0 SGD
        , ProductPrice 149 0 USD
        , ProductPrice 23000 0 JPY
        , ProductPrice 559 0 AED
        , ProductPrice 199 0 NZD
        ]
        [ DimensionValue "red_ochre" (Dimension "Color")
        , DimensionValue "polycanvas" (Dimension "Material")
        , DimensionValue "facebook" (Dimension "Product Feed")
        , DimensionValue "google_shopping" (Dimension "Product Feed")
        , DimensionValue "instagram" (Dimension "Product Feed")
        , DimensionValue "rakuten_affiliate" (Dimension "Product Feed")
        , DimensionValue "Backpack" (Dimension "Product Range")
        , DimensionValue "Slim Backpack" (Dimension "Product Style")
        , DimensionValue "Bag" (Dimension "Product Type")
        , DimensionValue "feb2019-bags-promo" (Dimension "Promotion Tag")
        , DimensionValue "medium" (Dimension "Shipping Sizes")
        , DimensionValue "BSBA" (Dimension "Style")
        ]
    , Product
        (ProductSku "BSBB-SLT-203")
        (ProductName "Slim Backpack – Google Edition - Slate")
        [ ProductPrice 149 0 AUD
        , ProductPrice 139 0 CAD
        , ProductPrice 129 0 EUR
        , ProductPrice 115 0 GBP
        , ProductPrice 17300 0 JPY
        , ProductPrice 179 0 SGD
        , ProductPrice 129 0 USD
        , ProductPrice 1010 0 HKD
        , ProductPrice 489 0 AED
        , ProductPrice 159 0 NZD
        ]
        [ DimensionValue "slate" (Dimension "Color")
        , DimensionValue "polycanvas_recycled" (Dimension "Material")
        , DimensionValue "facebook" (Dimension "Product Feed")
        , DimensionValue "google_shopping" (Dimension "Product Feed")
        , DimensionValue "instagram" (Dimension "Product Feed")
        , DimensionValue "rakuten_affiliate" (Dimension "Product Feed")
        , DimensionValue "Backpack" (Dimension "Product Range")
        , DimensionValue "Slim Backpack" (Dimension "Product Style")
        , DimensionValue "Bag" (Dimension "Product Type")
        , DimensionValue "medium" (Dimension "Shipping Sizes")
        , DimensionValue "BSBB" (Dimension "Style")
        ]
    , Product
        (ProductSku "BSDA-BLK-202")
        (ProductName "Studio Backpack - Black")
        [ ProductPrice 930 0 HKD
        , ProductPrice 139 0 AUD
        , ProductPrice 139 0 CAD
        , ProductPrice 119 0 EUR
        , ProductPrice 169 0 SGD
        , ProductPrice 119 0 USD
        , ProductPrice 99 0 GBP
        , ProductPrice 16000 0 JPY
        , ProductPrice 459 0 AED
        , ProductPrice 159 0 NZD
        ]
        [ DimensionValue "black" (Dimension "Color")
        , DimensionValue "venture" (Dimension "Material")
        , DimensionValue "facebook" (Dimension "Product Feed")
        , DimensionValue "google_shopping" (Dimension "Product Feed")
        , DimensionValue "instagram" (Dimension "Product Feed")
        , DimensionValue "rakuten_affiliate" (Dimension "Product Feed")
        , DimensionValue "Backpack" (Dimension "Product Range")
        , DimensionValue "Studio Backpack" (Dimension "Product Style")
        , DimensionValue "Bag" (Dimension "Product Type")
        , DimensionValue "medium" (Dimension "Shipping Sizes")
        , DimensionValue "BSDA" (Dimension "Style")
        ]
    , Product
        (ProductSku "BSDA-MGR-203")
        (ProductName "Studio Backpack - Mid Grey")
        [ ProductPrice 930 0 HKD
        , ProductPrice 139 0 AUD
        , ProductPrice 139 0 CAD
        , ProductPrice 119 0 EUR
        , ProductPrice 169 0 SGD
        , ProductPrice 119 0 USD
        , ProductPrice 99 0 GBP
        , ProductPrice 16000 0 JPY
        , ProductPrice 459 0 AED
        , ProductPrice 159 0 NZD
        ]
        [ DimensionValue "mid_grey" (Dimension "Color")
        , DimensionValue "polycanvas" (Dimension "Material")
        , DimensionValue "facebook" (Dimension "Product Feed")
        , DimensionValue "google_shopping" (Dimension "Product Feed")
        , DimensionValue "instagram" (Dimension "Product Feed")
        , DimensionValue "rakuten_affiliate" (Dimension "Product Feed")
        , DimensionValue "Backpack" (Dimension "Product Range")
        , DimensionValue "Studio Backpack" (Dimension "Product Style")
        , DimensionValue "Bag" (Dimension "Product Type")
        , DimensionValue "medium" (Dimension "Shipping Sizes")
        , DimensionValue "BSDA" (Dimension "Style")
        ]
    , Product
        (ProductSku "BSDA-OLI-206")
        (ProductName "Studio Backpack - Olive")
        [ ProductPrice 930 0 HKD
        , ProductPrice 139 0 AUD
        , ProductPrice 139 0 CAD
        , ProductPrice 119 0 EUR
        , ProductPrice 169 0 SGD
        , ProductPrice 119 0 USD
        , ProductPrice 99 0 GBP
        , ProductPrice 16000 0 JPY
        , ProductPrice 459 0 AED
        , ProductPrice 159 0 NZD
        ]
        [ DimensionValue "olive" (Dimension "Color")
        , DimensionValue "polycanvas" (Dimension "Material")
        , DimensionValue "facebook" (Dimension "Product Feed")
        , DimensionValue "google_shopping" (Dimension "Product Feed")
        , DimensionValue "instagram" (Dimension "Product Feed")
        , DimensionValue "rakuten_affiliate" (Dimension "Product Feed")
        , DimensionValue "Backpack" (Dimension "Product Range")
        , DimensionValue "Studio Backpack" (Dimension "Product Style")
        , DimensionValue "Bag" (Dimension "Product Type")
        , DimensionValue "medium" (Dimension "Shipping Sizes")
        , DimensionValue "BSDA" (Dimension "Style")
        ]
    , Product
        (ProductSku "BSDA-ROC-203")
        (ProductName "Studio Backpack - Red Ochre")
        [ ProductPrice 930 0 HKD
        , ProductPrice 139 0 AUD
        , ProductPrice 139 0 CAD
        , ProductPrice 119 0 EUR
        , ProductPrice 169 0 SGD
        , ProductPrice 119 0 USD
        , ProductPrice 99 0 GBP
        , ProductPrice 16000 0 JPY
        , ProductPrice 459 0 AED
        , ProductPrice 159 0 NZD
        ]
        [ DimensionValue "red_ochre" (Dimension "Color")
        , DimensionValue "polycanvas" (Dimension "Material")
        , DimensionValue "facebook" (Dimension "Product Feed")
        , DimensionValue "google_shopping" (Dimension "Product Feed")
        , DimensionValue "instagram" (Dimension "Product Feed")
        , DimensionValue "rakuten_affiliate" (Dimension "Product Feed")
        , DimensionValue "Backpack" (Dimension "Product Range")
        , DimensionValue "Studio Backpack" (Dimension "Product Style")
        , DimensionValue "Bag" (Dimension "Product Type")
        , DimensionValue "medium" (Dimension "Shipping Sizes")
        , DimensionValue "BSDA" (Dimension "Style")
        ]
    , Product
        (ProductSku "BSHA-BLK-202")
        (ProductName "Shift Backpack - Black")
        [ ProductPrice 1700 0 HKD
        , ProductPrice 270 0 AUD
        , ProductPrice 28600 0 JPY
        , ProductPrice 249 0 CAD
        , ProductPrice 229 0 EUR
        , ProductPrice 319 0 SGD
        , ProductPrice 220 0 USD
        , ProductPrice 195 0 GBP
        , ProductPrice 829 0 AED
        , ProductPrice 289 0 NZD
        ]
        [ DimensionValue "black" (Dimension "Color")
        , DimensionValue "venture" (Dimension "Material")
        , DimensionValue "facebook" (Dimension "Product Feed")
        , DimensionValue "google_shopping" (Dimension "Product Feed")
        , DimensionValue "instagram" (Dimension "Product Feed")
        , DimensionValue "rakuten_affiliate" (Dimension "Product Feed")
        , DimensionValue "Backpack" (Dimension "Product Range")
        , DimensionValue "Shift Backpack" (Dimension "Product Style")
        , DimensionValue "Bag" (Dimension "Product Type")
        , DimensionValue "feb2019-bags-promo" (Dimension "Promotion Tag")
        , DimensionValue "large" (Dimension "Shipping Sizes")
        , DimensionValue "BSHA" (Dimension "Style")
        ]
    , Product
        (ProductSku "BSHA-CHA-210")
        (ProductName "Shift Backpack - Charcoal")
        [ ProductPrice 1700 0 HKD
        , ProductPrice 270 0 AUD
        , ProductPrice 249 0 CAD
        , ProductPrice 229 0 EUR
        , ProductPrice 195 0 GBP
        , ProductPrice 28600 0 JPY
        , ProductPrice 319 0 SGD
        , ProductPrice 220 0 USD
        , ProductPrice 829 0 AED
        , ProductPrice 289 0 NZD
        ]
        [ DimensionValue "charcoal" (Dimension "Color")
        , DimensionValue "polycanvas_recycled" (Dimension "Material")
        , DimensionValue "facebook" (Dimension "Product Feed")
        , DimensionValue "google_shopping" (Dimension "Product Feed")
        , DimensionValue "instagram" (Dimension "Product Feed")
        , DimensionValue "rakuten_affiliate" (Dimension "Product Feed")
        , DimensionValue "Backpack" (Dimension "Product Range")
        , DimensionValue "Shift Backpack" (Dimension "Product Style")
        , DimensionValue "Bag" (Dimension "Product Type")
        , DimensionValue "large" (Dimension "Shipping Sizes")
        , DimensionValue "BSHA" (Dimension "Style")
        ]
    , Product
        (ProductSku "BSHA-IBL-202")
        (ProductName "Shift Backpack - Ink Blue")
        [ ProductPrice 249 0 CAD
        , ProductPrice 229 0 EUR
        , ProductPrice 319 0 SGD
        , ProductPrice 220 0 USD
        , ProductPrice 270 0 AUD
        , ProductPrice 28600 0 JPY
        , ProductPrice 195 0 GBP
        , ProductPrice 1700 0 HKD
        , ProductPrice 289 0 NZD
        , ProductPrice 829 0 AED
        ]
        [ DimensionValue "ink_blue" (Dimension "Color")
        , DimensionValue "venture" (Dimension "Material")
        , DimensionValue "facebook" (Dimension "Product Feed")
        , DimensionValue "google_shopping" (Dimension "Product Feed")
        , DimensionValue "instagram" (Dimension "Product Feed")
        , DimensionValue "rakuten_affiliate" (Dimension "Product Feed")
        , DimensionValue "Backpack" (Dimension "Product Range")
        , DimensionValue "Shift Backpack" (Dimension "Product Style")
        , DimensionValue "Bag" (Dimension "Product Type")
        , DimensionValue "feb2019-bags-promo" (Dimension "Promotion Tag")
        , DimensionValue "large" (Dimension "Shipping Sizes")
        , DimensionValue "BSHA" (Dimension "Style")
        ]
    , Product
        (ProductSku "BSHA-MOS-202")
        (ProductName "Shift Backpack - Moss")
        [ ProductPrice 219 0 AUD
        , ProductPrice 239 0 CAD
        , ProductPrice 190 0 EUR
        , ProductPrice 160 0 GBP
        , ProductPrice 23000 0 JPY
        , ProductPrice 239 0 SGD
        , ProductPrice 169 0 USD
        , ProductPrice 1320 0 HKD
        , ProductPrice 639 0 AED
        , ProductPrice 239 0 NZD
        ]
        [ DimensionValue "moss" (Dimension "Color")
        , DimensionValue "venture" (Dimension "Material")
        , DimensionValue "facebook" (Dimension "Product Feed")
        , DimensionValue "google_shopping" (Dimension "Product Feed")
        , DimensionValue "instagram" (Dimension "Product Feed")
        , DimensionValue "rakuten_affiliate" (Dimension "Product Feed")
        , DimensionValue "Backpack" (Dimension "Product Range")
        , DimensionValue "Shift Backpack" (Dimension "Product Style")
        , DimensionValue "Bag" (Dimension "Product Type")
        , DimensionValue "feb2019-bags-promo" (Dimension "Promotion Tag")
        , DimensionValue "large" (Dimension "Shipping Sizes")
        , DimensionValue "BSHA" (Dimension "Style")
        ]
    , Product
        (ProductSku "BSLA-BLK-202")
        (ProductName "Sling - Black")
        [ ProductPrice 780 0 HKD
        , ProductPrice 129 0 AUD
        , ProductPrice 119 0 CAD
        , ProductPrice 99 0 EUR
        , ProductPrice 89 0 GBP
        , ProductPrice 14800 0 JPY
        , ProductPrice 139 0 SGD
        , ProductPrice 99 0 USD
        , ProductPrice 379 0 AED
        , ProductPrice 139 0 NZD
        ]
        [ DimensionValue "black" (Dimension "Color")
        , DimensionValue "venture" (Dimension "Material")
        , DimensionValue "facebook" (Dimension "Product Feed")
        , DimensionValue "google_shopping" (Dimension "Product Feed")
        , DimensionValue "instagram" (Dimension "Product Feed")
        , DimensionValue "rakuten_affiliate" (Dimension "Product Feed")
        , DimensionValue "Backpack" (Dimension "Product Range")
        , DimensionValue "Sling" (Dimension "Product Style")
        , DimensionValue "Bag" (Dimension "Product Type")
        , DimensionValue "medium" (Dimension "Shipping Sizes")
        , DimensionValue "BSLA" (Dimension "Style")
        ]
    , Product
        (ProductSku "BSLA-FOR-211")
        (ProductName "Sling - Forest")
        [ ProductPrice 780 0 HKD
        , ProductPrice 129 0 AUD
        , ProductPrice 119 0 CAD
        , ProductPrice 99 0 EUR
        , ProductPrice 89 0 GBP
        , ProductPrice 14800 0 JPY
        , ProductPrice 139 0 SGD
        , ProductPrice 99 0 USD
        , ProductPrice 379 0 AED
        , ProductPrice 139 0 NZD
        ]
        [ DimensionValue "forest" (Dimension "Color")
        , DimensionValue "ripstop_recycled" (Dimension "Material")
        , DimensionValue "facebook" (Dimension "Product Feed")
        , DimensionValue "google_shopping" (Dimension "Product Feed")
        , DimensionValue "instagram" (Dimension "Product Feed")
        , DimensionValue "rakuten_affiliate" (Dimension "Product Feed")
        , DimensionValue "Backpack" (Dimension "Product Range")
        , DimensionValue "Sling" (Dimension "Product Style")
        , DimensionValue "Bag" (Dimension "Product Type")
        , DimensionValue "medium" (Dimension "Shipping Sizes")
        , DimensionValue "BSLA" (Dimension "Style")
        ]
    , Product
        (ProductSku "BSLA-IBL-202")
        (ProductName "Sling - Ink Blue")
        [ ProductPrice 780 0 HKD
        , ProductPrice 129 0 AUD
        , ProductPrice 119 0 CAD
        , ProductPrice 99 0 EUR
        , ProductPrice 89 0 GBP
        , ProductPrice 14800 0 JPY
        , ProductPrice 139 0 SGD
        , ProductPrice 99 0 USD
        , ProductPrice 379 0 AED
        , ProductPrice 139 0 NZD
        ]
        [ DimensionValue "ink_blue" (Dimension "Color")
        , DimensionValue "venture" (Dimension "Material")
        , DimensionValue "facebook" (Dimension "Product Feed")
        , DimensionValue "google_shopping" (Dimension "Product Feed")
        , DimensionValue "instagram" (Dimension "Product Feed")
        , DimensionValue "rakuten_affiliate" (Dimension "Product Feed")
        , DimensionValue "Backpack" (Dimension "Product Range")
        , DimensionValue "Sling" (Dimension "Product Style")
        , DimensionValue "Bag" (Dimension "Product Type")
        , DimensionValue "medium" (Dimension "Shipping Sizes")
        , DimensionValue "BSLA" (Dimension "Style")
        ]
    , Product
        (ProductSku "BSLA-MGR-203")
        (ProductName "Sling - Mid Grey")
        [ ProductPrice 780 0 HKD
        , ProductPrice 129 0 AUD
        , ProductPrice 119 0 CAD
        , ProductPrice 99 0 EUR
        , ProductPrice 89 0 GBP
        , ProductPrice 14800 0 JPY
        , ProductPrice 139 0 SGD
        , ProductPrice 99 0 USD
        , ProductPrice 379 0 AED
        , ProductPrice 139 0 NZD
        ]
        [ DimensionValue "mid_grey" (Dimension "Color")
        , DimensionValue "polycanvas" (Dimension "Material")
        , DimensionValue "facebook" (Dimension "Product Feed")
        , DimensionValue "google_shopping" (Dimension "Product Feed")
        , DimensionValue "instagram" (Dimension "Product Feed")
        , DimensionValue "rakuten_affiliate" (Dimension "Product Feed")
        , DimensionValue "Backpack" (Dimension "Product Range")
        , DimensionValue "Sling" (Dimension "Product Style")
        , DimensionValue "Bag" (Dimension "Product Type")
        , DimensionValue "medium" (Dimension "Shipping Sizes")
        , DimensionValue "BSLA" (Dimension "Style")
        ]
    , Product
        (ProductSku "BSLA-NEC-208")
        (ProductName "Sling - Neon Cabernet")
        [ ProductPrice 780 0 HKD
        , ProductPrice 129 0 AUD
        , ProductPrice 119 0 CAD
        , ProductPrice 99 0 EUR
        , ProductPrice 89 0 GBP
        , ProductPrice 14800 0 JPY
        , ProductPrice 139 0 SGD
        , ProductPrice 99 0 USD
        , ProductPrice 379 0 AED
        , ProductPrice 139 0 NZD
        ]
        [ DimensionValue "neon_cabernet" (Dimension "Color")
        , DimensionValue "dura_nylon" (Dimension "Material")
        , DimensionValue "facebook" (Dimension "Product Feed")
        , DimensionValue "google_shopping" (Dimension "Product Feed")
        , DimensionValue "instagram" (Dimension "Product Feed")
        , DimensionValue "rakuten_affiliate" (Dimension "Product Feed")
        , DimensionValue "Backpack" (Dimension "Product Range")
        , DimensionValue "Sling" (Dimension "Product Style")
        , DimensionValue "Bag" (Dimension "Product Type")
        , DimensionValue "medium" (Dimension "Shipping Sizes")
        , DimensionValue "BSLA" (Dimension "Style")
        ]
    , Product
        (ProductSku "BSLB-BSN-204")
        (ProductName "Sling – Premium - Black Sand")
        [ ProductPrice 1240 0 HKD
        , ProductPrice 189 0 AUD
        , ProductPrice 169 0 CAD
        , ProductPrice 159 0 EUR
        , ProductPrice 139 0 GBP
        , ProductPrice 21000 0 JPY
        , ProductPrice 215 0 SGD
        , ProductPrice 159 0 USD
        , ProductPrice 599 0 AED
        , ProductPrice 219 0 NZD
        ]
        [ DimensionValue "black_sand" (Dimension "Color")
        , DimensionValue "nylon" (Dimension "Material")
        , DimensionValue "facebook" (Dimension "Product Feed")
        , DimensionValue "google_shopping" (Dimension "Product Feed")
        , DimensionValue "instagram" (Dimension "Product Feed")
        , DimensionValue "rakuten_affiliate" (Dimension "Product Feed")
        , DimensionValue "Premium Bag" (Dimension "Product Range")
        , DimensionValue "Sling – Premium Edition" (Dimension "Product Style")
        , DimensionValue "Bag" (Dimension "Product Type")
        , DimensionValue "medium" (Dimension "Shipping Sizes")
        , DimensionValue "BSLB" (Dimension "Style")
        ]
    , Product
        (ProductSku "BSLB-DES-208")
        (ProductName "Sling – Premium - Desert")
        [ ProductPrice 1240 0 HKD
        , ProductPrice 189 0 AUD
        , ProductPrice 169 0 CAD
        , ProductPrice 159 0 EUR
        , ProductPrice 139 0 GBP
        , ProductPrice 21000 0 JPY
        , ProductPrice 215 0 SGD
        , ProductPrice 159 0 USD
        , ProductPrice 599 0 AED
        , ProductPrice 219 0 NZD
        ]
        [ DimensionValue "desert" (Dimension "Color")
        , DimensionValue "dura_nylon" (Dimension "Material")
        , DimensionValue "facebook" (Dimension "Product Feed")
        , DimensionValue "google_shopping" (Dimension "Product Feed")
        , DimensionValue "instagram" (Dimension "Product Feed")
        , DimensionValue "rakuten_affiliate" (Dimension "Product Feed")
        , DimensionValue "Premium Bag" (Dimension "Product Range")
        , DimensionValue "Sling – Premium Edition" (Dimension "Product Style")
        , DimensionValue "Bag" (Dimension "Product Type")
        , DimensionValue "medium" (Dimension "Shipping Sizes")
        , DimensionValue "BSLB" (Dimension "Style")
        ]
    , Product
        (ProductSku "BSTA-NAVY")
        (ProductName "Slim Work Tote - Navy")
        [ ProductPrice 620 0 HKD
        , ProductPrice 99 0 AUD
        , ProductPrice 99 0 CAD
        , ProductPrice 79 0 EUR
        , ProductPrice 65 0 GBP
        , ProductPrice 10800 0 JPY
        , ProductPrice 119 0 SGD
        , ProductPrice 79 0 USD
        , ProductPrice 299 0 AED
        , ProductPrice 115 0 NZD
        ]
        [ DimensionValue "navy" (Dimension "Color")
        , DimensionValue "polycanvas" (Dimension "Material")
        , DimensionValue "facebook" (Dimension "Product Feed")
        , DimensionValue "google_shopping" (Dimension "Product Feed")
        , DimensionValue "instagram" (Dimension "Product Feed")
        , DimensionValue "rakuten_affiliate" (Dimension "Product Feed")
        , DimensionValue "Tote" (Dimension "Product Range")
        , DimensionValue "Slim Tote" (Dimension "Product Style")
        , DimensionValue "Bag" (Dimension "Product Type")
        , DimensionValue "feb2019-bags-promo" (Dimension "Promotion Tag")
        , DimensionValue "medium" (Dimension "Shipping Sizes")
        , DimensionValue "BSTA" (Dimension "Style")
        ]
    , Product
        (ProductSku "BSWA-BLACK")
        (ProductName "Slim Work Bag - Black")
        [ ProductPrice 1470 0 HKD
        , ProductPrice 219 0 AUD
        , ProductPrice 199 0 CAD
        , ProductPrice 199 0 EUR
        , ProductPrice 169 0 GBP
        , ProductPrice 269 0 SGD
        , ProductPrice 189 0 USD
        , ProductPrice 25700 0 JPY
        , ProductPrice 709 0 AED
        , ProductPrice 259 0 NZD
        ]
        [ DimensionValue "black" (Dimension "Color")
        , DimensionValue "polycanvas" (Dimension "Material")
        , DimensionValue "facebook" (Dimension "Product Feed")
        , DimensionValue "google_shopping" (Dimension "Product Feed")
        , DimensionValue "instagram" (Dimension "Product Feed")
        , DimensionValue "rakuten_affiliate" (Dimension "Product Feed")
        , DimensionValue "Work Bag" (Dimension "Product Range")
        , DimensionValue "Slim Work Bag" (Dimension "Product Style")
        , DimensionValue "Bag" (Dimension "Product Type")
        , DimensionValue "feb2019-bags-promo" (Dimension "Promotion Tag")
        , DimensionValue "medium" (Dimension "Shipping Sizes")
        , DimensionValue "BSWA" (Dimension "Style")
        ]
    , Product
        (ProductSku "BSWA-MGR-203")
        (ProductName "Slim Work Bag - Mid Grey")
        [ ProductPrice 1470 0 HKD
        , ProductPrice 219 0 AUD
        , ProductPrice 199 0 CAD
        , ProductPrice 199 0 EUR
        , ProductPrice 169 0 GBP
        , ProductPrice 25700 0 JPY
        , ProductPrice 269 0 SGD
        , ProductPrice 189 0 USD
        , ProductPrice 709 0 AED
        , ProductPrice 259 0 NZD
        ]
        [ DimensionValue "mid_grey" (Dimension "Color")
        , DimensionValue "polycanvas" (Dimension "Material")
        , DimensionValue "facebook" (Dimension "Product Feed")
        , DimensionValue "google_shopping" (Dimension "Product Feed")
        , DimensionValue "instagram" (Dimension "Product Feed")
        , DimensionValue "rakuten_affiliate" (Dimension "Product Feed")
        , DimensionValue "Work Bag" (Dimension "Product Range")
        , DimensionValue "Slim Work Bag" (Dimension "Product Style")
        , DimensionValue "Bag" (Dimension "Product Type")
        , DimensionValue "feb2019-bags-promo" (Dimension "Promotion Tag")
        , DimensionValue "medium" (Dimension "Shipping Sizes")
        , DimensionValue "BSWA" (Dimension "Style")
        ]
    , Product
        (ProductSku "BSYA-BLK-202")
        (ProductName "System Work Bag - Black")
        [ ProductPrice 1540 0 HKD
        , ProductPrice 249 0 AUD
        , ProductPrice 239 0 CAD
        , ProductPrice 199 0 EUR
        , ProductPrice 179 0 GBP
        , ProductPrice 26800 0 JPY
        , ProductPrice 270 0 SGD
        , ProductPrice 195 0 USD
        , ProductPrice 759 0 AED
        , ProductPrice 279 0 NZD
        ]
        [ DimensionValue "black" (Dimension "Color")
        , DimensionValue "venture" (Dimension "Material")
        , DimensionValue "facebook" (Dimension "Product Feed")
        , DimensionValue "google_shopping" (Dimension "Product Feed")
        , DimensionValue "instagram" (Dimension "Product Feed")
        , DimensionValue "rakuten_affiliate" (Dimension "Product Feed")
        , DimensionValue "Work Bag" (Dimension "Product Range")
        , DimensionValue "System Work Bag" (Dimension "Product Style")
        , DimensionValue "Bag" (Dimension "Product Type")
        , DimensionValue "large" (Dimension "Shipping Sizes")
        , DimensionValue "BSYA" (Dimension "Style")
        ]
    , Product
        (ProductSku "BSYA-CHA-210")
        (ProductName "System Work Bag - Charcoal")
        [ ProductPrice 1540 0 HKD
        , ProductPrice 249 0 AUD
        , ProductPrice 239 0 CAD
        , ProductPrice 199 0 EUR
        , ProductPrice 179 0 GBP
        , ProductPrice 26800 0 JPY
        , ProductPrice 270 0 SGD
        , ProductPrice 195 0 USD
        , ProductPrice 759 0 AED
        , ProductPrice 279 0 NZD
        ]
        [ DimensionValue "charcoal" (Dimension "Color")
        , DimensionValue "polycanvas_recycled" (Dimension "Material")
        , DimensionValue "facebook" (Dimension "Product Feed")
        , DimensionValue "google_shopping" (Dimension "Product Feed")
        , DimensionValue "instagram" (Dimension "Product Feed")
        , DimensionValue "rakuten_affiliate" (Dimension "Product Feed")
        , DimensionValue "Work Bag" (Dimension "Product Range")
        , DimensionValue "System Work Bag" (Dimension "Product Style")
        , DimensionValue "Bag" (Dimension "Product Type")
        , DimensionValue "large" (Dimension "Shipping Sizes")
        , DimensionValue "BSYA" (Dimension "Style")
        ]
    , Product
        (ProductSku "BSYA-IBL-202")
        (ProductName "System Work Bag - Ink Blue")
        [ ProductPrice 1540 0 HKD
        , ProductPrice 249 0 AUD
        , ProductPrice 239 0 CAD
        , ProductPrice 199 0 EUR
        , ProductPrice 179 0 GBP
        , ProductPrice 26800 0 JPY
        , ProductPrice 270 0 SGD
        , ProductPrice 195 0 USD
        , ProductPrice 759 0 AED
        , ProductPrice 279 0 NZD
        ]
        [ DimensionValue "ink_blue" (Dimension "Color")
        , DimensionValue "venture" (Dimension "Material")
        , DimensionValue "facebook" (Dimension "Product Feed")
        , DimensionValue "google_shopping" (Dimension "Product Feed")
        , DimensionValue "instagram" (Dimension "Product Feed")
        , DimensionValue "rakuten_affiliate" (Dimension "Product Feed")
        , DimensionValue "Work Bag" (Dimension "Product Range")
        , DimensionValue "System Work Bag" (Dimension "Product Style")
        , DimensionValue "Bag" (Dimension "Product Type")
        , DimensionValue "large" (Dimension "Shipping Sizes")
        , DimensionValue "BSYA" (Dimension "Style")
        ]
    , Product
        (ProductSku "BTBA-BLK-204")
        (ProductName "Transit Backpack - Black")
        [ ProductPrice 329 0 AUD
        , ProductPrice 289 0 CAD
        , ProductPrice 239 0 EUR
        , ProductPrice 215 0 GBP
        , ProductPrice 31000 0 JPY
        , ProductPrice 329 0 SGD
        , ProductPrice 239 0 USD
        , ProductPrice 1890 0 HKD
        , ProductPrice 899 0 AED
        , ProductPrice 389 0 NZD
        ]
        [ DimensionValue "black" (Dimension "Color")
        , DimensionValue "nylon" (Dimension "Material")
        , DimensionValue "facebook" (Dimension "Product Feed")
        , DimensionValue "google_shopping" (Dimension "Product Feed")
        , DimensionValue "instagram" (Dimension "Product Feed")
        , DimensionValue "rakuten_affiliate" (Dimension "Product Feed")
        , DimensionValue "Backpack" (Dimension "Product Range")
        , DimensionValue "Transit Backpack" (Dimension "Product Style")
        , DimensionValue "Bag" (Dimension "Product Type")
        , DimensionValue "large" (Dimension "Shipping Sizes")
        , DimensionValue "BTBA" (Dimension "Style")
        ]
    , Product
        (ProductSku "BTBA-CHA-210")
        (ProductName "Transit Backpack - Charcoal")
        [ ProductPrice 329 0 AUD
        , ProductPrice 289 0 CAD
        , ProductPrice 239 0 EUR
        , ProductPrice 215 0 GBP
        , ProductPrice 31000 0 JPY
        , ProductPrice 329 0 SGD
        , ProductPrice 239 0 USD
        , ProductPrice 1890 0 HKD
        , ProductPrice 899 0 AED
        , ProductPrice 389 0 NZD
        ]
        [ DimensionValue "charcoal" (Dimension "Color")
        , DimensionValue "polycanvas_recycled" (Dimension "Material")
        , DimensionValue "facebook" (Dimension "Product Feed")
        , DimensionValue "google_shopping" (Dimension "Product Feed")
        , DimensionValue "instagram" (Dimension "Product Feed")
        , DimensionValue "rakuten_affiliate" (Dimension "Product Feed")
        , DimensionValue "Backpack" (Dimension "Product Range")
        , DimensionValue "Transit Backpack" (Dimension "Product Style")
        , DimensionValue "Bag" (Dimension "Product Type")
        , DimensionValue "large" (Dimension "Shipping Sizes")
        , DimensionValue "BTBA" (Dimension "Style")
        ]
    , Product
        (ProductSku "BTBA-IBL-202")
        (ProductName "Transit Backpack - Ink Blue")
        [ ProductPrice 329 0 AUD
        , ProductPrice 289 0 CAD
        , ProductPrice 239 0 EUR
        , ProductPrice 215 0 GBP
        , ProductPrice 31000 0 JPY
        , ProductPrice 329 0 SGD
        , ProductPrice 239 0 USD
        , ProductPrice 1890 0 HKD
        , ProductPrice 899 0 AED
        , ProductPrice 389 0 NZD
        ]
        [ DimensionValue "ink_blue" (Dimension "Color")
        , DimensionValue "venture_recycled" (Dimension "Material")
        , DimensionValue "facebook" (Dimension "Product Feed")
        , DimensionValue "google_shopping" (Dimension "Product Feed")
        , DimensionValue "instagram" (Dimension "Product Feed")
        , DimensionValue "rakuten_affiliate" (Dimension "Product Feed")
        , DimensionValue "Backpack" (Dimension "Product Range")
        , DimensionValue "Transit Backpack" (Dimension "Product Style")
        , DimensionValue "Bag" (Dimension "Product Type")
        , DimensionValue "large" (Dimension "Shipping Sizes")
        , DimensionValue "BTBA" (Dimension "Style")
        ]
    , Product
        (ProductSku "BTKA-BLK-202")
        (ProductName "Tokyo Totepack - Black")
        [ ProductPrice 1400 0 HKD
        , ProductPrice 219 0 AUD
        , ProductPrice 199 0 CAD
        , ProductPrice 179 0 EUR
        , ProductPrice 159 0 GBP
        , ProductPrice 25700 0 JPY
        , ProductPrice 259 0 SGD
        , ProductPrice 179 0 USD
        , ProductPrice 679 0 AED
        , ProductPrice 249 0 NZD
        ]
        [ DimensionValue "black" (Dimension "Color")
        , DimensionValue "venture" (Dimension "Material")
        , DimensionValue "facebook" (Dimension "Product Feed")
        , DimensionValue "google_shopping" (Dimension "Product Feed")
        , DimensionValue "instagram" (Dimension "Product Feed")
        , DimensionValue "rakuten_affiliate" (Dimension "Product Feed")
        , DimensionValue "Backpack" (Dimension "Product Range")
        , DimensionValue "Tokyo Totepack" (Dimension "Product Style")
        , DimensionValue "Bag" (Dimension "Product Type")
        , DimensionValue "large" (Dimension "Shipping Sizes")
        , DimensionValue "BTKA" (Dimension "Style")
        ]
    , Product
        (ProductSku "BTKA-DOC-208")
        (ProductName "Tokyo Totepack - Desert Ochre")
        [ ProductPrice 1400 0 HKD
        , ProductPrice 219 0 AUD
        , ProductPrice 199 0 CAD
        , ProductPrice 179 0 EUR
        , ProductPrice 159 0 GBP
        , ProductPrice 25700 0 JPY
        , ProductPrice 259 0 SGD
        , ProductPrice 179 0 USD
        , ProductPrice 679 0 AED
        , ProductPrice 249 0 NZD
        ]
        [ DimensionValue "desert_ochre" (Dimension "Color")
        , DimensionValue "dura_nylon" (Dimension "Material")
        , DimensionValue "facebook" (Dimension "Product Feed")
        , DimensionValue "google_shopping" (Dimension "Product Feed")
        , DimensionValue "instagram" (Dimension "Product Feed")
        , DimensionValue "rakuten_affiliate" (Dimension "Product Feed")
        , DimensionValue "Backpack" (Dimension "Product Range")
        , DimensionValue "Tokyo Totepack" (Dimension "Product Style")
        , DimensionValue "Bag" (Dimension "Product Type")
        , DimensionValue "large" (Dimension "Shipping Sizes")
        , DimensionValue "BTKA" (Dimension "Style")
        ]
    , Product
        (ProductSku "BTKA-FOR-211")
        (ProductName "Tokyo Totepack - Forest")
        [ ProductPrice 1400 0 HKD
        , ProductPrice 219 0 AUD
        , ProductPrice 199 0 CAD
        , ProductPrice 179 0 EUR
        , ProductPrice 159 0 GBP
        , ProductPrice 25700 0 JPY
        , ProductPrice 259 0 SGD
        , ProductPrice 179 0 USD
        , ProductPrice 679 0 AED
        , ProductPrice 249 0 NZD
        ]
        [ DimensionValue "forest" (Dimension "Color")
        , DimensionValue "ripstop_recycled" (Dimension "Material")
        , DimensionValue "facebook" (Dimension "Product Feed")
        , DimensionValue "google_shopping" (Dimension "Product Feed")
        , DimensionValue "instagram" (Dimension "Product Feed")
        , DimensionValue "rakuten_affiliate" (Dimension "Product Feed")
        , DimensionValue "Backpack" (Dimension "Product Range")
        , DimensionValue "Tokyo Totepack" (Dimension "Product Style")
        , DimensionValue "Bag" (Dimension "Product Type")
        , DimensionValue "large" (Dimension "Shipping Sizes")
        , DimensionValue "BTKA" (Dimension "Style")
        ]
    , Product
        (ProductSku "BTKA-IBL-202")
        (ProductName "Tokyo Totepack - Ink Blue")
        [ ProductPrice 1400 0 HKD
        , ProductPrice 219 0 AUD
        , ProductPrice 199 0 CAD
        , ProductPrice 179 0 EUR
        , ProductPrice 159 0 GBP
        , ProductPrice 25700 0 JPY
        , ProductPrice 259 0 SGD
        , ProductPrice 179 0 USD
        , ProductPrice 679 0 AED
        , ProductPrice 249 0 NZD
        ]
        [ DimensionValue "ink_blue" (Dimension "Color")
        , DimensionValue "venture" (Dimension "Material")
        , DimensionValue "facebook" (Dimension "Product Feed")
        , DimensionValue "google_shopping" (Dimension "Product Feed")
        , DimensionValue "instagram" (Dimension "Product Feed")
        , DimensionValue "rakuten_affiliate" (Dimension "Product Feed")
        , DimensionValue "Backpack" (Dimension "Product Range")
        , DimensionValue "Tokyo Totepack" (Dimension "Product Style")
        , DimensionValue "Bag" (Dimension "Product Type")
        , DimensionValue "large" (Dimension "Shipping Sizes")
        , DimensionValue "BTKA" (Dimension "Style")
        ]
    , Product
        (ProductSku "BTTA-ASH-202")
        (ProductName "Tokyo Tote - Ash")
        [ ProductPrice 1010 0 HKD
        , ProductPrice 17300 0 JPY
        , ProductPrice 149 0 AUD
        , ProductPrice 139 0 CAD
        , ProductPrice 129 0 EUR
        , ProductPrice 179 0 SGD
        , ProductPrice 129 0 USD
        , ProductPrice 109 0 GBP
        , ProductPrice 489 0 AED
        , ProductPrice 159 0 NZD
        ]
        [ DimensionValue "ash" (Dimension "Color")
        , DimensionValue "venture" (Dimension "Material")
        , DimensionValue "facebook" (Dimension "Product Feed")
        , DimensionValue "google_shopping" (Dimension "Product Feed")
        , DimensionValue "instagram" (Dimension "Product Feed")
        , DimensionValue "rakuten_affiliate" (Dimension "Product Feed")
        , DimensionValue "Tote" (Dimension "Product Range")
        , DimensionValue "Tokyo Tote" (Dimension "Product Style")
        , DimensionValue "Bag" (Dimension "Product Type")
        , DimensionValue "feb2019-bags-promo" (Dimension "Promotion Tag")
        , DimensionValue "medium" (Dimension "Shipping Sizes")
        , DimensionValue "BTTA" (Dimension "Style")
        ]
    , Product
        (ProductSku "BTTA-BLK-202")
        (ProductName "Tokyo Tote - Black")
        [ ProductPrice 1010 0 HKD
        , ProductPrice 149 0 AUD
        , ProductPrice 139 0 CAD
        , ProductPrice 129 0 EUR
        , ProductPrice 179 0 SGD
        , ProductPrice 129 0 USD
        , ProductPrice 17300 0 JPY
        , ProductPrice 109 0 GBP
        , ProductPrice 489 0 AED
        , ProductPrice 159 0 NZD
        ]
        [ DimensionValue "black" (Dimension "Color")
        , DimensionValue "venture" (Dimension "Material")
        , DimensionValue "facebook" (Dimension "Product Feed")
        , DimensionValue "google_shopping" (Dimension "Product Feed")
        , DimensionValue "instagram" (Dimension "Product Feed")
        , DimensionValue "rakuten_affiliate" (Dimension "Product Feed")
        , DimensionValue "Tote" (Dimension "Product Range")
        , DimensionValue "Tokyo Tote" (Dimension "Product Style")
        , DimensionValue "Bag" (Dimension "Product Type")
        , DimensionValue "feb2019-bags-promo" (Dimension "Promotion Tag")
        , DimensionValue "medium" (Dimension "Shipping Sizes")
        , DimensionValue "BTTA" (Dimension "Style")
        ]
    , Product
        (ProductSku "BTTA-CHA-210")
        (ProductName "Tokyo Tote - Charcoal")
        [ ProductPrice 1010 0 HKD
        , ProductPrice 149 0 AUD
        , ProductPrice 139 0 CAD
        , ProductPrice 129 0 EUR
        , ProductPrice 109 0 GBP
        , ProductPrice 17300 0 JPY
        , ProductPrice 179 0 SGD
        , ProductPrice 129 0 USD
        , ProductPrice 489 0 AED
        , ProductPrice 159 0 NZD
        ]
        [ DimensionValue "charcoal" (Dimension "Color")
        , DimensionValue "polycanvas_recycled" (Dimension "Material")
        , DimensionValue "facebook" (Dimension "Product Feed")
        , DimensionValue "google_shopping" (Dimension "Product Feed")
        , DimensionValue "instagram" (Dimension "Product Feed")
        , DimensionValue "rakuten_affiliate" (Dimension "Product Feed")
        , DimensionValue "Tote" (Dimension "Product Range")
        , DimensionValue "Tokyo Tote" (Dimension "Product Style")
        , DimensionValue "Bag" (Dimension "Product Type")
        , DimensionValue "medium" (Dimension "Shipping Sizes")
        , DimensionValue "BTTA" (Dimension "Style")
        ]
    , Product
        (ProductSku "BTTA-FOR-211")
        (ProductName "Tokyo Tote - Forest")
        [ ProductPrice 1010 0 HKD
        , ProductPrice 149 0 AUD
        , ProductPrice 139 0 CAD
        , ProductPrice 129 0 EUR
        , ProductPrice 109 0 GBP
        , ProductPrice 17300 0 JPY
        , ProductPrice 179 0 SGD
        , ProductPrice 129 0 USD
        , ProductPrice 489 0 AED
        , ProductPrice 159 0 NZD
        ]
        [ DimensionValue "forest" (Dimension "Color")
        , DimensionValue "ripstop_recycled" (Dimension "Material")
        , DimensionValue "facebook" (Dimension "Product Feed")
        , DimensionValue "google_shopping" (Dimension "Product Feed")
        , DimensionValue "instagram" (Dimension "Product Feed")
        , DimensionValue "rakuten_affiliate" (Dimension "Product Feed")
        , DimensionValue "Tote" (Dimension "Product Range")
        , DimensionValue "Tokyo Tote" (Dimension "Product Style")
        , DimensionValue "Bag" (Dimension "Product Type")
        , DimensionValue "medium" (Dimension "Shipping Sizes")
        , DimensionValue "BTTA" (Dimension "Style")
        ]
    , Product
        (ProductSku "BTTA-IBL-202")
        (ProductName "Tokyo Tote - Ink Blue")
        [ ProductPrice 1010 0 HKD
        , ProductPrice 17300 0 JPY
        , ProductPrice 149 0 AUD
        , ProductPrice 139 0 CAD
        , ProductPrice 129 0 EUR
        , ProductPrice 179 0 SGD
        , ProductPrice 129 0 USD
        , ProductPrice 109 0 GBP
        , ProductPrice 489 0 AED
        , ProductPrice 159 0 NZD
        ]
        [ DimensionValue "ink_blue" (Dimension "Color")
        , DimensionValue "venture" (Dimension "Material")
        , DimensionValue "facebook" (Dimension "Product Feed")
        , DimensionValue "google_shopping" (Dimension "Product Feed")
        , DimensionValue "instagram" (Dimension "Product Feed")
        , DimensionValue "rakuten_affiliate" (Dimension "Product Feed")
        , DimensionValue "Tote" (Dimension "Product Range")
        , DimensionValue "Tokyo Tote" (Dimension "Product Style")
        , DimensionValue "Bag" (Dimension "Product Type")
        , DimensionValue "feb2019-bags-promo" (Dimension "Promotion Tag")
        , DimensionValue "medium" (Dimension "Shipping Sizes")
        , DimensionValue "BTTA" (Dimension "Style")
        ]
    , Product
        (ProductSku "BTTA-MGR-203")
        (ProductName "Tokyo Tote - Mid Grey")
        [ ProductPrice 1010 0 HKD
        , ProductPrice 149 0 AUD
        , ProductPrice 139 0 CAD
        , ProductPrice 129 0 EUR
        , ProductPrice 17300 0 JPY
        , ProductPrice 179 0 SGD
        , ProductPrice 129 0 USD
        , ProductPrice 109 0 GBP
        , ProductPrice 489 0 AED
        , ProductPrice 159 0 NZD
        ]
        [ DimensionValue "mid_grey" (Dimension "Color")
        , DimensionValue "polycanvas" (Dimension "Material")
        , DimensionValue "facebook" (Dimension "Product Feed")
        , DimensionValue "google_shopping" (Dimension "Product Feed")
        , DimensionValue "instagram" (Dimension "Product Feed")
        , DimensionValue "rakuten_affiliate" (Dimension "Product Feed")
        , DimensionValue "Tote" (Dimension "Product Range")
        , DimensionValue "Tokyo Tote" (Dimension "Product Style")
        , DimensionValue "Bag" (Dimension "Product Type")
        , DimensionValue "medium" (Dimension "Shipping Sizes")
        , DimensionValue "BTTA" (Dimension "Style")
        ]
    , Product
        (ProductSku "BTTA-NEC-208")
        (ProductName "Tokyo Tote - Neon Cabernet")
        [ ProductPrice 1010 0 HKD
        , ProductPrice 149 0 AUD
        , ProductPrice 139 0 CAD
        , ProductPrice 129 0 EUR
        , ProductPrice 17300 0 JPY
        , ProductPrice 179 0 SGD
        , ProductPrice 129 0 USD
        , ProductPrice 109 0 GBP
        , ProductPrice 489 0 AED
        , ProductPrice 159 0 NZD
        ]
        [ DimensionValue "neon_cabernet" (Dimension "Color")
        , DimensionValue "dura_nylon" (Dimension "Material")
        , DimensionValue "facebook" (Dimension "Product Feed")
        , DimensionValue "google_shopping" (Dimension "Product Feed")
        , DimensionValue "instagram" (Dimension "Product Feed")
        , DimensionValue "rakuten_affiliate" (Dimension "Product Feed")
        , DimensionValue "Tote" (Dimension "Product Range")
        , DimensionValue "Tokyo Tote" (Dimension "Product Style")
        , DimensionValue "Bag" (Dimension "Product Type")
        , DimensionValue "medium" (Dimension "Shipping Sizes")
        , DimensionValue "BTTA" (Dimension "Style")
        ]
    , Product
        (ProductSku "BTTA-ROC-203")
        (ProductName "Tokyo Tote - Red Ochre")
        [ ProductPrice 149 0 AUD
        , ProductPrice 139 0 CAD
        , ProductPrice 129 0 EUR
        , ProductPrice 109 0 GBP
        , ProductPrice 17300 0 JPY
        , ProductPrice 179 0 SGD
        , ProductPrice 129 0 USD
        , ProductPrice 1010 0 HKD
        , ProductPrice 489 0 AED
        , ProductPrice 159 0 NZD
        ]
        [ DimensionValue "red_ochre" (Dimension "Color")
        , DimensionValue "polycanvas" (Dimension "Material")
        , DimensionValue "facebook" (Dimension "Product Feed")
        , DimensionValue "google_shopping" (Dimension "Product Feed")
        , DimensionValue "instagram" (Dimension "Product Feed")
        , DimensionValue "rakuten_affiliate" (Dimension "Product Feed")
        , DimensionValue "Tote" (Dimension "Product Range")
        , DimensionValue "Tokyo Tote" (Dimension "Product Style")
        , DimensionValue "Bag" (Dimension "Product Type")
        , DimensionValue "feb2019-bags-promo" (Dimension "Promotion Tag")
        , DimensionValue "medium" (Dimension "Shipping Sizes")
        , DimensionValue "BTTA" (Dimension "Style")
        ]
    , Product
        (ProductSku "BTTB-BSN-204")
        (ProductName "Tokyo Tote – Premium - Black Sand")
        [ ProductPrice 1570 0 HKD
        , ProductPrice 249 0 AUD
        , ProductPrice 239 0 CAD
        , ProductPrice 199 0 EUR
        , ProductPrice 179 0 GBP
        , ProductPrice 275 0 SGD
        , ProductPrice 199 0 USD
        , ProductPrice 26800 0 JPY
        , ProductPrice 759 0 AED
        , ProductPrice 289 0 NZD
        ]
        [ DimensionValue "black_sand" (Dimension "Color")
        , DimensionValue "nylon" (Dimension "Material")
        , DimensionValue "facebook" (Dimension "Product Feed")
        , DimensionValue "google_shopping" (Dimension "Product Feed")
        , DimensionValue "instagram" (Dimension "Product Feed")
        , DimensionValue "rakuten_affiliate" (Dimension "Product Feed")
        , DimensionValue "Premium Bag" (Dimension "Product Range")
        , DimensionValue "Tokyo Tote – Premium Edition" (Dimension "Product Style")
        , DimensionValue "Bag" (Dimension "Product Type")
        , DimensionValue "medium" (Dimension "Shipping Sizes")
        , DimensionValue "BTTB" (Dimension "Style")
        ]
    , Product
        (ProductSku "BTTB-DES-208")
        (ProductName "Tokyo Tote – Premium - Desert")
        [ ProductPrice 1570 0 HKD
        , ProductPrice 249 0 AUD
        , ProductPrice 239 0 CAD
        , ProductPrice 199 0 EUR
        , ProductPrice 179 0 GBP
        , ProductPrice 275 0 SGD
        , ProductPrice 199 0 USD
        , ProductPrice 26800 0 JPY
        , ProductPrice 759 0 AED
        , ProductPrice 289 0 NZD
        ]
        [ DimensionValue "desert" (Dimension "Color")
        , DimensionValue "dura_nylon" (Dimension "Material")
        , DimensionValue "facebook" (Dimension "Product Feed")
        , DimensionValue "google_shopping" (Dimension "Product Feed")
        , DimensionValue "instagram" (Dimension "Product Feed")
        , DimensionValue "rakuten_affiliate" (Dimension "Product Feed")
        , DimensionValue "Premium Bag" (Dimension "Product Range")
        , DimensionValue "Tokyo Tote – Premium Edition" (Dimension "Product Style")
        , DimensionValue "Bag" (Dimension "Product Type")
        , DimensionValue "medium" (Dimension "Shipping Sizes")
        , DimensionValue "BTTB" (Dimension "Style")
        ]
    , Product
        (ProductSku "CAPA-ARCTICBLUE")
        (ProductName "MAAP All-Conditions Phone Pocket - Arctic Blue")
        [ ProductPrice 299 0 AED
        , ProductPrice 109 0 NZD
        , ProductPrice 105 0 AUD
        , ProductPrice 95 0 CAD
        , ProductPrice 75 0 EUR
        , ProductPrice 55 0 GBP
        , ProductPrice 10500 0 JPY
        , ProductPrice 109 0 SGD
        , ProductPrice 75 0 USD
        , ProductPrice 590 0 HKD
        ]
        [ DimensionValue "arctic_blue" (Dimension "Color")
        , DimensionValue "Collaborations" (Dimension "Features")
        , DimensionValue "Water resistant" (Dimension "Features")
        , DimensionValue "leather" (Dimension "Material")
        , DimensionValue "facebook" (Dimension "Product Feed")
        , DimensionValue "google_shopping" (Dimension "Product Feed")
        , DimensionValue "instagram" (Dimension "Product Feed")
        , DimensionValue "rakuten_affiliate" (Dimension "Product Feed")
        , DimensionValue "Unisex Pocket" (Dimension "Product Range")
        , DimensionValue "All-Conditions Phone Pocket" (Dimension "Product Style")
        , DimensionValue "Wallet" (Dimension "Product Type")
        , DimensionValue "small" (Dimension "Shipping Sizes")
        , DimensionValue "standard" (Dimension "Size")
        , DimensionValue "12 or less cards" (Dimension "Storage")
        , DimensionValue "Bills" (Dimension "Storage")
        , DimensionValue "Coins" (Dimension "Storage")
        , DimensionValue "Samsung S7" (Dimension "Storage")
        , DimensionValue "iPhone 6/6s" (Dimension "Storage")
        , DimensionValue "iPhone 7" (Dimension "Storage")
        , DimensionValue "CAPA" (Dimension "Style")
        ]
    , Product
        (ProductSku "CAPA-BLACK")
        (ProductName "MAAP All-Conditions Phone Pocket - Black")
        [ ProductPrice 850 0 HKD
        , ProductPrice 149 0 AUD
        , ProductPrice 135 0 CAD
        , ProductPrice 109 0 EUR
        , ProductPrice 79 0 GBP
        , ProductPrice 159 0 SGD
        , ProductPrice 109 0 USD
        , ProductPrice 14900 0 JPY
        , ProductPrice 419 0 AED
        , ProductPrice 159 0 NZD
        ]
        [ DimensionValue "black" (Dimension "Color")
        , DimensionValue "Collaborations" (Dimension "Features")
        , DimensionValue "Water resistant" (Dimension "Features")
        , DimensionValue "leather" (Dimension "Material")
        , DimensionValue "facebook" (Dimension "Product Feed")
        , DimensionValue "google_shopping" (Dimension "Product Feed")
        , DimensionValue "instagram" (Dimension "Product Feed")
        , DimensionValue "rakuten_affiliate" (Dimension "Product Feed")
        , DimensionValue "Unisex Pocket" (Dimension "Product Range")
        , DimensionValue "All-Conditions Phone Pocket" (Dimension "Product Style")
        , DimensionValue "Wallet" (Dimension "Product Type")
        , DimensionValue "small" (Dimension "Shipping Sizes")
        , DimensionValue "standard" (Dimension "Size")
        , DimensionValue "12 or less cards" (Dimension "Storage")
        , DimensionValue "Bills" (Dimension "Storage")
        , DimensionValue "Coins" (Dimension "Storage")
        , DimensionValue "Samsung S7" (Dimension "Storage")
        , DimensionValue "iPhone 6/6s" (Dimension "Storage")
        , DimensionValue "iPhone 7" (Dimension "Storage")
        , DimensionValue "CAPA" (Dimension "Style")
        ]
    , Product
        (ProductSku "CAPA-NAV-102")
        (ProductName "MAAP All-Conditions Phone Pocket - Navy")
        [ ProductPrice 149 0 AUD
        , ProductPrice 135 0 CAD
        , ProductPrice 109 0 EUR
        , ProductPrice 79 0 GBP
        , ProductPrice 850 0 HKD
        , ProductPrice 159 0 SGD
        , ProductPrice 109 0 USD
        , ProductPrice 14900 0 JPY
        , ProductPrice 419 0 AED
        , ProductPrice 159 0 NZD
        ]
        [ DimensionValue "navy" (Dimension "Color")
        , DimensionValue "Collaborations" (Dimension "Features")
        , DimensionValue "Water resistant" (Dimension "Features")
        , DimensionValue "leather" (Dimension "Material")
        , DimensionValue "facebook" (Dimension "Product Feed")
        , DimensionValue "google_shopping" (Dimension "Product Feed")
        , DimensionValue "instagram" (Dimension "Product Feed")
        , DimensionValue "rakuten_affiliate" (Dimension "Product Feed")
        , DimensionValue "Unisex Pocket" (Dimension "Product Range")
        , DimensionValue "All-Conditions Phone Pocket" (Dimension "Product Style")
        , DimensionValue "Wallet" (Dimension "Product Type")
        , DimensionValue "small" (Dimension "Shipping Sizes")
        , DimensionValue "standard" (Dimension "Size")
        , DimensionValue "12 or less cards" (Dimension "Storage")
        , DimensionValue "Bills" (Dimension "Storage")
        , DimensionValue "Coins" (Dimension "Storage")
        , DimensionValue "Samsung S7" (Dimension "Storage")
        , DimensionValue "iPhone 6/6s" (Dimension "Storage")
        , DimensionValue "iPhone 7" (Dimension "Storage")
        , DimensionValue "CAPA" (Dimension "Style")
        ]
    , Product
        (ProductSku "CAPB-ARCTICBLUE")
        (ProductName "MAAP All-Conditions Phone Pocket Plus - Arctic Blue")
        [ ProductPrice 650 0 HKD
        , ProductPrice 109 0 AUD
        , ProductPrice 99 0 CAD
        , ProductPrice 85 0 EUR
        , ProductPrice 65 0 GBP
        , ProductPrice 11300 0 JPY
        , ProductPrice 359 0 AED
        , ProductPrice 119 0 NZD
        , ProductPrice 119 0 SGD
        , ProductPrice 85 0 USD
        ]
        [ DimensionValue "arctic_blue" (Dimension "Color")
        , DimensionValue "Collaborations" (Dimension "Features")
        , DimensionValue "Water resistant" (Dimension "Features")
        , DimensionValue "leather" (Dimension "Material")
        , DimensionValue "facebook" (Dimension "Product Feed")
        , DimensionValue "google_shopping" (Dimension "Product Feed")
        , DimensionValue "instagram" (Dimension "Product Feed")
        , DimensionValue "rakuten_affiliate" (Dimension "Product Feed")
        , DimensionValue "Unisex Pocket" (Dimension "Product Range")
        , DimensionValue "All-Conditions Phone Pocket" (Dimension "Product Style")
        , DimensionValue "Wallet" (Dimension "Product Type")
        , DimensionValue "small" (Dimension "Shipping Sizes")
        , DimensionValue "plus" (Dimension "Size")
        , DimensionValue "12 or less cards" (Dimension "Storage")
        , DimensionValue "Bills" (Dimension "Storage")
        , DimensionValue "Coins" (Dimension "Storage")
        , DimensionValue "iPhone 7 Plus" (Dimension "Storage")
        , DimensionValue "CAPA" (Dimension "Style")
        ]
    , Product
        (ProductSku "CAPB-BLACK")
        (ProductName "MAAP All-Conditions Phone Pocket Plus - Black")
        [ ProductPrice 930 0 HKD
        , ProductPrice 159 0 AUD
        , ProductPrice 145 0 CAD
        , ProductPrice 119 0 EUR
        , ProductPrice 89 0 GBP
        , ProductPrice 16200 0 JPY
        , ProductPrice 169 0 SGD
        , ProductPrice 119 0 USD
        , ProductPrice 459 0 AED
        , ProductPrice 169 0 NZD
        ]
        [ DimensionValue "black" (Dimension "Color")
        , DimensionValue "Collaborations" (Dimension "Features")
        , DimensionValue "Water resistant" (Dimension "Features")
        , DimensionValue "leather" (Dimension "Material")
        , DimensionValue "facebook" (Dimension "Product Feed")
        , DimensionValue "google_shopping" (Dimension "Product Feed")
        , DimensionValue "instagram" (Dimension "Product Feed")
        , DimensionValue "rakuten_affiliate" (Dimension "Product Feed")
        , DimensionValue "Unisex Pocket" (Dimension "Product Range")
        , DimensionValue "All-Conditions Phone Pocket" (Dimension "Product Style")
        , DimensionValue "Wallet" (Dimension "Product Type")
        , DimensionValue "small" (Dimension "Shipping Sizes")
        , DimensionValue "plus" (Dimension "Size")
        , DimensionValue "12 or less cards" (Dimension "Storage")
        , DimensionValue "Bills" (Dimension "Storage")
        , DimensionValue "Coins" (Dimension "Storage")
        , DimensionValue "iPhone 7 Plus" (Dimension "Storage")
        , DimensionValue "CAPA" (Dimension "Style")
        ]
    , Product
        (ProductSku "CAPB-NAV-102")
        (ProductName "MAAP All-Conditions Phone Pocket Plus - Navy")
        [ ProductPrice 930 0 HKD
        , ProductPrice 159 0 AUD
        , ProductPrice 145 0 CAD
        , ProductPrice 119 0 EUR
        , ProductPrice 89 0 GBP
        , ProductPrice 16200 0 JPY
        , ProductPrice 169 0 SGD
        , ProductPrice 119 0 USD
        , ProductPrice 459 0 AED
        , ProductPrice 169 0 NZD
        ]
        [ DimensionValue "navy" (Dimension "Color")
        , DimensionValue "Collaborations" (Dimension "Features")
        , DimensionValue "Water resistant" (Dimension "Features")
        , DimensionValue "leather" (Dimension "Material")
        , DimensionValue "facebook" (Dimension "Product Feed")
        , DimensionValue "google_shopping" (Dimension "Product Feed")
        , DimensionValue "instagram" (Dimension "Product Feed")
        , DimensionValue "rakuten_affiliate" (Dimension "Product Feed")
        , DimensionValue "Unisex Pocket" (Dimension "Product Range")
        , DimensionValue "All-Conditions Phone Pocket" (Dimension "Product Style")
        , DimensionValue "Wallet" (Dimension "Product Type")
        , DimensionValue "small" (Dimension "Shipping Sizes")
        , DimensionValue "plus" (Dimension "Size")
        , DimensionValue "12 or less cards" (Dimension "Storage")
        , DimensionValue "Bills" (Dimension "Storage")
        , DimensionValue "Coins" (Dimension "Storage")
        , DimensionValue "iPhone 7 Plus" (Dimension "Storage")
        , DimensionValue "CAPA" (Dimension "Style")
        ]
    , Product
        (ProductSku "CBSA-IBL-202")
        (ProductName "Bellroy x MAAP Shift Backpack - Ink Blue")
        [ ProductPrice 299 0 AUD
        , ProductPrice 260 0 CAD
        , ProductPrice 240 0 EUR
        , ProductPrice 209 0 GBP
        , ProductPrice 31200 0 JPY
        , ProductPrice 329 0 SGD
        , ProductPrice 240 0 USD
        , ProductPrice 1850 0 HKD
        , ProductPrice 899 0 AED
        , ProductPrice 319 0 NZD
        ]
        [ DimensionValue "ink_blue" (Dimension "Color")
        , DimensionValue "venture" (Dimension "Material")
        , DimensionValue "facebook" (Dimension "Product Feed")
        , DimensionValue "google_shopping" (Dimension "Product Feed")
        , DimensionValue "instagram" (Dimension "Product Feed")
        , DimensionValue "rakuten_affiliate" (Dimension "Product Feed")
        , DimensionValue "Backpack" (Dimension "Product Range")
        , DimensionValue "Shift Backpack" (Dimension "Product Style")
        , DimensionValue "Bag" (Dimension "Product Type")
        , DimensionValue "feb2019-bags-promo" (Dimension "Promotion Tag")
        , DimensionValue "large" (Dimension "Shipping Sizes")
        , DimensionValue "CBSA" (Dimension "Style")
        ]
    , Product
        (ProductSku "CKCA-TAU-105")
        (ProductName "Bellroy x Clae Key Cover - Taupe")
        [ ProductPrice 45 0 AUD
        , ProductPrice 129 0 AED
        , ProductPrice 50 0 NZD
        , ProductPrice 45 0 CAD
        , ProductPrice 35 0 EUR
        , ProductPrice 30 0 GBP
        , ProductPrice 4900 0 JPY
        , ProductPrice 50 0 SGD
        , ProductPrice 35 0 USD
        , ProductPrice 290 0 HKD
        ]
        [ DimensionValue "taupe" (Dimension "Color")
        , DimensionValue "leather_nubuck" (Dimension "Material")
        , DimensionValue "Key Cover" (Dimension "Product Range")
        , DimensionValue "Key Cover" (Dimension "Product Style")
        , DimensionValue "Key Cover" (Dimension "Product Type")
        , DimensionValue "small" (Dimension "Shipping Sizes")
        , DimensionValue "standard" (Dimension "Size")
        , DimensionValue "EKCA" (Dimension "Style")
        ]
    , Product
        (ProductSku "CNCA-CHARCOAL")
        (ProductName "Field Notes Notebook Cover Mini - Charcoal")
        [ ProductPrice 660 0 HKD
        , ProductPrice 109 0 AUD
        , ProductPrice 105 0 CAD
        , ProductPrice 85 0 EUR
        , ProductPrice 59 0 GBP
        , ProductPrice 11600 0 JPY
        , ProductPrice 125 0 SGD
        , ProductPrice 85 0 USD
        , ProductPrice 329 0 AED
        , ProductPrice 125 0 NZD
        ]
        [ DimensionValue "charcoal" (Dimension "Color")
        , DimensionValue "Collaborations" (Dimension "Features")
        , DimensionValue "leather" (Dimension "Material")
        , DimensionValue "facebook" (Dimension "Product Feed")
        , DimensionValue "google_shopping" (Dimension "Product Feed")
        , DimensionValue "instagram" (Dimension "Product Feed")
        , DimensionValue "rakuten_affiliate" (Dimension "Product Feed")
        , DimensionValue "Writing" (Dimension "Product Range")
        , DimensionValue "Notebook Cover Mini" (Dimension "Product Style")
        , DimensionValue "Work Accessories" (Dimension "Product Type")
        , DimensionValue "small" (Dimension "Shipping Sizes")
        , DimensionValue "1 Passport" (Dimension "Storage")
        , DimensionValue "2 — 3 Passports" (Dimension "Storage")
        , DimensionValue "6 or less cards" (Dimension "Storage")
        , DimensionValue "Cards" (Dimension "Storage")
        , DimensionValue "Mini notebook" (Dimension "Storage")
        , DimensionValue "Passport" (Dimension "Storage")
        , DimensionValue "Pen" (Dimension "Storage")
        , DimensionValue "Travel documents" (Dimension "Storage")
        , DimensionValue "CNCA" (Dimension "Style")
        ]
    , Product
        (ProductSku "DHSA-BLACK")
        (ProductName "Pixelbook Sleeve - Black")
        [ ProductPrice 700 0 HKD
        , ProductPrice 115 0 AUD
        , ProductPrice 109 0 CAD
        , ProductPrice 89 0 EUR
        , ProductPrice 69 0 GBP
        , ProductPrice 129 0 SGD
        , ProductPrice 89 0 USD
        , ProductPrice 12200 0 JPY
        , ProductPrice 339 0 AED
        , ProductPrice 129 0 NZD
        ]
        [ DimensionValue "black" (Dimension "Color")
        , DimensionValue "woven" (Dimension "Material")
        , DimensionValue "facebook" (Dimension "Product Feed")
        , DimensionValue "google_shopping" (Dimension "Product Feed")
        , DimensionValue "instagram" (Dimension "Product Feed")
        , DimensionValue "rakuten_affiliate" (Dimension "Product Feed")
        , DimensionValue "Sleeve" (Dimension "Product Range")
        , DimensionValue "Pixelbook Sleeve" (Dimension "Product Style")
        , DimensionValue "Laptop/Tablet Accessories" (Dimension "Product Type")
        , DimensionValue "small" (Dimension "Shipping Sizes")
        , DimensionValue "DHSA" (Dimension "Style")
        ]
    , Product
        (ProductSku "DHSA-LIGHTGREY")
        (ProductName "Pixelbook Sleeve - Light Grey")
        [ ProductPrice 700 0 HKD
        , ProductPrice 115 0 AUD
        , ProductPrice 109 0 CAD
        , ProductPrice 89 0 EUR
        , ProductPrice 69 0 GBP
        , ProductPrice 129 0 SGD
        , ProductPrice 89 0 USD
        , ProductPrice 12200 0 JPY
        , ProductPrice 339 0 AED
        , ProductPrice 129 0 NZD
        ]
        [ DimensionValue "light_grey" (Dimension "Color")
        , DimensionValue "woven" (Dimension "Material")
        , DimensionValue "facebook" (Dimension "Product Feed")
        , DimensionValue "google_shopping" (Dimension "Product Feed")
        , DimensionValue "instagram" (Dimension "Product Feed")
        , DimensionValue "rakuten_affiliate" (Dimension "Product Feed")
        , DimensionValue "Sleeve" (Dimension "Product Range")
        , DimensionValue "Pixelbook Sleeve" (Dimension "Product Style")
        , DimensionValue "Laptop/Tablet Accessories" (Dimension "Product Type")
        , DimensionValue "small" (Dimension "Shipping Sizes")
        , DimensionValue "DHSA" (Dimension "Style")
        ]
    , Product
        (ProductSku "DHSB-DUS-203")
        (ProductName "Laptop Sleeve – Google Edition - Dusk")
        [ ProductPrice 65 0 AUD
        , ProductPrice 59 0 CAD
        , ProductPrice 49 0 EUR
        , ProductPrice 45 0 GBP
        , ProductPrice 6200 0 JPY
        , ProductPrice 69 0 SGD
        , ProductPrice 49 0 USD
        , ProductPrice 390 0 HKD
        , ProductPrice 189 0 AED
        , ProductPrice 79 0 NZD
        ]
        [ DimensionValue "dusk" (Dimension "Color")
        , DimensionValue "polycanvas_recycled" (Dimension "Material")
        , DimensionValue "facebook" (Dimension "Product Feed")
        , DimensionValue "google_shopping" (Dimension "Product Feed")
        , DimensionValue "instagram" (Dimension "Product Feed")
        , DimensionValue "rakuten_affiliate" (Dimension "Product Feed")
        , DimensionValue "Sleeve" (Dimension "Product Range")
        , DimensionValue "Pixelbook Sleeve" (Dimension "Product Style")
        , DimensionValue "Laptop/Tablet Accessories" (Dimension "Product Type")
        , DimensionValue "small" (Dimension "Shipping Sizes")
        , DimensionValue "DHSB" (Dimension "Style")
        ]
    , Product
        (ProductSku "DHSB-SLT-203")
        (ProductName "Laptop Sleeve – Google Edition - Slate")
        [ ProductPrice 65 0 AUD
        , ProductPrice 59 0 CAD
        , ProductPrice 49 0 EUR
        , ProductPrice 45 0 GBP
        , ProductPrice 6200 0 JPY
        , ProductPrice 69 0 SGD
        , ProductPrice 49 0 USD
        , ProductPrice 390 0 HKD
        , ProductPrice 189 0 AED
        , ProductPrice 79 0 NZD
        ]
        [ DimensionValue "slate" (Dimension "Color")
        , DimensionValue "polycanvas_recycled" (Dimension "Material")
        , DimensionValue "facebook" (Dimension "Product Feed")
        , DimensionValue "google_shopping" (Dimension "Product Feed")
        , DimensionValue "instagram" (Dimension "Product Feed")
        , DimensionValue "rakuten_affiliate" (Dimension "Product Feed")
        , DimensionValue "Sleeve" (Dimension "Product Range")
        , DimensionValue "Pixelbook Sleeve" (Dimension "Product Style")
        , DimensionValue "Laptop/Tablet Accessories" (Dimension "Product Type")
        , DimensionValue "small" (Dimension "Shipping Sizes")
        , DimensionValue "DHSB" (Dimension "Style")
        ]
    , Product
        (ProductSku "DLEA-TEAL-WOVEN")
        (ProductName "Laptop Sleeve Extra - Teal Woven")
        [ ProductPrice 390 0 HKD
        , ProductPrice 65 0 AUD
        , ProductPrice 59 0 CAD
        , ProductPrice 49 0 EUR
        , ProductPrice 55 0 GBP
        , ProductPrice 6800 0 JPY
        , ProductPrice 69 0 SGD
        , ProductPrice 55 0 USD
        , ProductPrice 209 0 AED
        , ProductPrice 69 0 NZD
        ]
        [ DimensionValue "teal-woven" (Dimension "Color")
        , DimensionValue "woven" (Dimension "Material")
        , DimensionValue "facebook" (Dimension "Product Feed")
        , DimensionValue "google_shopping" (Dimension "Product Feed")
        , DimensionValue "instagram" (Dimension "Product Feed")
        , DimensionValue "rakuten_affiliate" (Dimension "Product Feed")
        , DimensionValue "Sleeve" (Dimension "Product Range")
        , DimensionValue "Laptop Sleeve Extra" (Dimension "Product Style")
        , DimensionValue "Laptop/Tablet Accessories" (Dimension "Product Type")
        , DimensionValue "small" (Dimension "Shipping Sizes")
        , DimensionValue "12in" (Dimension "Size")
        , DimensionValue "DLEA" (Dimension "Style")
        ]
    , Product
        (ProductSku "DLSA-BLK-212")
        (ProductName "Laptop Sleeve - Black")
        [ ProductPrice 69 0 AUD
        , ProductPrice 59 0 CAD
        , ProductPrice 49 0 EUR
        , ProductPrice 45 0 GBP
        , ProductPrice 6800 0 JPY
        , ProductPrice 69 0 SGD
        , ProductPrice 49 0 USD
        , ProductPrice 390 0 HKD
        , ProductPrice 189 0 AED
        , ProductPrice 79 0 NZD
        ]
        [ DimensionValue "black" (Dimension "Color")
        , DimensionValue "ripstop_recycled" (Dimension "Material")
        , DimensionValue "facebook" (Dimension "Product Feed")
        , DimensionValue "google_shopping" (Dimension "Product Feed")
        , DimensionValue "instagram" (Dimension "Product Feed")
        , DimensionValue "rakuten_affiliate" (Dimension "Product Feed")
        , DimensionValue "Sleeve" (Dimension "Product Range")
        , DimensionValue "Laptop Sleeve" (Dimension "Product Style")
        , DimensionValue "Laptop/Tablet Accessories" (Dimension "Product Type")
        , DimensionValue "small" (Dimension "Shipping Sizes")
        , DimensionValue "13in" (Dimension "Size")
        , DimensionValue "DLSA" (Dimension "Style")
        ]
    , Product
        (ProductSku "DLSA-LGR-212")
        (ProductName "Laptop Sleeve - Light Grey")
        [ ProductPrice 69 0 AUD
        , ProductPrice 59 0 CAD
        , ProductPrice 49 0 EUR
        , ProductPrice 45 0 GBP
        , ProductPrice 6800 0 JPY
        , ProductPrice 69 0 SGD
        , ProductPrice 49 0 USD
        , ProductPrice 390 0 HKD
        , ProductPrice 189 0 AED
        , ProductPrice 79 0 NZD
        ]
        [ DimensionValue "light_grey" (Dimension "Color")
        , DimensionValue "ripstop_recycled" (Dimension "Material")
        , DimensionValue "facebook" (Dimension "Product Feed")
        , DimensionValue "google_shopping" (Dimension "Product Feed")
        , DimensionValue "instagram" (Dimension "Product Feed")
        , DimensionValue "rakuten_affiliate" (Dimension "Product Feed")
        , DimensionValue "Sleeve" (Dimension "Product Range")
        , DimensionValue "Laptop Sleeve" (Dimension "Product Style")
        , DimensionValue "Laptop/Tablet Accessories" (Dimension "Product Type")
        , DimensionValue "small" (Dimension "Shipping Sizes")
        , DimensionValue "13in" (Dimension "Size")
        , DimensionValue "DLSA" (Dimension "Style")
        ]
    , Product
        (ProductSku "DLSB-BLK-212")
        (ProductName "Laptop Sleeve - Black")
        [ ProductPrice 69 0 AUD
        , ProductPrice 59 0 CAD
        , ProductPrice 49 0 EUR
        , ProductPrice 45 0 GBP
        , ProductPrice 6800 0 JPY
        , ProductPrice 69 0 SGD
        , ProductPrice 49 0 USD
        , ProductPrice 390 0 HKD
        , ProductPrice 189 0 AED
        , ProductPrice 79 0 NZD
        ]
        [ DimensionValue "black" (Dimension "Color")
        , DimensionValue "ripstop_recycled" (Dimension "Material")
        , DimensionValue "facebook" (Dimension "Product Feed")
        , DimensionValue "google_shopping" (Dimension "Product Feed")
        , DimensionValue "instagram" (Dimension "Product Feed")
        , DimensionValue "rakuten_affiliate" (Dimension "Product Feed")
        , DimensionValue "Sleeve" (Dimension "Product Range")
        , DimensionValue "Laptop Sleeve" (Dimension "Product Style")
        , DimensionValue "Laptop/Tablet Accessories" (Dimension "Product Type")
        , DimensionValue "small" (Dimension "Shipping Sizes")
        , DimensionValue "15in" (Dimension "Size")
        , DimensionValue "DLSA" (Dimension "Style")
        ]
    , Product
        (ProductSku "DLSB-LGR-212")
        (ProductName "Laptop Sleeve - Light Grey")
        [ ProductPrice 69 0 AUD
        , ProductPrice 59 0 CAD
        , ProductPrice 49 0 EUR
        , ProductPrice 45 0 GBP
        , ProductPrice 6800 0 JPY
        , ProductPrice 69 0 SGD
        , ProductPrice 49 0 USD
        , ProductPrice 390 0 HKD
        , ProductPrice 189 0 AED
        , ProductPrice 79 0 NZD
        ]
        [ DimensionValue "light_grey" (Dimension "Color")
        , DimensionValue "ripstop_recycled" (Dimension "Material")
        , DimensionValue "facebook" (Dimension "Product Feed")
        , DimensionValue "google_shopping" (Dimension "Product Feed")
        , DimensionValue "instagram" (Dimension "Product Feed")
        , DimensionValue "rakuten_affiliate" (Dimension "Product Feed")
        , DimensionValue "Sleeve" (Dimension "Product Range")
        , DimensionValue "Laptop Sleeve" (Dimension "Product Style")
        , DimensionValue "Laptop/Tablet Accessories" (Dimension "Product Type")
        , DimensionValue "small" (Dimension "Shipping Sizes")
        , DimensionValue "15in" (Dimension "Size")
        , DimensionValue "DLSA" (Dimension "Style")
        ]
    , Product
        (ProductSku "DTSA-BLACK")
        (ProductName "Tablet Sleeve - Black")
        [ ProductPrice 59 0 SGD
        , ProductPrice 39 0 USD
        , ProductPrice 310 0 HKD
        , ProductPrice 49 0 AUD
        , ProductPrice 49 0 CAD
        , ProductPrice 39 0 EUR
        , ProductPrice 35 0 GBP
        , ProductPrice 5400 0 JPY
        , ProductPrice 149 0 AED
        , ProductPrice 55 0 NZD
        ]
        [ DimensionValue "black" (Dimension "Color")
        , DimensionValue "leather" (Dimension "Material")
        , DimensionValue "facebook" (Dimension "Product Feed")
        , DimensionValue "google_shopping" (Dimension "Product Feed")
        , DimensionValue "instagram" (Dimension "Product Feed")
        , DimensionValue "rakuten_affiliate" (Dimension "Product Feed")
        , DimensionValue "Sleeve" (Dimension "Product Range")
        , DimensionValue "Tablet Sleeve" (Dimension "Product Style")
        , DimensionValue "Laptop/Tablet Accessories" (Dimension "Product Type")
        , DimensionValue "small" (Dimension "Shipping Sizes")
        , DimensionValue "8in" (Dimension "Size")
        , DimensionValue "Tablet 8\"" (Dimension "Storage")
        , DimensionValue "iPad Mini" (Dimension "Storage")
        , DimensionValue "DTSA" (Dimension "Style")
        ]
    , Product
        (ProductSku "DTSA-CHARCOAL-WOVEN")
        (ProductName "Tablet Sleeve - Charcoal Woven")
        [ ProductPrice 310 0 HKD
        , ProductPrice 49 0 AUD
        , ProductPrice 39 0 EUR
        , ProductPrice 5400 0 JPY
        , ProductPrice 59 0 SGD
        , ProductPrice 39 0 USD
        , ProductPrice 35 0 GBP
        , ProductPrice 49 0 CAD
        , ProductPrice 149 0 AED
        , ProductPrice 55 0 NZD
        ]
        [ DimensionValue "charcoal-woven" (Dimension "Color")
        , DimensionValue "woven" (Dimension "Material")
        , DimensionValue "facebook" (Dimension "Product Feed")
        , DimensionValue "google_shopping" (Dimension "Product Feed")
        , DimensionValue "instagram" (Dimension "Product Feed")
        , DimensionValue "rakuten_affiliate" (Dimension "Product Feed")
        , DimensionValue "Sleeve" (Dimension "Product Range")
        , DimensionValue "Tablet Sleeve" (Dimension "Product Style")
        , DimensionValue "Laptop/Tablet Accessories" (Dimension "Product Type")
        , DimensionValue "small" (Dimension "Shipping Sizes")
        , DimensionValue "8in" (Dimension "Size")
        , DimensionValue "Tablet 8\"" (Dimension "Storage")
        , DimensionValue "iPad Mini" (Dimension "Storage")
        , DimensionValue "DTSA" (Dimension "Style")
        ]
    , Product
        (ProductSku "DTSA-WARMGREY-WOVEN")
        (ProductName "Tablet Sleeve - Warmgrey Woven")
        [ ProductPrice 49 0 AUD
        , ProductPrice 39 0 EUR
        , ProductPrice 59 0 SGD
        , ProductPrice 39 0 USD
        , ProductPrice 35 0 GBP
        , ProductPrice 49 0 CAD
        , ProductPrice 310 0 HKD
        , ProductPrice 5400 0 JPY
        , ProductPrice 149 0 AED
        , ProductPrice 55 0 NZD
        ]
        [ DimensionValue "warmgrey-woven" (Dimension "Color")
        , DimensionValue "woven" (Dimension "Material")
        , DimensionValue "facebook" (Dimension "Product Feed")
        , DimensionValue "google_shopping" (Dimension "Product Feed")
        , DimensionValue "instagram" (Dimension "Product Feed")
        , DimensionValue "rakuten_affiliate" (Dimension "Product Feed")
        , DimensionValue "Sleeve" (Dimension "Product Range")
        , DimensionValue "Tablet Sleeve" (Dimension "Product Style")
        , DimensionValue "Laptop/Tablet Accessories" (Dimension "Product Type")
        , DimensionValue "small" (Dimension "Shipping Sizes")
        , DimensionValue "8in" (Dimension "Size")
        , DimensionValue "Tablet 8\"" (Dimension "Storage")
        , DimensionValue "iPad Mini" (Dimension "Storage")
        , DimensionValue "DTSA" (Dimension "Style")
        ]
    , Product
        (ProductSku "DTSB-BLACK")
        (ProductName "Tablet Sleeve - Black")
        [ ProductPrice 310 0 HKD
        , ProductPrice 49 0 AUD
        , ProductPrice 49 0 CAD
        , ProductPrice 39 0 EUR
        , ProductPrice 35 0 GBP
        , ProductPrice 5400 0 JPY
        , ProductPrice 59 0 SGD
        , ProductPrice 39 0 USD
        , ProductPrice 149 0 AED
        , ProductPrice 55 0 NZD
        ]
        [ DimensionValue "black" (Dimension "Color")
        , DimensionValue "leather" (Dimension "Material")
        , DimensionValue "facebook" (Dimension "Product Feed")
        , DimensionValue "google_shopping" (Dimension "Product Feed")
        , DimensionValue "instagram" (Dimension "Product Feed")
        , DimensionValue "rakuten_affiliate" (Dimension "Product Feed")
        , DimensionValue "Sleeve" (Dimension "Product Range")
        , DimensionValue "Tablet Sleeve" (Dimension "Product Style")
        , DimensionValue "Laptop/Tablet Accessories" (Dimension "Product Type")
        , DimensionValue "small" (Dimension "Shipping Sizes")
        , DimensionValue "10in" (Dimension "Size")
        , DimensionValue "Tablet 10\"" (Dimension "Storage")
        , DimensionValue "iPad" (Dimension "Storage")
        , DimensionValue "iPad Pro 9.7\"" (Dimension "Storage")
        , DimensionValue "DTSA" (Dimension "Style")
        ]
    , Product
        (ProductSku "DTSB-CARAMEL")
        (ProductName "Tablet Sleeve - Caramel")
        [ ProductPrice 310 0 HKD
        , ProductPrice 49 0 AUD
        , ProductPrice 49 0 CAD
        , ProductPrice 39 0 EUR
        , ProductPrice 35 0 GBP
        , ProductPrice 5400 0 JPY
        , ProductPrice 59 0 SGD
        , ProductPrice 39 0 USD
        , ProductPrice 149 0 AED
        , ProductPrice 55 0 NZD
        ]
        [ DimensionValue "caramel" (Dimension "Color")
        , DimensionValue "leather" (Dimension "Material")
        , DimensionValue "facebook" (Dimension "Product Feed")
        , DimensionValue "google_shopping" (Dimension "Product Feed")
        , DimensionValue "instagram" (Dimension "Product Feed")
        , DimensionValue "rakuten_affiliate" (Dimension "Product Feed")
        , DimensionValue "Sleeve" (Dimension "Product Range")
        , DimensionValue "Tablet Sleeve" (Dimension "Product Style")
        , DimensionValue "Laptop/Tablet Accessories" (Dimension "Product Type")
        , DimensionValue "small" (Dimension "Shipping Sizes")
        , DimensionValue "10in" (Dimension "Size")
        , DimensionValue "Tablet 10\"" (Dimension "Storage")
        , DimensionValue "iPad" (Dimension "Storage")
        , DimensionValue "iPad Pro 9.7\"" (Dimension "Storage")
        , DimensionValue "DTSA" (Dimension "Style")
        ]
    , Product
        (ProductSku "DTSB-CHARCOAL-WOVEN")
        (ProductName "Tablet Sleeve - Charcoal Woven")
        [ ProductPrice 310 0 HKD
        , ProductPrice 5400 0 JPY
        , ProductPrice 49 0 AUD
        , ProductPrice 49 0 CAD
        , ProductPrice 39 0 EUR
        , ProductPrice 35 0 GBP
        , ProductPrice 59 0 SGD
        , ProductPrice 39 0 USD
        , ProductPrice 149 0 AED
        , ProductPrice 55 0 NZD
        ]
        [ DimensionValue "charcoal-woven" (Dimension "Color")
        , DimensionValue "woven" (Dimension "Material")
        , DimensionValue "facebook" (Dimension "Product Feed")
        , DimensionValue "google_shopping" (Dimension "Product Feed")
        , DimensionValue "instagram" (Dimension "Product Feed")
        , DimensionValue "rakuten_affiliate" (Dimension "Product Feed")
        , DimensionValue "Sleeve" (Dimension "Product Range")
        , DimensionValue "Tablet Sleeve" (Dimension "Product Style")
        , DimensionValue "Laptop/Tablet Accessories" (Dimension "Product Type")
        , DimensionValue "small" (Dimension "Shipping Sizes")
        , DimensionValue "10in" (Dimension "Size")
        , DimensionValue "Tablet 10\"" (Dimension "Storage")
        , DimensionValue "iPad" (Dimension "Storage")
        , DimensionValue "iPad Pro 9.7\"" (Dimension "Storage")
        , DimensionValue "DTSA" (Dimension "Style")
        ]
    , Product
        (ProductSku "ECHA-BLACK")
        (ProductName "Card Holder - Black")
        [ ProductPrice 550 0 HKD
        , ProductPrice 89 0 AUD
        , ProductPrice 85 0 CAD
        , ProductPrice 69 0 EUR
        , ProductPrice 99 0 SGD
        , ProductPrice 69 0 USD
        , ProductPrice 9500 0 JPY
        , ProductPrice 59 0 GBP
        , ProductPrice 259 0 AED
        , ProductPrice 99 0 NZD
        ]
        [ DimensionValue "black" (Dimension "Color")
        , DimensionValue "facebook" (Dimension "Product Feed")
        , DimensionValue "google_shopping" (Dimension "Product Feed")
        , DimensionValue "instagram" (Dimension "Product Feed")
        , DimensionValue "rakuten_affiliate" (Dimension "Product Feed")
        , DimensionValue "Unisex Wallet" (Dimension "Product Range")
        , DimensionValue "Card Holder" (Dimension "Product Style")
        , DimensionValue "Wallet" (Dimension "Product Type")
        , DimensionValue "small" (Dimension "Shipping Sizes")
        , DimensionValue "default" (Dimension "Size")
        , DimensionValue "12 or less cards" (Dimension "Storage")
        , DimensionValue "12+ cards" (Dimension "Storage")
        , DimensionValue "Bills" (Dimension "Storage")
        , DimensionValue "Cards" (Dimension "Storage")
        , DimensionValue "ECHA" (Dimension "Style")
        ]
    , Product
        (ProductSku "ECHA-CARAMEL")
        (ProductName "Card Holder - Caramel")
        [ ProductPrice 550 0 HKD
        , ProductPrice 89 0 AUD
        , ProductPrice 85 0 CAD
        , ProductPrice 69 0 EUR
        , ProductPrice 99 0 SGD
        , ProductPrice 69 0 USD
        , ProductPrice 9500 0 JPY
        , ProductPrice 59 0 GBP
        , ProductPrice 259 0 AED
        , ProductPrice 99 0 NZD
        ]
        [ DimensionValue "caramel" (Dimension "Color")
        , DimensionValue "facebook" (Dimension "Product Feed")
        , DimensionValue "google_shopping" (Dimension "Product Feed")
        , DimensionValue "instagram" (Dimension "Product Feed")
        , DimensionValue "rakuten_affiliate" (Dimension "Product Feed")
        , DimensionValue "Unisex Wallet" (Dimension "Product Range")
        , DimensionValue "Card Holder" (Dimension "Product Style")
        , DimensionValue "Wallet" (Dimension "Product Type")
        , DimensionValue "small" (Dimension "Shipping Sizes")
        , DimensionValue "default" (Dimension "Size")
        , DimensionValue "12 or less cards" (Dimension "Storage")
        , DimensionValue "12+ cards" (Dimension "Storage")
        , DimensionValue "Bills" (Dimension "Storage")
        , DimensionValue "Cards" (Dimension "Storage")
        , DimensionValue "ECHA" (Dimension "Style")
        ]
    , Product
        (ProductSku "ECHA-GRA-107")
        (ProductName "Card Holder - Graphite")
        [ ProductPrice 89 0 AUD
        , ProductPrice 85 0 CAD
        , ProductPrice 69 0 EUR
        , ProductPrice 9500 0 JPY
        , ProductPrice 99 0 SGD
        , ProductPrice 69 0 USD
        , ProductPrice 59 0 GBP
        , ProductPrice 550 0 HKD
        , ProductPrice 259 0 AED
        , ProductPrice 99 0 NZD
        ]
        [ DimensionValue "graphite" (Dimension "Color")
        , DimensionValue "facebook" (Dimension "Product Feed")
        , DimensionValue "google_shopping" (Dimension "Product Feed")
        , DimensionValue "instagram" (Dimension "Product Feed")
        , DimensionValue "rakuten_affiliate" (Dimension "Product Feed")
        , DimensionValue "Unisex Wallet" (Dimension "Product Range")
        , DimensionValue "Card Holder" (Dimension "Product Style")
        , DimensionValue "Wallet" (Dimension "Product Type")
        , DimensionValue "small" (Dimension "Shipping Sizes")
        , DimensionValue "default" (Dimension "Size")
        , DimensionValue "12 or less cards" (Dimension "Storage")
        , DimensionValue "12+ cards" (Dimension "Storage")
        , DimensionValue "Bills" (Dimension "Storage")
        , DimensionValue "Cards" (Dimension "Storage")
        , DimensionValue "ECHA" (Dimension "Style")
        ]
    , Product
        (ProductSku "ECHA-NAV-101")
        (ProductName "Card Holder - Navy")
        [ ProductPrice 550 0 HKD
        , ProductPrice 89 0 AUD
        , ProductPrice 85 0 CAD
        , ProductPrice 69 0 EUR
        , ProductPrice 9500 0 JPY
        , ProductPrice 99 0 SGD
        , ProductPrice 69 0 USD
        , ProductPrice 59 0 GBP
        , ProductPrice 259 0 AED
        , ProductPrice 99 0 NZD
        ]
        [ DimensionValue "navy" (Dimension "Color")
        , DimensionValue "facebook" (Dimension "Product Feed")
        , DimensionValue "google_shopping" (Dimension "Product Feed")
        , DimensionValue "instagram" (Dimension "Product Feed")
        , DimensionValue "rakuten_affiliate" (Dimension "Product Feed")
        , DimensionValue "Unisex Wallet" (Dimension "Product Range")
        , DimensionValue "Card Holder" (Dimension "Product Style")
        , DimensionValue "Wallet" (Dimension "Product Type")
        , DimensionValue "small" (Dimension "Shipping Sizes")
        , DimensionValue "default" (Dimension "Size")
        , DimensionValue "12 or less cards" (Dimension "Storage")
        , DimensionValue "12+ cards" (Dimension "Storage")
        , DimensionValue "Bills" (Dimension "Storage")
        , DimensionValue "Cards" (Dimension "Storage")
        , DimensionValue "ECHA" (Dimension "Style")
        ]
    , Product
        (ProductSku "ECPA-BLK-203")
        (ProductName "Classic Pouch - Black")
        [ ProductPrice 390 0 HKD
        , ProductPrice 65 0 AUD
        , ProductPrice 59 0 CAD
        , ProductPrice 49 0 EUR
        , ProductPrice 69 0 SGD
        , ProductPrice 49 0 USD
        , ProductPrice 45 0 GBP
        , ProductPrice 6800 0 JPY
        , ProductPrice 189 0 AED
        , ProductPrice 69 0 NZD
        ]
        [ DimensionValue "black" (Dimension "Color")
        , DimensionValue "polycanvas" (Dimension "Material")
        , DimensionValue "facebook" (Dimension "Product Feed")
        , DimensionValue "google_shopping" (Dimension "Product Feed")
        , DimensionValue "instagram" (Dimension "Product Feed")
        , DimensionValue "rakuten_affiliate" (Dimension "Product Feed")
        , DimensionValue "Pouch" (Dimension "Product Range")
        , DimensionValue "Classic Pouch" (Dimension "Product Style")
        , DimensionValue "Work Accessories" (Dimension "Product Type")
        , DimensionValue "small" (Dimension "Shipping Sizes")
        , DimensionValue "ECPA" (Dimension "Style")
        ]
    , Product
        (ProductSku "ECPA-BNE-208")
        (ProductName "Classic Pouch - Blue Neon")
        [ ProductPrice 390 0 HKD
        , ProductPrice 65 0 AUD
        , ProductPrice 59 0 CAD
        , ProductPrice 49 0 EUR
        , ProductPrice 6800 0 JPY
        , ProductPrice 69 0 SGD
        , ProductPrice 49 0 USD
        , ProductPrice 45 0 GBP
        , ProductPrice 189 0 AED
        , ProductPrice 69 0 NZD
        ]
        [ DimensionValue "blue_neon" (Dimension "Color")
        , DimensionValue "dura_nylon" (Dimension "Material")
        , DimensionValue "facebook" (Dimension "Product Feed")
        , DimensionValue "google_shopping" (Dimension "Product Feed")
        , DimensionValue "instagram" (Dimension "Product Feed")
        , DimensionValue "rakuten_affiliate" (Dimension "Product Feed")
        , DimensionValue "Pouch" (Dimension "Product Range")
        , DimensionValue "Classic Pouch" (Dimension "Product Style")
        , DimensionValue "Work Accessories" (Dimension "Product Type")
        , DimensionValue "small" (Dimension "Shipping Sizes")
        , DimensionValue "ECPA" (Dimension "Style")
        ]
    , Product
        (ProductSku "ECPA-CHA-210")
        (ProductName "Classic Pouch - Charcoal")
        [ ProductPrice 390 0 HKD
        , ProductPrice 65 0 AUD
        , ProductPrice 59 0 CAD
        , ProductPrice 49 0 EUR
        , ProductPrice 6800 0 JPY
        , ProductPrice 69 0 SGD
        , ProductPrice 49 0 USD
        , ProductPrice 45 0 GBP
        , ProductPrice 189 0 AED
        , ProductPrice 69 0 NZD
        ]
        [ DimensionValue "charcoal" (Dimension "Color")
        , DimensionValue "polycanvas_recycled" (Dimension "Material")
        , DimensionValue "facebook" (Dimension "Product Feed")
        , DimensionValue "google_shopping" (Dimension "Product Feed")
        , DimensionValue "instagram" (Dimension "Product Feed")
        , DimensionValue "rakuten_affiliate" (Dimension "Product Feed")
        , DimensionValue "Pouch" (Dimension "Product Range")
        , DimensionValue "Classic Pouch" (Dimension "Product Style")
        , DimensionValue "Work Accessories" (Dimension "Product Type")
        , DimensionValue "small" (Dimension "Shipping Sizes")
        , DimensionValue "ECPA" (Dimension "Style")
        ]
    , Product
        (ProductSku "ECPA-DOC-208")
        (ProductName "Classic Pouch - Desert Ochre")
        [ ProductPrice 390 0 HKD
        , ProductPrice 65 0 AUD
        , ProductPrice 59 0 CAD
        , ProductPrice 49 0 EUR
        , ProductPrice 69 0 SGD
        , ProductPrice 49 0 USD
        , ProductPrice 6800 0 JPY
        , ProductPrice 45 0 GBP
        , ProductPrice 189 0 AED
        , ProductPrice 69 0 NZD
        ]
        [ DimensionValue "desert_ochre" (Dimension "Color")
        , DimensionValue "dura_nylon" (Dimension "Material")
        , DimensionValue "facebook" (Dimension "Product Feed")
        , DimensionValue "google_shopping" (Dimension "Product Feed")
        , DimensionValue "instagram" (Dimension "Product Feed")
        , DimensionValue "rakuten_affiliate" (Dimension "Product Feed")
        , DimensionValue "Pouch" (Dimension "Product Range")
        , DimensionValue "Classic Pouch" (Dimension "Product Style")
        , DimensionValue "Work Accessories" (Dimension "Product Type")
        , DimensionValue "small" (Dimension "Shipping Sizes")
        , DimensionValue "ECPA" (Dimension "Style")
        ]
    , Product
        (ProductSku "ECPA-FOR-211")
        (ProductName "Classic Pouch - Forest")
        [ ProductPrice 390 0 HKD
        , ProductPrice 65 0 AUD
        , ProductPrice 59 0 CAD
        , ProductPrice 49 0 EUR
        , ProductPrice 6800 0 JPY
        , ProductPrice 69 0 SGD
        , ProductPrice 49 0 USD
        , ProductPrice 45 0 GBP
        , ProductPrice 189 0 AED
        , ProductPrice 69 0 NZD
        ]
        [ DimensionValue "forest" (Dimension "Color")
        , DimensionValue "ripstop_recycled" (Dimension "Material")
        , DimensionValue "facebook" (Dimension "Product Feed")
        , DimensionValue "google_shopping" (Dimension "Product Feed")
        , DimensionValue "instagram" (Dimension "Product Feed")
        , DimensionValue "rakuten_affiliate" (Dimension "Product Feed")
        , DimensionValue "Pouch" (Dimension "Product Range")
        , DimensionValue "Classic Pouch" (Dimension "Product Style")
        , DimensionValue "Work Accessories" (Dimension "Product Type")
        , DimensionValue "small" (Dimension "Shipping Sizes")
        , DimensionValue "ECPA" (Dimension "Style")
        ]
    , Product
        (ProductSku "ECPA-MGR-203")
        (ProductName "Classic Pouch - Mid Grey")
        [ ProductPrice 390 0 HKD
        , ProductPrice 65 0 AUD
        , ProductPrice 59 0 CAD
        , ProductPrice 49 0 EUR
        , ProductPrice 69 0 SGD
        , ProductPrice 49 0 USD
        , ProductPrice 45 0 GBP
        , ProductPrice 6800 0 JPY
        , ProductPrice 189 0 AED
        , ProductPrice 69 0 NZD
        ]
        [ DimensionValue "mid_grey" (Dimension "Color")
        , DimensionValue "polycanvas" (Dimension "Material")
        , DimensionValue "facebook" (Dimension "Product Feed")
        , DimensionValue "google_shopping" (Dimension "Product Feed")
        , DimensionValue "instagram" (Dimension "Product Feed")
        , DimensionValue "rakuten_affiliate" (Dimension "Product Feed")
        , DimensionValue "Pouch" (Dimension "Product Range")
        , DimensionValue "Classic Pouch" (Dimension "Product Style")
        , DimensionValue "Work Accessories" (Dimension "Product Type")
        , DimensionValue "small" (Dimension "Shipping Sizes")
        , DimensionValue "ECPA" (Dimension "Style")
        ]
    , Product
        (ProductSku "ECPA-ROC-203")
        (ProductName "Classic Pouch - Red Ochre")
        [ ProductPrice 390 0 HKD
        , ProductPrice 65 0 AUD
        , ProductPrice 59 0 CAD
        , ProductPrice 49 0 EUR
        , ProductPrice 69 0 SGD
        , ProductPrice 49 0 USD
        , ProductPrice 45 0 GBP
        , ProductPrice 6800 0 JPY
        , ProductPrice 189 0 AED
        , ProductPrice 69 0 NZD
        ]
        [ DimensionValue "red_ochre" (Dimension "Color")
        , DimensionValue "polycanvas" (Dimension "Material")
        , DimensionValue "facebook" (Dimension "Product Feed")
        , DimensionValue "google_shopping" (Dimension "Product Feed")
        , DimensionValue "instagram" (Dimension "Product Feed")
        , DimensionValue "rakuten_affiliate" (Dimension "Product Feed")
        , DimensionValue "Pouch" (Dimension "Product Range")
        , DimensionValue "Classic Pouch" (Dimension "Product Style")
        , DimensionValue "Work Accessories" (Dimension "Product Type")
        , DimensionValue "small" (Dimension "Shipping Sizes")
        , DimensionValue "ECPA" (Dimension "Style")
        ]
    , Product
        (ProductSku "EDKA-BLK-202")
        (ProductName "Dopp Kit - Black")
        [ ProductPrice 430 0 HKD
        , ProductPrice 75 0 AUD
        , ProductPrice 69 0 CAD
        , ProductPrice 55 0 EUR
        , ProductPrice 45 0 GBP
        , ProductPrice 7500 0 JPY
        , ProductPrice 79 0 SGD
        , ProductPrice 55 0 USD
        , ProductPrice 209 0 AED
        , ProductPrice 79 0 NZD
        ]
        [ DimensionValue "black" (Dimension "Color")
        , DimensionValue "venture_recycled" (Dimension "Material")
        , DimensionValue "facebook" (Dimension "Product Feed")
        , DimensionValue "google_shopping" (Dimension "Product Feed")
        , DimensionValue "instagram" (Dimension "Product Feed")
        , DimensionValue "rakuten_affiliate" (Dimension "Product Feed")
        , DimensionValue "Pouch" (Dimension "Product Range")
        , DimensionValue "Dopp Kit" (Dimension "Product Style")
        , DimensionValue "Work Accessories" (Dimension "Product Type")
        , DimensionValue "small" (Dimension "Shipping Sizes")
        , DimensionValue "EDKA" (Dimension "Style")
        ]
    , Product
        (ProductSku "EDKA-CHA-210")
        (ProductName "Dopp Kit - Charcoal")
        [ ProductPrice 430 0 HKD
        , ProductPrice 75 0 AUD
        , ProductPrice 69 0 CAD
        , ProductPrice 55 0 EUR
        , ProductPrice 45 0 GBP
        , ProductPrice 7500 0 JPY
        , ProductPrice 79 0 SGD
        , ProductPrice 55 0 USD
        , ProductPrice 209 0 AED
        , ProductPrice 79 0 NZD
        ]
        [ DimensionValue "charcoal" (Dimension "Color")
        , DimensionValue "polycanvas_recycled" (Dimension "Material")
        , DimensionValue "facebook" (Dimension "Product Feed")
        , DimensionValue "google_shopping" (Dimension "Product Feed")
        , DimensionValue "instagram" (Dimension "Product Feed")
        , DimensionValue "rakuten_affiliate" (Dimension "Product Feed")
        , DimensionValue "Pouch" (Dimension "Product Range")
        , DimensionValue "Dopp Kit" (Dimension "Product Style")
        , DimensionValue "Work Accessories" (Dimension "Product Type")
        , DimensionValue "small" (Dimension "Shipping Sizes")
        , DimensionValue "EDKA" (Dimension "Style")
        ]
    , Product
        (ProductSku "EDKA-IBL-202")
        (ProductName "Dopp Kit - Ink Blue")
        [ ProductPrice 430 0 HKD
        , ProductPrice 75 0 AUD
        , ProductPrice 69 0 CAD
        , ProductPrice 55 0 EUR
        , ProductPrice 45 0 GBP
        , ProductPrice 7500 0 JPY
        , ProductPrice 79 0 SGD
        , ProductPrice 55 0 USD
        , ProductPrice 209 0 AED
        , ProductPrice 79 0 NZD
        ]
        [ DimensionValue "ink_blue" (Dimension "Color")
        , DimensionValue "venture" (Dimension "Material")
        , DimensionValue "facebook" (Dimension "Product Feed")
        , DimensionValue "google_shopping" (Dimension "Product Feed")
        , DimensionValue "instagram" (Dimension "Product Feed")
        , DimensionValue "rakuten_affiliate" (Dimension "Product Feed")
        , DimensionValue "Pouch" (Dimension "Product Range")
        , DimensionValue "Dopp Kit" (Dimension "Product Style")
        , DimensionValue "Work Accessories" (Dimension "Product Type")
        , DimensionValue "small" (Dimension "Shipping Sizes")
        , DimensionValue "EDKA" (Dimension "Style")
        ]
    , Product
        (ProductSku "EKCA-CARAMEL")
        (ProductName "Key Cover – Previous Design - Caramel")
        [ ProductPrice 129 0 AED
        , ProductPrice 50 0 NZD
        , ProductPrice 45 0 AUD
        , ProductPrice 45 0 CAD
        , ProductPrice 35 0 EUR
        , ProductPrice 30 0 GBP
        , ProductPrice 4900 0 JPY
        , ProductPrice 50 0 SGD
        , ProductPrice 35 0 USD
        , ProductPrice 290 0 HKD
        ]
        [ DimensionValue "caramel" (Dimension "Color")
        , DimensionValue "leather" (Dimension "Material")
        , DimensionValue "facebook" (Dimension "Product Feed")
        , DimensionValue "google_shopping" (Dimension "Product Feed")
        , DimensionValue "instagram" (Dimension "Product Feed")
        , DimensionValue "rakuten_affiliate" (Dimension "Product Feed")
        , DimensionValue "Key Cover" (Dimension "Product Range")
        , DimensionValue "Key Cover" (Dimension "Product Style")
        , DimensionValue "Key Cover" (Dimension "Product Type")
        , DimensionValue "small" (Dimension "Shipping Sizes")
        , DimensionValue "standard" (Dimension "Size")
        , DimensionValue "Keys" (Dimension "Storage")
        , DimensionValue "EKCA" (Dimension "Style")
        ]
    , Product
        (ProductSku "EKCA-COA-101")
        (ProductName "Key Cover – Previous Design - Cocoa")
        [ ProductPrice 129 0 AED
        , ProductPrice 50 0 NZD
        , ProductPrice 45 0 AUD
        , ProductPrice 45 0 CAD
        , ProductPrice 35 0 EUR
        , ProductPrice 30 0 GBP
        , ProductPrice 4900 0 JPY
        , ProductPrice 50 0 SGD
        , ProductPrice 35 0 USD
        , ProductPrice 290 0 HKD
        ]
        [ DimensionValue "cocoa" (Dimension "Color")
        , DimensionValue "leather" (Dimension "Material")
        , DimensionValue "facebook" (Dimension "Product Feed")
        , DimensionValue "google_shopping" (Dimension "Product Feed")
        , DimensionValue "instagram" (Dimension "Product Feed")
        , DimensionValue "rakuten_affiliate" (Dimension "Product Feed")
        , DimensionValue "Key Cover" (Dimension "Product Range")
        , DimensionValue "Key Cover" (Dimension "Product Style")
        , DimensionValue "Key Cover" (Dimension "Product Type")
        , DimensionValue "small" (Dimension "Shipping Sizes")
        , DimensionValue "standard" (Dimension "Size")
        , DimensionValue "EKCA" (Dimension "Style")
        ]
    , Product
        (ProductSku "EKCA-GRA-107")
        (ProductName "Key Cover – Previous Design - Graphite")
        [ ProductPrice 45 0 AUD
        , ProductPrice 129 0 AED
        , ProductPrice 50 0 NZD
        , ProductPrice 45 0 CAD
        , ProductPrice 35 0 EUR
        , ProductPrice 30 0 GBP
        , ProductPrice 4900 0 JPY
        , ProductPrice 50 0 SGD
        , ProductPrice 35 0 USD
        , ProductPrice 290 0 HKD
        ]
        [ DimensionValue "graphite" (Dimension "Color")
        , DimensionValue "leather" (Dimension "Material")
        , DimensionValue "facebook" (Dimension "Product Feed")
        , DimensionValue "google_shopping" (Dimension "Product Feed")
        , DimensionValue "instagram" (Dimension "Product Feed")
        , DimensionValue "rakuten_affiliate" (Dimension "Product Feed")
        , DimensionValue "Key Cover" (Dimension "Product Range")
        , DimensionValue "Key Cover" (Dimension "Product Style")
        , DimensionValue "Key Cover" (Dimension "Product Type")
        , DimensionValue "small" (Dimension "Shipping Sizes")
        , DimensionValue "standard" (Dimension "Size")
        , DimensionValue "EKCA" (Dimension "Style")
        ]
    , Product
        (ProductSku "EKCA-NAV-101")
        (ProductName "Key Cover – Previous Design - Navy")
        [ ProductPrice 129 0 AED
        , ProductPrice 50 0 NZD
        , ProductPrice 45 0 AUD
        , ProductPrice 45 0 CAD
        , ProductPrice 35 0 EUR
        , ProductPrice 30 0 GBP
        , ProductPrice 4900 0 JPY
        , ProductPrice 50 0 SGD
        , ProductPrice 35 0 USD
        , ProductPrice 290 0 HKD
        ]
        [ DimensionValue "navy" (Dimension "Color")
        , DimensionValue "leather" (Dimension "Material")
        , DimensionValue "facebook" (Dimension "Product Feed")
        , DimensionValue "google_shopping" (Dimension "Product Feed")
        , DimensionValue "instagram" (Dimension "Product Feed")
        , DimensionValue "rakuten_affiliate" (Dimension "Product Feed")
        , DimensionValue "Key Cover" (Dimension "Product Range")
        , DimensionValue "Key Cover" (Dimension "Product Style")
        , DimensionValue "Key Cover" (Dimension "Product Type")
        , DimensionValue "small" (Dimension "Shipping Sizes")
        , DimensionValue "standard" (Dimension "Size")
        , DimensionValue "EKCA" (Dimension "Style")
        ]
    , Product
        (ProductSku "EKCA-TAG-101")
        (ProductName "Key Cover – Previous Design - Tangelo")
        [ ProductPrice 45 0 AUD
        , ProductPrice 129 0 AED
        , ProductPrice 50 0 NZD
        , ProductPrice 45 0 CAD
        , ProductPrice 35 0 EUR
        , ProductPrice 30 0 GBP
        , ProductPrice 4900 0 JPY
        , ProductPrice 50 0 SGD
        , ProductPrice 35 0 USD
        , ProductPrice 290 0 HKD
        ]
        [ DimensionValue "tangelo" (Dimension "Color")
        , DimensionValue "leather" (Dimension "Material")
        , DimensionValue "facebook" (Dimension "Product Feed")
        , DimensionValue "google_shopping" (Dimension "Product Feed")
        , DimensionValue "instagram" (Dimension "Product Feed")
        , DimensionValue "rakuten_affiliate" (Dimension "Product Feed")
        , DimensionValue "Key Cover" (Dimension "Product Range")
        , DimensionValue "Key Cover" (Dimension "Product Style")
        , DimensionValue "Key Cover" (Dimension "Product Type")
        , DimensionValue "small" (Dimension "Shipping Sizes")
        , DimensionValue "standard" (Dimension "Size")
        , DimensionValue "Keys" (Dimension "Storage")
        , DimensionValue "EKCA" (Dimension "Style")
        ]
    , Product
        (ProductSku "EKCB-BLACK")
        (ProductName "Key Cover – Previous Design - Black")
        [ ProductPrice 290 0 HKD
        , ProductPrice 55 0 AUD
        , ProductPrice 50 0 CAD
        , ProductPrice 149 0 AED
        , ProductPrice 55 0 NZD
        , ProductPrice 39 0 EUR
        , ProductPrice 35 0 GBP
        , ProductPrice 5400 0 JPY
        , ProductPrice 55 0 SGD
        , ProductPrice 39 0 USD
        ]
        [ DimensionValue "black" (Dimension "Color")
        , DimensionValue "leather" (Dimension "Material")
        , DimensionValue "facebook" (Dimension "Product Feed")
        , DimensionValue "google_shopping" (Dimension "Product Feed")
        , DimensionValue "instagram" (Dimension "Product Feed")
        , DimensionValue "rakuten_affiliate" (Dimension "Product Feed")
        , DimensionValue "Key Cover" (Dimension "Product Range")
        , DimensionValue "Key Cover Plus" (Dimension "Product Style")
        , DimensionValue "Key Cover" (Dimension "Product Type")
        , DimensionValue "small" (Dimension "Shipping Sizes")
        , DimensionValue "plus" (Dimension "Size")
        , DimensionValue "Keys" (Dimension "Storage")
        , DimensionValue "EKCA" (Dimension "Style")
        ]
    , Product
        (ProductSku "EKCB-CARAMEL")
        (ProductName "Key Cover – Previous Design - Caramel")
        [ ProductPrice 149 0 AED
        , ProductPrice 55 0 NZD
        , ProductPrice 55 0 AUD
        , ProductPrice 50 0 CAD
        , ProductPrice 39 0 EUR
        , ProductPrice 35 0 GBP
        , ProductPrice 5400 0 JPY
        , ProductPrice 55 0 SGD
        , ProductPrice 39 0 USD
        , ProductPrice 290 0 HKD
        ]
        [ DimensionValue "caramel" (Dimension "Color")
        , DimensionValue "leather" (Dimension "Material")
        , DimensionValue "facebook" (Dimension "Product Feed")
        , DimensionValue "google_shopping" (Dimension "Product Feed")
        , DimensionValue "instagram" (Dimension "Product Feed")
        , DimensionValue "rakuten_affiliate" (Dimension "Product Feed")
        , DimensionValue "Key Cover" (Dimension "Product Range")
        , DimensionValue "Key Cover Plus" (Dimension "Product Style")
        , DimensionValue "Key Cover" (Dimension "Product Type")
        , DimensionValue "small" (Dimension "Shipping Sizes")
        , DimensionValue "plus" (Dimension "Size")
        , DimensionValue "Keys" (Dimension "Storage")
        , DimensionValue "EKCA" (Dimension "Style")
        ]
    , Product
        (ProductSku "EKCB-COA-101")
        (ProductName "Key Cover – Previous Design - Cocoa")
        [ ProductPrice 290 0 HKD
        , ProductPrice 5400 0 JPY
        , ProductPrice 149 0 AED
        , ProductPrice 55 0 NZD
        , ProductPrice 55 0 AUD
        , ProductPrice 50 0 CAD
        , ProductPrice 39 0 EUR
        , ProductPrice 35 0 GBP
        , ProductPrice 55 0 SGD
        , ProductPrice 39 0 USD
        ]
        [ DimensionValue "cocoa" (Dimension "Color")
        , DimensionValue "leather" (Dimension "Material")
        , DimensionValue "facebook" (Dimension "Product Feed")
        , DimensionValue "google_shopping" (Dimension "Product Feed")
        , DimensionValue "instagram" (Dimension "Product Feed")
        , DimensionValue "rakuten_affiliate" (Dimension "Product Feed")
        , DimensionValue "Key Cover" (Dimension "Product Range")
        , DimensionValue "Key Cover Plus" (Dimension "Product Style")
        , DimensionValue "Key Cover" (Dimension "Product Type")
        , DimensionValue "small" (Dimension "Shipping Sizes")
        , DimensionValue "plus" (Dimension "Size")
        , DimensionValue "EKCA" (Dimension "Style")
        ]
    , Product
        (ProductSku "EKCB-GRA-107")
        (ProductName "Key Cover – Previous Design - Graphite")
        [ ProductPrice 55 0 AUD
        , ProductPrice 50 0 CAD
        , ProductPrice 39 0 EUR
        , ProductPrice 35 0 GBP
        , ProductPrice 5400 0 JPY
        , ProductPrice 55 0 SGD
        , ProductPrice 149 0 AED
        , ProductPrice 55 0 NZD
        , ProductPrice 39 0 USD
        , ProductPrice 290 0 HKD
        ]
        [ DimensionValue "graphite" (Dimension "Color")
        , DimensionValue "leather" (Dimension "Material")
        , DimensionValue "facebook" (Dimension "Product Feed")
        , DimensionValue "google_shopping" (Dimension "Product Feed")
        , DimensionValue "instagram" (Dimension "Product Feed")
        , DimensionValue "rakuten_affiliate" (Dimension "Product Feed")
        , DimensionValue "Key Cover" (Dimension "Product Range")
        , DimensionValue "Key Cover Plus" (Dimension "Product Style")
        , DimensionValue "Key Cover" (Dimension "Product Type")
        , DimensionValue "small" (Dimension "Shipping Sizes")
        , DimensionValue "plus" (Dimension "Size")
        , DimensionValue "EKCA" (Dimension "Style")
        ]
    , Product
        (ProductSku "EKCB-NAV-101")
        (ProductName "Key Cover – Previous Design - Navy")
        [ ProductPrice 290 0 HKD
        , ProductPrice 5400 0 JPY
        , ProductPrice 35 0 GBP
        , ProductPrice 149 0 AED
        , ProductPrice 55 0 NZD
        , ProductPrice 55 0 AUD
        , ProductPrice 50 0 CAD
        , ProductPrice 39 0 EUR
        , ProductPrice 55 0 SGD
        , ProductPrice 39 0 USD
        ]
        [ DimensionValue "navy" (Dimension "Color")
        , DimensionValue "leather" (Dimension "Material")
        , DimensionValue "facebook" (Dimension "Product Feed")
        , DimensionValue "google_shopping" (Dimension "Product Feed")
        , DimensionValue "instagram" (Dimension "Product Feed")
        , DimensionValue "rakuten_affiliate" (Dimension "Product Feed")
        , DimensionValue "Key Cover" (Dimension "Product Range")
        , DimensionValue "Key Cover Plus" (Dimension "Product Style")
        , DimensionValue "Key Cover" (Dimension "Product Type")
        , DimensionValue "small" (Dimension "Shipping Sizes")
        , DimensionValue "plus" (Dimension "Size")
        , DimensionValue "EKCA" (Dimension "Style")
        ]
    , Product
        (ProductSku "EKCC-BLK-101")
        (ProductName "Key Cover - Black")
        [ ProductPrice 59 0 AUD
        , ProductPrice 55 0 CAD
        , ProductPrice 45 0 EUR
        , ProductPrice 39 0 GBP
        , ProductPrice 6200 0 JPY
        , ProductPrice 65 0 SGD
        , ProductPrice 45 0 USD
        , ProductPrice 350 0 HKD
        , ProductPrice 50 0 NZD
        , ProductPrice 129 0 AED
        ]
        [ DimensionValue "black" (Dimension "Color")
        , DimensionValue "leather" (Dimension "Material")
        , DimensionValue "facebook" (Dimension "Product Feed")
        , DimensionValue "google_shopping" (Dimension "Product Feed")
        , DimensionValue "instagram" (Dimension "Product Feed")
        , DimensionValue "rakuten_affiliate" (Dimension "Product Feed")
        , DimensionValue "Key Cover" (Dimension "Product Range")
        , DimensionValue "Key Cover" (Dimension "Product Style")
        , DimensionValue "Key Cover" (Dimension "Product Type")
        , DimensionValue "small" (Dimension "Shipping Sizes")
        , DimensionValue "standard" (Dimension "Size")
        , DimensionValue "EKCC" (Dimension "Style")
        ]
    , Product
        (ProductSku "EKCC-CAR-101")
        (ProductName "Key Cover - Caramel")
        [ ProductPrice 59 0 AUD
        , ProductPrice 55 0 CAD
        , ProductPrice 45 0 EUR
        , ProductPrice 39 0 GBP
        , ProductPrice 6200 0 JPY
        , ProductPrice 65 0 SGD
        , ProductPrice 45 0 USD
        , ProductPrice 350 0 HKD
        , ProductPrice 50 0 NZD
        , ProductPrice 129 0 AED
        ]
        [ DimensionValue "caramel" (Dimension "Color")
        , DimensionValue "leather" (Dimension "Material")
        , DimensionValue "facebook" (Dimension "Product Feed")
        , DimensionValue "google_shopping" (Dimension "Product Feed")
        , DimensionValue "instagram" (Dimension "Product Feed")
        , DimensionValue "rakuten_affiliate" (Dimension "Product Feed")
        , DimensionValue "Key Cover" (Dimension "Product Range")
        , DimensionValue "Key Cover" (Dimension "Product Style")
        , DimensionValue "Key Cover" (Dimension "Product Type")
        , DimensionValue "small" (Dimension "Shipping Sizes")
        , DimensionValue "standard" (Dimension "Size")
        , DimensionValue "EKCC" (Dimension "Style")
        ]
    , Product
        (ProductSku "EKCC-COA-101")
        (ProductName "Key Cover - Cocoa")
        [ ProductPrice 59 0 AUD
        , ProductPrice 55 0 CAD
        , ProductPrice 45 0 EUR
        , ProductPrice 39 0 GBP
        , ProductPrice 6200 0 JPY
        , ProductPrice 65 0 SGD
        , ProductPrice 45 0 USD
        , ProductPrice 350 0 HKD
        , ProductPrice 50 0 NZD
        , ProductPrice 129 0 AED
        ]
        [ DimensionValue "cocoa" (Dimension "Color")
        , DimensionValue "leather" (Dimension "Material")
        , DimensionValue "facebook" (Dimension "Product Feed")
        , DimensionValue "google_shopping" (Dimension "Product Feed")
        , DimensionValue "instagram" (Dimension "Product Feed")
        , DimensionValue "rakuten_affiliate" (Dimension "Product Feed")
        , DimensionValue "Key Cover" (Dimension "Product Range")
        , DimensionValue "Key Cover" (Dimension "Product Style")
        , DimensionValue "Key Cover" (Dimension "Product Type")
        , DimensionValue "small" (Dimension "Shipping Sizes")
        , DimensionValue "standard" (Dimension "Size")
        , DimensionValue "EKCC" (Dimension "Style")
        ]
    , Product
        (ProductSku "EKCC-GRA-107")
        (ProductName "Key Cover - Graphite")
        [ ProductPrice 59 0 AUD
        , ProductPrice 55 0 CAD
        , ProductPrice 45 0 EUR
        , ProductPrice 39 0 GBP
        , ProductPrice 6200 0 JPY
        , ProductPrice 65 0 SGD
        , ProductPrice 45 0 USD
        , ProductPrice 350 0 HKD
        , ProductPrice 50 0 NZD
        , ProductPrice 129 0 AED
        ]
        [ DimensionValue "graphite" (Dimension "Color")
        , DimensionValue "leather" (Dimension "Material")
        , DimensionValue "facebook" (Dimension "Product Feed")
        , DimensionValue "google_shopping" (Dimension "Product Feed")
        , DimensionValue "instagram" (Dimension "Product Feed")
        , DimensionValue "rakuten_affiliate" (Dimension "Product Feed")
        , DimensionValue "Key Cover" (Dimension "Product Range")
        , DimensionValue "Key Cover" (Dimension "Product Style")
        , DimensionValue "Key Cover" (Dimension "Product Type")
        , DimensionValue "small" (Dimension "Shipping Sizes")
        , DimensionValue "standard" (Dimension "Size")
        , DimensionValue "EKCC" (Dimension "Style")
        ]
    , Product
        (ProductSku "EKCC-NAV-101")
        (ProductName "Key Cover - Navy")
        [ ProductPrice 59 0 AUD
        , ProductPrice 55 0 CAD
        , ProductPrice 45 0 EUR
        , ProductPrice 39 0 GBP
        , ProductPrice 6200 0 JPY
        , ProductPrice 65 0 SGD
        , ProductPrice 45 0 USD
        , ProductPrice 350 0 HKD
        , ProductPrice 50 0 NZD
        , ProductPrice 129 0 AED
        ]
        [ DimensionValue "navy" (Dimension "Color")
        , DimensionValue "leather" (Dimension "Material")
        , DimensionValue "facebook" (Dimension "Product Feed")
        , DimensionValue "google_shopping" (Dimension "Product Feed")
        , DimensionValue "instagram" (Dimension "Product Feed")
        , DimensionValue "rakuten_affiliate" (Dimension "Product Feed")
        , DimensionValue "Key Cover" (Dimension "Product Range")
        , DimensionValue "Key Cover" (Dimension "Product Style")
        , DimensionValue "Key Cover" (Dimension "Product Type")
        , DimensionValue "small" (Dimension "Shipping Sizes")
        , DimensionValue "standard" (Dimension "Size")
        , DimensionValue "EKCC" (Dimension "Style")
        ]
    , Product
        (ProductSku "EKCD-BLK-101")
        (ProductName "Key Cover - Black")
        [ ProductPrice 69 0 AUD
        , ProductPrice 65 0 CAD
        , ProductPrice 49 0 EUR
        , ProductPrice 45 0 GBP
        , ProductPrice 6800 0 JPY
        , ProductPrice 69 0 SGD
        , ProductPrice 49 0 USD
        , ProductPrice 390 0 HKD
        , ProductPrice 55 0 NZD
        , ProductPrice 149 0 AED
        ]
        [ DimensionValue "black" (Dimension "Color")
        , DimensionValue "leather" (Dimension "Material")
        , DimensionValue "facebook" (Dimension "Product Feed")
        , DimensionValue "google_shopping" (Dimension "Product Feed")
        , DimensionValue "instagram" (Dimension "Product Feed")
        , DimensionValue "rakuten_affiliate" (Dimension "Product Feed")
        , DimensionValue "Key Cover" (Dimension "Product Range")
        , DimensionValue "Key Cover Plus" (Dimension "Product Style")
        , DimensionValue "Key Cover" (Dimension "Product Type")
        , DimensionValue "small" (Dimension "Shipping Sizes")
        , DimensionValue "plus" (Dimension "Size")
        , DimensionValue "EKCC" (Dimension "Style")
        ]
    , Product
        (ProductSku "EKCD-CAR-101")
        (ProductName "Key Cover - Caramel")
        [ ProductPrice 69 0 AUD
        , ProductPrice 65 0 CAD
        , ProductPrice 49 0 EUR
        , ProductPrice 45 0 GBP
        , ProductPrice 6800 0 JPY
        , ProductPrice 69 0 SGD
        , ProductPrice 49 0 USD
        , ProductPrice 390 0 HKD
        , ProductPrice 55 0 NZD
        , ProductPrice 149 0 AED
        ]
        [ DimensionValue "caramel" (Dimension "Color")
        , DimensionValue "leather" (Dimension "Material")
        , DimensionValue "facebook" (Dimension "Product Feed")
        , DimensionValue "google_shopping" (Dimension "Product Feed")
        , DimensionValue "instagram" (Dimension "Product Feed")
        , DimensionValue "rakuten_affiliate" (Dimension "Product Feed")
        , DimensionValue "Key Cover" (Dimension "Product Range")
        , DimensionValue "Key Cover Plus" (Dimension "Product Style")
        , DimensionValue "Key Cover" (Dimension "Product Type")
        , DimensionValue "small" (Dimension "Shipping Sizes")
        , DimensionValue "plus" (Dimension "Size")
        , DimensionValue "EKCC" (Dimension "Style")
        ]
    , Product
        (ProductSku "EKCD-COA-101")
        (ProductName "Key Cover - Cocoa")
        [ ProductPrice 69 0 AUD
        , ProductPrice 65 0 CAD
        , ProductPrice 49 0 EUR
        , ProductPrice 45 0 GBP
        , ProductPrice 6800 0 JPY
        , ProductPrice 69 0 SGD
        , ProductPrice 49 0 USD
        , ProductPrice 390 0 HKD
        , ProductPrice 55 0 NZD
        , ProductPrice 149 0 AED
        ]
        [ DimensionValue "cocoa" (Dimension "Color")
        , DimensionValue "leather" (Dimension "Material")
        , DimensionValue "facebook" (Dimension "Product Feed")
        , DimensionValue "google_shopping" (Dimension "Product Feed")
        , DimensionValue "instagram" (Dimension "Product Feed")
        , DimensionValue "rakuten_affiliate" (Dimension "Product Feed")
        , DimensionValue "Key Cover" (Dimension "Product Range")
        , DimensionValue "Key Cover Plus" (Dimension "Product Style")
        , DimensionValue "Key Cover" (Dimension "Product Type")
        , DimensionValue "small" (Dimension "Shipping Sizes")
        , DimensionValue "plus" (Dimension "Size")
        , DimensionValue "EKCC" (Dimension "Style")
        ]
    , Product
        (ProductSku "EKCD-GRA-107")
        (ProductName "Key Cover - Graphite")
        [ ProductPrice 69 0 AUD
        , ProductPrice 65 0 CAD
        , ProductPrice 49 0 EUR
        , ProductPrice 45 0 GBP
        , ProductPrice 6800 0 JPY
        , ProductPrice 69 0 SGD
        , ProductPrice 49 0 USD
        , ProductPrice 390 0 HKD
        , ProductPrice 55 0 NZD
        , ProductPrice 149 0 AED
        ]
        [ DimensionValue "graphite" (Dimension "Color")
        , DimensionValue "leather" (Dimension "Material")
        , DimensionValue "facebook" (Dimension "Product Feed")
        , DimensionValue "google_shopping" (Dimension "Product Feed")
        , DimensionValue "instagram" (Dimension "Product Feed")
        , DimensionValue "rakuten_affiliate" (Dimension "Product Feed")
        , DimensionValue "Key Cover" (Dimension "Product Range")
        , DimensionValue "Key Cover Plus" (Dimension "Product Style")
        , DimensionValue "Key Cover" (Dimension "Product Type")
        , DimensionValue "small" (Dimension "Shipping Sizes")
        , DimensionValue "plus" (Dimension "Size")
        , DimensionValue "EKCC" (Dimension "Style")
        ]
    , Product
        (ProductSku "EKCD-NAV-101")
        (ProductName "Key Cover - Navy")
        [ ProductPrice 69 0 AUD
        , ProductPrice 65 0 CAD
        , ProductPrice 49 0 EUR
        , ProductPrice 45 0 GBP
        , ProductPrice 6800 0 JPY
        , ProductPrice 69 0 SGD
        , ProductPrice 49 0 USD
        , ProductPrice 390 0 HKD
        , ProductPrice 55 0 NZD
        , ProductPrice 149 0 AED
        ]
        [ DimensionValue "navy" (Dimension "Color")
        , DimensionValue "leather" (Dimension "Material")
        , DimensionValue "facebook" (Dimension "Product Feed")
        , DimensionValue "google_shopping" (Dimension "Product Feed")
        , DimensionValue "instagram" (Dimension "Product Feed")
        , DimensionValue "rakuten_affiliate" (Dimension "Product Feed")
        , DimensionValue "Key Cover" (Dimension "Product Range")
        , DimensionValue "Key Cover Plus" (Dimension "Product Style")
        , DimensionValue "Key Cover" (Dimension "Product Type")
        , DimensionValue "small" (Dimension "Shipping Sizes")
        , DimensionValue "plus" (Dimension "Size")
        , DimensionValue "EKCC" (Dimension "Style")
        ]
    , Product
        (ProductSku "ENCC-BLK-101")
        (ProductName "Notebook Cover & Pen - Black")
        [ ProductPrice 780 0 HKD
        , ProductPrice 129 0 AUD
        , ProductPrice 119 0 CAD
        , ProductPrice 99 0 EUR
        , ProductPrice 85 0 GBP
        , ProductPrice 13600 0 JPY
        , ProductPrice 139 0 SGD
        , ProductPrice 99 0 USD
        , ProductPrice 379 0 AED
        , ProductPrice 129 0 NZD
        ]
        [ DimensionValue "black" (Dimension "Color")
        , DimensionValue "leather" (Dimension "Material")
        , DimensionValue "facebook" (Dimension "Product Feed")
        , DimensionValue "google_shopping" (Dimension "Product Feed")
        , DimensionValue "instagram" (Dimension "Product Feed")
        , DimensionValue "rakuten_affiliate" (Dimension "Product Feed")
        , DimensionValue "Writing" (Dimension "Product Range")
        , DimensionValue "Notebook Cover Mini & Pen" (Dimension "Product Style")
        , DimensionValue "Work Accessories" (Dimension "Product Type")
        , DimensionValue "small" (Dimension "Shipping Sizes")
        , DimensionValue "ENCC" (Dimension "Style")
        ]
    , Product
        (ProductSku "ENCC-CAR-101")
        (ProductName "Notebook Cover & Pen - Caramel")
        [ ProductPrice 780 0 HKD
        , ProductPrice 129 0 AUD
        , ProductPrice 119 0 CAD
        , ProductPrice 99 0 EUR
        , ProductPrice 85 0 GBP
        , ProductPrice 13600 0 JPY
        , ProductPrice 139 0 SGD
        , ProductPrice 99 0 USD
        , ProductPrice 379 0 AED
        , ProductPrice 129 0 NZD
        ]
        [ DimensionValue "caramel" (Dimension "Color")
        , DimensionValue "leather" (Dimension "Material")
        , DimensionValue "facebook" (Dimension "Product Feed")
        , DimensionValue "google_shopping" (Dimension "Product Feed")
        , DimensionValue "instagram" (Dimension "Product Feed")
        , DimensionValue "rakuten_affiliate" (Dimension "Product Feed")
        , DimensionValue "Writing" (Dimension "Product Range")
        , DimensionValue "Notebook Cover Mini & Pen" (Dimension "Product Style")
        , DimensionValue "Work Accessories" (Dimension "Product Type")
        , DimensionValue "small" (Dimension "Shipping Sizes")
        , DimensionValue "ENCC" (Dimension "Style")
        ]
    , Product
        (ProductSku "ENCC-GRA-107")
        (ProductName "Notebook Cover & Pen - Graphite")
        [ ProductPrice 780 0 HKD
        , ProductPrice 129 0 AUD
        , ProductPrice 119 0 CAD
        , ProductPrice 99 0 EUR
        , ProductPrice 85 0 GBP
        , ProductPrice 13600 0 JPY
        , ProductPrice 139 0 SGD
        , ProductPrice 99 0 USD
        , ProductPrice 379 0 AED
        , ProductPrice 129 0 NZD
        ]
        [ DimensionValue "graphite" (Dimension "Color")
        , DimensionValue "leather" (Dimension "Material")
        , DimensionValue "facebook" (Dimension "Product Feed")
        , DimensionValue "google_shopping" (Dimension "Product Feed")
        , DimensionValue "instagram" (Dimension "Product Feed")
        , DimensionValue "rakuten_affiliate" (Dimension "Product Feed")
        , DimensionValue "Writing" (Dimension "Product Range")
        , DimensionValue "Notebook Cover Mini & Pen" (Dimension "Product Style")
        , DimensionValue "Work Accessories" (Dimension "Product Type")
        , DimensionValue "small" (Dimension "Shipping Sizes")
        , DimensionValue "ENCC" (Dimension "Style")
        ]
    , Product
        (ProductSku "ENCC-NAV-101")
        (ProductName "Notebook Cover & Pen - Navy")
        [ ProductPrice 780 0 HKD
        , ProductPrice 129 0 AUD
        , ProductPrice 119 0 CAD
        , ProductPrice 99 0 EUR
        , ProductPrice 85 0 GBP
        , ProductPrice 13600 0 JPY
        , ProductPrice 139 0 SGD
        , ProductPrice 99 0 USD
        , ProductPrice 379 0 AED
        , ProductPrice 129 0 NZD
        ]
        [ DimensionValue "navy" (Dimension "Color")
        , DimensionValue "leather" (Dimension "Material")
        , DimensionValue "facebook" (Dimension "Product Feed")
        , DimensionValue "google_shopping" (Dimension "Product Feed")
        , DimensionValue "instagram" (Dimension "Product Feed")
        , DimensionValue "rakuten_affiliate" (Dimension "Product Feed")
        , DimensionValue "Writing" (Dimension "Product Range")
        , DimensionValue "Notebook Cover Mini & Pen" (Dimension "Product Style")
        , DimensionValue "Work Accessories" (Dimension "Product Type")
        , DimensionValue "small" (Dimension "Shipping Sizes")
        , DimensionValue "ENCC" (Dimension "Style")
        ]
    , Product
        (ProductSku "EPCA-BLACK")
        (ProductName "Pencil Case - Black")
        [ ProductPrice 310 0 HKD
        , ProductPrice 49 0 AUD
        , ProductPrice 49 0 CAD
        , ProductPrice 39 0 EUR
        , ProductPrice 59 0 SGD
        , ProductPrice 39 0 USD
        , ProductPrice 5400 0 JPY
        , ProductPrice 35 0 GBP
        , ProductPrice 149 0 AED
        , ProductPrice 55 0 NZD
        ]
        [ DimensionValue "black" (Dimension "Color")
        , DimensionValue "polycanvas" (Dimension "Material")
        , DimensionValue "facebook" (Dimension "Product Feed")
        , DimensionValue "google_shopping" (Dimension "Product Feed")
        , DimensionValue "instagram" (Dimension "Product Feed")
        , DimensionValue "rakuten_affiliate" (Dimension "Product Feed")
        , DimensionValue "Pouch" (Dimension "Product Range")
        , DimensionValue "Pencil Case" (Dimension "Product Style")
        , DimensionValue "Work Accessories" (Dimension "Product Type")
        , DimensionValue "small" (Dimension "Shipping Sizes")
        , DimensionValue "standard" (Dimension "Size")
        , DimensionValue "Keys" (Dimension "Storage")
        , DimensionValue "Pen" (Dimension "Storage")
        , DimensionValue "EPCA" (Dimension "Style")
        ]
    , Product
        (ProductSku "EPCA-BNE-208")
        (ProductName "Pencil Case - Blue Neon")
        [ ProductPrice 310 0 HKD
        , ProductPrice 49 0 AUD
        , ProductPrice 49 0 CAD
        , ProductPrice 39 0 EUR
        , ProductPrice 5400 0 JPY
        , ProductPrice 59 0 SGD
        , ProductPrice 39 0 USD
        , ProductPrice 35 0 GBP
        , ProductPrice 149 0 AED
        , ProductPrice 55 0 NZD
        ]
        [ DimensionValue "blue_neon" (Dimension "Color")
        , DimensionValue "dura_nylon" (Dimension "Material")
        , DimensionValue "facebook" (Dimension "Product Feed")
        , DimensionValue "google_shopping" (Dimension "Product Feed")
        , DimensionValue "instagram" (Dimension "Product Feed")
        , DimensionValue "rakuten_affiliate" (Dimension "Product Feed")
        , DimensionValue "Pouch" (Dimension "Product Range")
        , DimensionValue "Pencil Case" (Dimension "Product Style")
        , DimensionValue "Work Accessories" (Dimension "Product Type")
        , DimensionValue "small" (Dimension "Shipping Sizes")
        , DimensionValue "standard" (Dimension "Size")
        , DimensionValue "EPCA" (Dimension "Style")
        ]
    , Product
        (ProductSku "EPCA-CHA-210")
        (ProductName "Pencil Case - Charcoal")
        [ ProductPrice 310 0 HKD
        , ProductPrice 49 0 AUD
        , ProductPrice 49 0 CAD
        , ProductPrice 39 0 EUR
        , ProductPrice 5400 0 JPY
        , ProductPrice 59 0 SGD
        , ProductPrice 39 0 USD
        , ProductPrice 35 0 GBP
        , ProductPrice 149 0 AED
        , ProductPrice 55 0 NZD
        ]
        [ DimensionValue "charcoal" (Dimension "Color")
        , DimensionValue "polycanvas_recycled" (Dimension "Material")
        , DimensionValue "facebook" (Dimension "Product Feed")
        , DimensionValue "google_shopping" (Dimension "Product Feed")
        , DimensionValue "instagram" (Dimension "Product Feed")
        , DimensionValue "rakuten_affiliate" (Dimension "Product Feed")
        , DimensionValue "Pouch" (Dimension "Product Range")
        , DimensionValue "Pencil Case" (Dimension "Product Style")
        , DimensionValue "Work Accessories" (Dimension "Product Type")
        , DimensionValue "small" (Dimension "Shipping Sizes")
        , DimensionValue "standard" (Dimension "Size")
        , DimensionValue "EPCA" (Dimension "Style")
        ]
    , Product
        (ProductSku "EPCA-FOR-211")
        (ProductName "Pencil Case - Forest")
        [ ProductPrice 310 0 HKD
        , ProductPrice 49 0 AUD
        , ProductPrice 49 0 CAD
        , ProductPrice 39 0 EUR
        , ProductPrice 5400 0 JPY
        , ProductPrice 59 0 SGD
        , ProductPrice 39 0 USD
        , ProductPrice 35 0 GBP
        , ProductPrice 149 0 AED
        , ProductPrice 55 0 NZD
        ]
        [ DimensionValue "forest" (Dimension "Color")
        , DimensionValue "ripstop_recycled" (Dimension "Material")
        , DimensionValue "facebook" (Dimension "Product Feed")
        , DimensionValue "google_shopping" (Dimension "Product Feed")
        , DimensionValue "instagram" (Dimension "Product Feed")
        , DimensionValue "rakuten_affiliate" (Dimension "Product Feed")
        , DimensionValue "Pouch" (Dimension "Product Range")
        , DimensionValue "Pencil Case" (Dimension "Product Style")
        , DimensionValue "Work Accessories" (Dimension "Product Type")
        , DimensionValue "small" (Dimension "Shipping Sizes")
        , DimensionValue "standard" (Dimension "Size")
        , DimensionValue "EPCA" (Dimension "Style")
        ]
    , Product
        (ProductSku "EPCA-MIDGREY")
        (ProductName "Pencil Case - Mid Grey")
        [ ProductPrice 310 0 HKD
        , ProductPrice 49 0 AUD
        , ProductPrice 49 0 CAD
        , ProductPrice 39 0 EUR
        , ProductPrice 59 0 SGD
        , ProductPrice 39 0 USD
        , ProductPrice 5400 0 JPY
        , ProductPrice 35 0 GBP
        , ProductPrice 149 0 AED
        , ProductPrice 55 0 NZD
        ]
        [ DimensionValue "mid_grey" (Dimension "Color")
        , DimensionValue "polycanvas" (Dimension "Material")
        , DimensionValue "facebook" (Dimension "Product Feed")
        , DimensionValue "google_shopping" (Dimension "Product Feed")
        , DimensionValue "instagram" (Dimension "Product Feed")
        , DimensionValue "rakuten_affiliate" (Dimension "Product Feed")
        , DimensionValue "Pouch" (Dimension "Product Range")
        , DimensionValue "Pencil Case" (Dimension "Product Style")
        , DimensionValue "Work Accessories" (Dimension "Product Type")
        , DimensionValue "small" (Dimension "Shipping Sizes")
        , DimensionValue "standard" (Dimension "Size")
        , DimensionValue "Keys" (Dimension "Storage")
        , DimensionValue "Pen" (Dimension "Storage")
        , DimensionValue "EPCA" (Dimension "Style")
        ]
    , Product
        (ProductSku "EPCA-NEC-208")
        (ProductName "Pencil Case - Neon Cabernet")
        [ ProductPrice 310 0 HKD
        , ProductPrice 49 0 AUD
        , ProductPrice 49 0 CAD
        , ProductPrice 39 0 EUR
        , ProductPrice 5400 0 JPY
        , ProductPrice 59 0 SGD
        , ProductPrice 39 0 USD
        , ProductPrice 35 0 GBP
        , ProductPrice 149 0 AED
        , ProductPrice 55 0 NZD
        ]
        [ DimensionValue "neon_cabernet" (Dimension "Color")
        , DimensionValue "dura_nylon" (Dimension "Material")
        , DimensionValue "facebook" (Dimension "Product Feed")
        , DimensionValue "google_shopping" (Dimension "Product Feed")
        , DimensionValue "instagram" (Dimension "Product Feed")
        , DimensionValue "rakuten_affiliate" (Dimension "Product Feed")
        , DimensionValue "Pouch" (Dimension "Product Range")
        , DimensionValue "Pencil Case" (Dimension "Product Style")
        , DimensionValue "Work Accessories" (Dimension "Product Type")
        , DimensionValue "small" (Dimension "Shipping Sizes")
        , DimensionValue "standard" (Dimension "Size")
        , DimensionValue "EPCA" (Dimension "Style")
        ]
    , Product
        (ProductSku "ETFA-BLK-101")
        (ProductName "Tech Folio - Black")
        [ ProductPrice 2650 0 HKD
        , ProductPrice 459 0 AUD
        , ProductPrice 419 0 CAD
        , ProductPrice 339 0 EUR
        , ProductPrice 299 0 GBP
        , ProductPrice 45000 0 JPY
        , ProductPrice 465 0 SGD
        , ProductPrice 339 0 USD
        , ProductPrice 1299 0 AED
        , ProductPrice 529 0 NZD
        ]
        [ DimensionValue "black" (Dimension "Color")
        , DimensionValue "leather" (Dimension "Material")
        , DimensionValue "facebook" (Dimension "Product Feed")
        , DimensionValue "google_shopping" (Dimension "Product Feed")
        , DimensionValue "instagram" (Dimension "Product Feed")
        , DimensionValue "rakuten_affiliate" (Dimension "Product Feed")
        , DimensionValue "Sleeve" (Dimension "Product Range")
        , DimensionValue "Tech Folio" (Dimension "Product Style")
        , DimensionValue "Laptop/Tablet Accessories" (Dimension "Product Type")
        , DimensionValue "medium" (Dimension "Shipping Sizes")
        , DimensionValue "ETFA" (Dimension "Style")
        ]
    , Product
        (ProductSku "ETFA-CAR-101")
        (ProductName "Tech Folio - Caramel")
        [ ProductPrice 2650 0 HKD
        , ProductPrice 459 0 AUD
        , ProductPrice 419 0 CAD
        , ProductPrice 339 0 EUR
        , ProductPrice 299 0 GBP
        , ProductPrice 45000 0 JPY
        , ProductPrice 465 0 SGD
        , ProductPrice 339 0 USD
        , ProductPrice 1299 0 AED
        , ProductPrice 529 0 NZD
        ]
        [ DimensionValue "caramel" (Dimension "Color")
        , DimensionValue "leather" (Dimension "Material")
        , DimensionValue "facebook" (Dimension "Product Feed")
        , DimensionValue "google_shopping" (Dimension "Product Feed")
        , DimensionValue "instagram" (Dimension "Product Feed")
        , DimensionValue "rakuten_affiliate" (Dimension "Product Feed")
        , DimensionValue "Sleeve" (Dimension "Product Range")
        , DimensionValue "Tech Folio" (Dimension "Product Style")
        , DimensionValue "Laptop/Tablet Accessories" (Dimension "Product Type")
        , DimensionValue "medium" (Dimension "Shipping Sizes")
        , DimensionValue "ETFA" (Dimension "Style")
        ]
    , Product
        (ProductSku "ETKA-BLK-212")
        (ProductName "Tech Kit - Black")
        [ ProductPrice 85 0 AUD
        , ProductPrice 75 0 CAD
        , ProductPrice 59 0 EUR
        , ProductPrice 49 0 GBP
        , ProductPrice 8100 0 JPY
        , ProductPrice 79 0 SGD
        , ProductPrice 59 0 USD
        , ProductPrice 470 0 HKD
        , ProductPrice 219 0 AED
        , ProductPrice 95 0 NZD
        ]
        [ DimensionValue "black" (Dimension "Color")
        , DimensionValue "ripstop_recycled" (Dimension "Material")
        , DimensionValue "facebook" (Dimension "Product Feed")
        , DimensionValue "google_shopping" (Dimension "Product Feed")
        , DimensionValue "instagram" (Dimension "Product Feed")
        , DimensionValue "rakuten_affiliate" (Dimension "Product Feed")
        , DimensionValue "Pouch" (Dimension "Product Range")
        , DimensionValue "Tech Kit" (Dimension "Product Style")
        , DimensionValue "Work Accessories" (Dimension "Product Type")
        , DimensionValue "small" (Dimension "Shipping Sizes")
        , DimensionValue "ETKA" (Dimension "Style")
        ]
    , Product
        (ProductSku "ETKA-LGR-212")
        (ProductName "Tech Kit - Light Grey")
        [ ProductPrice 85 0 AUD
        , ProductPrice 75 0 CAD
        , ProductPrice 59 0 EUR
        , ProductPrice 49 0 GBP
        , ProductPrice 8100 0 JPY
        , ProductPrice 79 0 SGD
        , ProductPrice 59 0 USD
        , ProductPrice 470 0 HKD
        , ProductPrice 219 0 AED
        , ProductPrice 95 0 NZD
        ]
        [ DimensionValue "light_grey" (Dimension "Color")
        , DimensionValue "ripstop_recycled" (Dimension "Material")
        , DimensionValue "facebook" (Dimension "Product Feed")
        , DimensionValue "google_shopping" (Dimension "Product Feed")
        , DimensionValue "instagram" (Dimension "Product Feed")
        , DimensionValue "rakuten_affiliate" (Dimension "Product Feed")
        , DimensionValue "Pouch" (Dimension "Product Range")
        , DimensionValue "Tech Kit" (Dimension "Product Style")
        , DimensionValue "Work Accessories" (Dimension "Product Type")
        , DimensionValue "small" (Dimension "Shipping Sizes")
        , DimensionValue "ETKA" (Dimension "Style")
        ]
    , Product
        (ProductSku "EWFA-BLACK")
        (ProductName "Work Folio A5 - Black")
        [ ProductPrice 1570 0 HKD
        , ProductPrice 249 0 AUD
        , ProductPrice 239 0 CAD
        , ProductPrice 199 0 EUR
        , ProductPrice 275 0 SGD
        , ProductPrice 199 0 USD
        , ProductPrice 179 0 GBP
        , ProductPrice 26800 0 JPY
        , ProductPrice 759 0 AED
        , ProductPrice 299 0 NZD
        ]
        [ DimensionValue "black" (Dimension "Color")
        , DimensionValue "leather" (Dimension "Material")
        , DimensionValue "facebook" (Dimension "Product Feed")
        , DimensionValue "google_shopping" (Dimension "Product Feed")
        , DimensionValue "instagram" (Dimension "Product Feed")
        , DimensionValue "rakuten_affiliate" (Dimension "Product Feed")
        , DimensionValue "Work Folio" (Dimension "Product Range")
        , DimensionValue "Work Folio A5" (Dimension "Product Style")
        , DimensionValue "Work Accessories" (Dimension "Product Type")
        , DimensionValue "small" (Dimension "Shipping Sizes")
        , DimensionValue "EWFA" (Dimension "Style")
        ]
    , Product
        (ProductSku "EWFA-CARAMEL")
        (ProductName "Work Folio A5 - Caramel")
        [ ProductPrice 1570 0 HKD
        , ProductPrice 249 0 AUD
        , ProductPrice 239 0 CAD
        , ProductPrice 199 0 EUR
        , ProductPrice 275 0 SGD
        , ProductPrice 199 0 USD
        , ProductPrice 179 0 GBP
        , ProductPrice 26800 0 JPY
        , ProductPrice 759 0 AED
        , ProductPrice 299 0 NZD
        ]
        [ DimensionValue "caramel" (Dimension "Color")
        , DimensionValue "leather" (Dimension "Material")
        , DimensionValue "facebook" (Dimension "Product Feed")
        , DimensionValue "google_shopping" (Dimension "Product Feed")
        , DimensionValue "instagram" (Dimension "Product Feed")
        , DimensionValue "rakuten_affiliate" (Dimension "Product Feed")
        , DimensionValue "Work Folio" (Dimension "Product Range")
        , DimensionValue "Work Folio A5" (Dimension "Product Style")
        , DimensionValue "Work Accessories" (Dimension "Product Type")
        , DimensionValue "small" (Dimension "Shipping Sizes")
        , DimensionValue "EWFA" (Dimension "Style")
        ]
    , Product
        (ProductSku "EWFA-GRA-107")
        (ProductName "Work Folio A5 - Graphite")
        [ ProductPrice 249 0 AUD
        , ProductPrice 239 0 CAD
        , ProductPrice 199 0 EUR
        , ProductPrice 179 0 GBP
        , ProductPrice 26800 0 JPY
        , ProductPrice 275 0 SGD
        , ProductPrice 199 0 USD
        , ProductPrice 1570 0 HKD
        , ProductPrice 759 0 AED
        , ProductPrice 299 0 NZD
        ]
        [ DimensionValue "graphite" (Dimension "Color")
        , DimensionValue "leather" (Dimension "Material")
        , DimensionValue "facebook" (Dimension "Product Feed")
        , DimensionValue "google_shopping" (Dimension "Product Feed")
        , DimensionValue "instagram" (Dimension "Product Feed")
        , DimensionValue "rakuten_affiliate" (Dimension "Product Feed")
        , DimensionValue "Work Folio" (Dimension "Product Range")
        , DimensionValue "Work Folio A5" (Dimension "Product Style")
        , DimensionValue "Work Accessories" (Dimension "Product Type")
        , DimensionValue "small" (Dimension "Shipping Sizes")
        , DimensionValue "EWFA" (Dimension "Style")
        ]
    , Product
        (ProductSku "EWFA-NAV-101")
        (ProductName "Work Folio A5 - Navy")
        [ ProductPrice 1570 0 HKD
        , ProductPrice 249 0 AUD
        , ProductPrice 239 0 CAD
        , ProductPrice 199 0 EUR
        , ProductPrice 275 0 SGD
        , ProductPrice 199 0 USD
        , ProductPrice 26800 0 JPY
        , ProductPrice 179 0 GBP
        , ProductPrice 759 0 AED
        , ProductPrice 299 0 NZD
        ]
        [ DimensionValue "navy" (Dimension "Color")
        , DimensionValue "leather" (Dimension "Material")
        , DimensionValue "facebook" (Dimension "Product Feed")
        , DimensionValue "google_shopping" (Dimension "Product Feed")
        , DimensionValue "instagram" (Dimension "Product Feed")
        , DimensionValue "rakuten_affiliate" (Dimension "Product Feed")
        , DimensionValue "Work Folio" (Dimension "Product Range")
        , DimensionValue "Work Folio A5" (Dimension "Product Style")
        , DimensionValue "Work Accessories" (Dimension "Product Type")
        , DimensionValue "small" (Dimension "Shipping Sizes")
        , DimensionValue "EWFA" (Dimension "Style")
        ]
    , Product
        (ProductSku "EWFB-BLACK")
        (ProductName "Work Folio A4 - Black")
        [ ProductPrice 2350 0 HKD
        , ProductPrice 379 0 AUD
        , ProductPrice 369 0 CAD
        , ProductPrice 299 0 EUR
        , ProductPrice 425 0 SGD
        , ProductPrice 299 0 USD
        , ProductPrice 269 0 GBP
        , ProductPrice 40000 0 JPY
        , ProductPrice 1129 0 AED
        , ProductPrice 449 0 NZD
        ]
        [ DimensionValue "black" (Dimension "Color")
        , DimensionValue "leather" (Dimension "Material")
        , DimensionValue "facebook" (Dimension "Product Feed")
        , DimensionValue "google_shopping" (Dimension "Product Feed")
        , DimensionValue "instagram" (Dimension "Product Feed")
        , DimensionValue "rakuten_affiliate" (Dimension "Product Feed")
        , DimensionValue "Work Folio" (Dimension "Product Range")
        , DimensionValue "Work Folio A4" (Dimension "Product Style")
        , DimensionValue "Work Accessories" (Dimension "Product Type")
        , DimensionValue "small" (Dimension "Shipping Sizes")
        , DimensionValue "EWFB" (Dimension "Style")
        ]
    , Product
        (ProductSku "EWFB-CARAMEL")
        (ProductName "Work Folio A4 - Caramel")
        [ ProductPrice 2350 0 HKD
        , ProductPrice 379 0 AUD
        , ProductPrice 369 0 CAD
        , ProductPrice 299 0 EUR
        , ProductPrice 425 0 SGD
        , ProductPrice 40000 0 JPY
        , ProductPrice 269 0 GBP
        , ProductPrice 299 0 USD
        , ProductPrice 1129 0 AED
        , ProductPrice 449 0 NZD
        ]
        [ DimensionValue "caramel" (Dimension "Color")
        , DimensionValue "leather" (Dimension "Material")
        , DimensionValue "facebook" (Dimension "Product Feed")
        , DimensionValue "google_shopping" (Dimension "Product Feed")
        , DimensionValue "instagram" (Dimension "Product Feed")
        , DimensionValue "rakuten_affiliate" (Dimension "Product Feed")
        , DimensionValue "Work Folio" (Dimension "Product Range")
        , DimensionValue "Work Folio A4" (Dimension "Product Style")
        , DimensionValue "Work Accessories" (Dimension "Product Type")
        , DimensionValue "small" (Dimension "Shipping Sizes")
        , DimensionValue "EWFB" (Dimension "Style")
        ]
    , Product
        (ProductSku "EWFB-GRA-107")
        (ProductName "Work Folio A4 - Graphite")
        [ ProductPrice 379 0 AUD
        , ProductPrice 369 0 CAD
        , ProductPrice 299 0 EUR
        , ProductPrice 269 0 GBP
        , ProductPrice 40000 0 JPY
        , ProductPrice 425 0 SGD
        , ProductPrice 299 0 USD
        , ProductPrice 2350 0 HKD
        , ProductPrice 1129 0 AED
        , ProductPrice 449 0 NZD
        ]
        [ DimensionValue "graphite" (Dimension "Color")
        , DimensionValue "leather" (Dimension "Material")
        , DimensionValue "facebook" (Dimension "Product Feed")
        , DimensionValue "google_shopping" (Dimension "Product Feed")
        , DimensionValue "instagram" (Dimension "Product Feed")
        , DimensionValue "rakuten_affiliate" (Dimension "Product Feed")
        , DimensionValue "Work Folio" (Dimension "Product Range")
        , DimensionValue "Work Folio A4" (Dimension "Product Style")
        , DimensionValue "Work Accessories" (Dimension "Product Type")
        , DimensionValue "small" (Dimension "Shipping Sizes")
        , DimensionValue "EWFB" (Dimension "Style")
        ]
    , Product
        (ProductSku "EWFB-NAV-101")
        (ProductName "Work Folio A4 - Navy")
        [ ProductPrice 2350 0 HKD
        , ProductPrice 379 0 AUD
        , ProductPrice 369 0 CAD
        , ProductPrice 299 0 EUR
        , ProductPrice 425 0 SGD
        , ProductPrice 299 0 USD
        , ProductPrice 40000 0 JPY
        , ProductPrice 269 0 GBP
        , ProductPrice 1129 0 AED
        , ProductPrice 449 0 NZD
        ]
        [ DimensionValue "navy" (Dimension "Color")
        , DimensionValue "leather" (Dimension "Material")
        , DimensionValue "facebook" (Dimension "Product Feed")
        , DimensionValue "google_shopping" (Dimension "Product Feed")
        , DimensionValue "instagram" (Dimension "Product Feed")
        , DimensionValue "rakuten_affiliate" (Dimension "Product Feed")
        , DimensionValue "Work Folio" (Dimension "Product Range")
        , DimensionValue "Work Folio A4" (Dimension "Product Style")
        , DimensionValue "Work Accessories" (Dimension "Product Type")
        , DimensionValue "small" (Dimension "Shipping Sizes")
        , DimensionValue "EWFB" (Dimension "Style")
        ]
    , Product
        (ProductSku "FCLA-BLACK")
        (ProductName "Clutch - Black")
        [ ProductPrice 990 0 HKD
        , ProductPrice 17300 0 JPY
        , ProductPrice 159 0 AUD
        , ProductPrice 159 0 CAD
        , ProductPrice 129 0 EUR
        , ProductPrice 109 0 GBP
        , ProductPrice 179 0 SGD
        , ProductPrice 129 0 USD
        , ProductPrice 489 0 AED
        , ProductPrice 159 0 NZD
        ]
        [ DimensionValue "black" (Dimension "Color")
        , DimensionValue "leather" (Dimension "Material")
        , DimensionValue "facebook" (Dimension "Product Feed")
        , DimensionValue "google_shopping" (Dimension "Product Feed")
        , DimensionValue "instagram" (Dimension "Product Feed")
        , DimensionValue "rakuten_affiliate" (Dimension "Product Feed")
        , DimensionValue "Women's Wallet" (Dimension "Product Range")
        , DimensionValue "Clutch" (Dimension "Product Style")
        , DimensionValue "Wallet" (Dimension "Product Type")
        , DimensionValue "small" (Dimension "Shipping Sizes")
        , DimensionValue "FCLA" (Dimension "Style")
        ]
    , Product
        (ProductSku "FCLA-LEM-101")
        (ProductName "Clutch - Lemon")
        [ ProductPrice 990 0 HKD
        , ProductPrice 159 0 AUD
        , ProductPrice 159 0 CAD
        , ProductPrice 129 0 EUR
        , ProductPrice 109 0 GBP
        , ProductPrice 17300 0 JPY
        , ProductPrice 179 0 SGD
        , ProductPrice 129 0 USD
        , ProductPrice 489 0 AED
        , ProductPrice 159 0 NZD
        ]
        [ DimensionValue "lemon" (Dimension "Color")
        , DimensionValue "leather" (Dimension "Material")
        , DimensionValue "facebook" (Dimension "Product Feed")
        , DimensionValue "google_shopping" (Dimension "Product Feed")
        , DimensionValue "instagram" (Dimension "Product Feed")
        , DimensionValue "rakuten_affiliate" (Dimension "Product Feed")
        , DimensionValue "Women's Wallet" (Dimension "Product Range")
        , DimensionValue "Clutch" (Dimension "Product Style")
        , DimensionValue "Wallet" (Dimension "Product Type")
        , DimensionValue "small" (Dimension "Shipping Sizes")
        , DimensionValue "FCLA" (Dimension "Style")
        ]
    , Product
        (ProductSku "FCLA-NAVY")
        (ProductName "Clutch - Navy")
        [ ProductPrice 990 0 HKD
        , ProductPrice 159 0 AUD
        , ProductPrice 159 0 CAD
        , ProductPrice 129 0 EUR
        , ProductPrice 109 0 GBP
        , ProductPrice 17300 0 JPY
        , ProductPrice 179 0 SGD
        , ProductPrice 129 0 USD
        , ProductPrice 489 0 AED
        , ProductPrice 159 0 NZD
        ]
        [ DimensionValue "navy" (Dimension "Color")
        , DimensionValue "leather" (Dimension "Material")
        , DimensionValue "facebook" (Dimension "Product Feed")
        , DimensionValue "google_shopping" (Dimension "Product Feed")
        , DimensionValue "instagram" (Dimension "Product Feed")
        , DimensionValue "rakuten_affiliate" (Dimension "Product Feed")
        , DimensionValue "Women's Wallet" (Dimension "Product Range")
        , DimensionValue "Clutch" (Dimension "Product Style")
        , DimensionValue "Wallet" (Dimension "Product Type")
        , DimensionValue "small" (Dimension "Shipping Sizes")
        , DimensionValue "FCLA" (Dimension "Style")
        ]
    , Product
        (ProductSku "FCLA-TAG-101")
        (ProductName "Clutch - Tangelo")
        [ ProductPrice 159 0 AUD
        , ProductPrice 159 0 CAD
        , ProductPrice 990 0 HKD
        , ProductPrice 17300 0 JPY
        , ProductPrice 179 0 SGD
        , ProductPrice 129 0 USD
        , ProductPrice 129 0 EUR
        , ProductPrice 109 0 GBP
        , ProductPrice 489 0 AED
        , ProductPrice 159 0 NZD
        ]
        [ DimensionValue "tangelo" (Dimension "Color")
        , DimensionValue "leather" (Dimension "Material")
        , DimensionValue "facebook" (Dimension "Product Feed")
        , DimensionValue "google_shopping" (Dimension "Product Feed")
        , DimensionValue "instagram" (Dimension "Product Feed")
        , DimensionValue "rakuten_affiliate" (Dimension "Product Feed")
        , DimensionValue "Women's Wallet" (Dimension "Product Range")
        , DimensionValue "Clutch" (Dimension "Product Style")
        , DimensionValue "Wallet" (Dimension "Product Type")
        , DimensionValue "small" (Dimension "Shipping Sizes")
        , DimensionValue "FCLA" (Dimension "Style")
        ]
    , Product
        (ProductSku "FFWA-NAVY")
        (ProductName "Folio Wallet - Navy")
        [ ProductPrice 780 0 HKD
        , ProductPrice 119 0 CAD
        , ProductPrice 129 0 AUD
        , ProductPrice 99 0 EUR
        , ProductPrice 89 0 GBP
        , ProductPrice 139 0 SGD
        , ProductPrice 99 0 USD
        , ProductPrice 14800 0 JPY
        , ProductPrice 379 0 AED
        , ProductPrice 139 0 NZD
        ]
        [ DimensionValue "navy" (Dimension "Color")
        , DimensionValue "leather" (Dimension "Material")
        , DimensionValue "facebook" (Dimension "Product Feed")
        , DimensionValue "google_shopping" (Dimension "Product Feed")
        , DimensionValue "instagram" (Dimension "Product Feed")
        , DimensionValue "rakuten_affiliate" (Dimension "Product Feed")
        , DimensionValue "Women's Wallet" (Dimension "Product Range")
        , DimensionValue "Folio Wallet" (Dimension "Product Style")
        , DimensionValue "Wallet" (Dimension "Product Type")
        , DimensionValue "small" (Dimension "Shipping Sizes")
        , DimensionValue "FFWA" (Dimension "Style")
        ]
    , Product
        (ProductSku "FPKA-ALABASTER")
        (ProductName "Pocket - Alabaster")
        [ ProductPrice 620 0 HKD
        , ProductPrice 99 0 AUD
        , ProductPrice 99 0 CAD
        , ProductPrice 79 0 EUR
        , ProductPrice 65 0 GBP
        , ProductPrice 10800 0 JPY
        , ProductPrice 119 0 SGD
        , ProductPrice 79 0 USD
        , ProductPrice 299 0 AED
        , ProductPrice 109 0 NZD
        ]
        [ DimensionValue "alabaster" (Dimension "Color")
        , DimensionValue "leather" (Dimension "Material")
        , DimensionValue "facebook" (Dimension "Product Feed")
        , DimensionValue "google_shopping" (Dimension "Product Feed")
        , DimensionValue "instagram" (Dimension "Product Feed")
        , DimensionValue "rakuten_affiliate" (Dimension "Product Feed")
        , DimensionValue "Women's Wallet" (Dimension "Product Range")
        , DimensionValue "Pocket" (Dimension "Product Style")
        , DimensionValue "Wallet" (Dimension "Product Type")
        , DimensionValue "small" (Dimension "Shipping Sizes")
        , DimensionValue "FPKA" (Dimension "Style")
        ]
    , Product
        (ProductSku "FPKA-BLACK")
        (ProductName "Pocket - Black")
        [ ProductPrice 620 0 HKD
        , ProductPrice 99 0 AUD
        , ProductPrice 99 0 CAD
        , ProductPrice 79 0 EUR
        , ProductPrice 65 0 GBP
        , ProductPrice 10800 0 JPY
        , ProductPrice 119 0 SGD
        , ProductPrice 79 0 USD
        , ProductPrice 299 0 AED
        , ProductPrice 109 0 NZD
        ]
        [ DimensionValue "black" (Dimension "Color")
        , DimensionValue "leather" (Dimension "Material")
        , DimensionValue "facebook" (Dimension "Product Feed")
        , DimensionValue "google_shopping" (Dimension "Product Feed")
        , DimensionValue "instagram" (Dimension "Product Feed")
        , DimensionValue "rakuten_affiliate" (Dimension "Product Feed")
        , DimensionValue "Women's Wallet" (Dimension "Product Range")
        , DimensionValue "Pocket" (Dimension "Product Style")
        , DimensionValue "Wallet" (Dimension "Product Type")
        , DimensionValue "small" (Dimension "Shipping Sizes")
        , DimensionValue "FPKA" (Dimension "Style")
        ]
    , Product
        (ProductSku "FPKA-DEEPBLUSH")
        (ProductName "Pocket - Deep Blush")
        [ ProductPrice 620 0 HKD
        , ProductPrice 99 0 AUD
        , ProductPrice 99 0 CAD
        , ProductPrice 79 0 EUR
        , ProductPrice 65 0 GBP
        , ProductPrice 10800 0 JPY
        , ProductPrice 119 0 SGD
        , ProductPrice 79 0 USD
        , ProductPrice 299 0 AED
        , ProductPrice 109 0 NZD
        ]
        [ DimensionValue "deep_blush" (Dimension "Color")
        , DimensionValue "leather" (Dimension "Material")
        , DimensionValue "facebook" (Dimension "Product Feed")
        , DimensionValue "google_shopping" (Dimension "Product Feed")
        , DimensionValue "instagram" (Dimension "Product Feed")
        , DimensionValue "rakuten_affiliate" (Dimension "Product Feed")
        , DimensionValue "Women's Wallet" (Dimension "Product Range")
        , DimensionValue "Pocket" (Dimension "Product Style")
        , DimensionValue "Wallet" (Dimension "Product Type")
        , DimensionValue "small" (Dimension "Shipping Sizes")
        , DimensionValue "FPKA" (Dimension "Style")
        ]
    , Product
        (ProductSku "FPKA-LEM-101")
        (ProductName "Pocket - Lemon")
        [ ProductPrice 620 0 HKD
        , ProductPrice 99 0 AUD
        , ProductPrice 99 0 CAD
        , ProductPrice 79 0 EUR
        , ProductPrice 65 0 GBP
        , ProductPrice 10800 0 JPY
        , ProductPrice 119 0 SGD
        , ProductPrice 79 0 USD
        , ProductPrice 299 0 AED
        , ProductPrice 109 0 NZD
        ]
        [ DimensionValue "lemon" (Dimension "Color")
        , DimensionValue "leather" (Dimension "Material")
        , DimensionValue "facebook" (Dimension "Product Feed")
        , DimensionValue "google_shopping" (Dimension "Product Feed")
        , DimensionValue "instagram" (Dimension "Product Feed")
        , DimensionValue "rakuten_affiliate" (Dimension "Product Feed")
        , DimensionValue "Women's Wallet" (Dimension "Product Range")
        , DimensionValue "Pocket" (Dimension "Product Style")
        , DimensionValue "Wallet" (Dimension "Product Type")
        , DimensionValue "small" (Dimension "Shipping Sizes")
        , DimensionValue "FPKA" (Dimension "Style")
        ]
    , Product
        (ProductSku "FPKA-NAVY")
        (ProductName "Pocket - Navy")
        [ ProductPrice 620 0 HKD
        , ProductPrice 99 0 AUD
        , ProductPrice 99 0 CAD
        , ProductPrice 79 0 EUR
        , ProductPrice 65 0 GBP
        , ProductPrice 10800 0 JPY
        , ProductPrice 119 0 SGD
        , ProductPrice 79 0 USD
        , ProductPrice 299 0 AED
        , ProductPrice 109 0 NZD
        ]
        [ DimensionValue "navy" (Dimension "Color")
        , DimensionValue "leather" (Dimension "Material")
        , DimensionValue "facebook" (Dimension "Product Feed")
        , DimensionValue "google_shopping" (Dimension "Product Feed")
        , DimensionValue "instagram" (Dimension "Product Feed")
        , DimensionValue "rakuten_affiliate" (Dimension "Product Feed")
        , DimensionValue "Women's Wallet" (Dimension "Product Range")
        , DimensionValue "Pocket" (Dimension "Product Style")
        , DimensionValue "Wallet" (Dimension "Product Type")
        , DimensionValue "small" (Dimension "Shipping Sizes")
        , DimensionValue "FPKA" (Dimension "Style")
        ]
    , Product
        (ProductSku "FPKA-TAG-101")
        (ProductName "Pocket - Tangelo")
        [ ProductPrice 99 0 AUD
        , ProductPrice 620 0 HKD
        , ProductPrice 99 0 CAD
        , ProductPrice 79 0 EUR
        , ProductPrice 65 0 GBP
        , ProductPrice 10800 0 JPY
        , ProductPrice 119 0 SGD
        , ProductPrice 79 0 USD
        , ProductPrice 299 0 AED
        , ProductPrice 109 0 NZD
        ]
        [ DimensionValue "tangelo" (Dimension "Color")
        , DimensionValue "leather" (Dimension "Material")
        , DimensionValue "facebook" (Dimension "Product Feed")
        , DimensionValue "google_shopping" (Dimension "Product Feed")
        , DimensionValue "instagram" (Dimension "Product Feed")
        , DimensionValue "rakuten_affiliate" (Dimension "Product Feed")
        , DimensionValue "Women's Wallet" (Dimension "Product Range")
        , DimensionValue "Pocket" (Dimension "Product Style")
        , DimensionValue "Wallet" (Dimension "Product Type")
        , DimensionValue "small" (Dimension "Shipping Sizes")
        , DimensionValue "FPKA" (Dimension "Style")
        ]
    , Product
        (ProductSku "FPMA-ALABASTER")
        (ProductName "Pocket Mini - Alabaster")
        [ ProductPrice 550 0 HKD
        , ProductPrice 89 0 AUD
        , ProductPrice 79 0 CAD
        , ProductPrice 69 0 EUR
        , ProductPrice 59 0 GBP
        , ProductPrice 9500 0 JPY
        , ProductPrice 95 0 SGD
        , ProductPrice 69 0 USD
        , ProductPrice 259 0 AED
        , ProductPrice 89 0 NZD
        ]
        [ DimensionValue "alabaster" (Dimension "Color")
        , DimensionValue "leather" (Dimension "Material")
        , DimensionValue "facebook" (Dimension "Product Feed")
        , DimensionValue "google_shopping" (Dimension "Product Feed")
        , DimensionValue "instagram" (Dimension "Product Feed")
        , DimensionValue "rakuten_affiliate" (Dimension "Product Feed")
        , DimensionValue "Women's Wallet" (Dimension "Product Range")
        , DimensionValue "Pocket Mini" (Dimension "Product Style")
        , DimensionValue "Wallet" (Dimension "Product Type")
        , DimensionValue "small" (Dimension "Shipping Sizes")
        , DimensionValue "FPMA" (Dimension "Style")
        ]
    , Product
        (ProductSku "FPMA-BLACK")
        (ProductName "Pocket Mini - Black")
        [ ProductPrice 550 0 HKD
        , ProductPrice 9500 0 JPY
        , ProductPrice 89 0 AUD
        , ProductPrice 79 0 CAD
        , ProductPrice 69 0 EUR
        , ProductPrice 59 0 GBP
        , ProductPrice 95 0 SGD
        , ProductPrice 69 0 USD
        , ProductPrice 259 0 AED
        , ProductPrice 89 0 NZD
        ]
        [ DimensionValue "black" (Dimension "Color")
        , DimensionValue "leather" (Dimension "Material")
        , DimensionValue "facebook" (Dimension "Product Feed")
        , DimensionValue "google_shopping" (Dimension "Product Feed")
        , DimensionValue "instagram" (Dimension "Product Feed")
        , DimensionValue "rakuten_affiliate" (Dimension "Product Feed")
        , DimensionValue "Women's Wallet" (Dimension "Product Range")
        , DimensionValue "Pocket Mini" (Dimension "Product Style")
        , DimensionValue "Wallet" (Dimension "Product Type")
        , DimensionValue "small" (Dimension "Shipping Sizes")
        , DimensionValue "FPMA" (Dimension "Style")
        ]
    , Product
        (ProductSku "FPMA-TAG-101")
        (ProductName "Pocket Mini - Tangelo")
        [ ProductPrice 89 0 AUD
        , ProductPrice 550 0 HKD
        , ProductPrice 9500 0 JPY
        , ProductPrice 79 0 CAD
        , ProductPrice 69 0 EUR
        , ProductPrice 59 0 GBP
        , ProductPrice 95 0 SGD
        , ProductPrice 69 0 USD
        , ProductPrice 259 0 AED
        , ProductPrice 89 0 NZD
        ]
        [ DimensionValue "tangelo" (Dimension "Color")
        , DimensionValue "leather" (Dimension "Material")
        , DimensionValue "facebook" (Dimension "Product Feed")
        , DimensionValue "google_shopping" (Dimension "Product Feed")
        , DimensionValue "instagram" (Dimension "Product Feed")
        , DimensionValue "rakuten_affiliate" (Dimension "Product Feed")
        , DimensionValue "Women's Wallet" (Dimension "Product Range")
        , DimensionValue "Pocket Mini" (Dimension "Product Style")
        , DimensionValue "Wallet" (Dimension "Product Type")
        , DimensionValue "small" (Dimension "Shipping Sizes")
        , DimensionValue "FPMA" (Dimension "Style")
        ]
    , Product
        (ProductSku "GCLA-BLACK")
        (ProductName "Classic Set - Black")
        [ ProductPrice 850 0 HKD
        , ProductPrice 149 0 AUD
        , ProductPrice 135 0 CAD
        , ProductPrice 109 0 EUR
        , ProductPrice 159 0 SGD
        , ProductPrice 109 0 USD
        , ProductPrice 14900 0 JPY
        , ProductPrice 89 0 GBP
        , ProductPrice 419 0 AED
        , ProductPrice 159 0 NZD
        ]
        [ DimensionValue "black" (Dimension "Color")
        , DimensionValue "leather" (Dimension "Material")
        , DimensionValue "facebook" (Dimension "Product Feed")
        , DimensionValue "google_shopping" (Dimension "Product Feed")
        , DimensionValue "instagram" (Dimension "Product Feed")
        , DimensionValue "rakuten_affiliate" (Dimension "Product Feed")
        , DimensionValue "Targeted Persona" (Dimension "Product Range")
        , DimensionValue "Classic Set" (Dimension "Product Style")
        , DimensionValue "Set" (Dimension "Product Type")
        , DimensionValue "small" (Dimension "Shipping Sizes")
        , DimensionValue "lo" (Dimension "Size")
        , DimensionValue "Bills" (Dimension "Storage")
        , DimensionValue "Keys" (Dimension "Storage")
        , DimensionValue "GCLA" (Dimension "Style")
        ]
    , Product
        (ProductSku "GCLA-BLK-555")
        (ProductName "Classic Set - Black")
        [ ProductPrice 850 0 HKD
        , ProductPrice 14900 0 JPY
        , ProductPrice 149 0 AUD
        , ProductPrice 135 0 CAD
        , ProductPrice 109 0 EUR
        , ProductPrice 159 0 SGD
        , ProductPrice 109 0 USD
        , ProductPrice 89 0 GBP
        , ProductPrice 419 0 AED
        , ProductPrice 159 0 NZD
        ]
        [ DimensionValue "black" (Dimension "Color")
        , DimensionValue "woven" (Dimension "Material")
        , DimensionValue "Targeted Persona" (Dimension "Product Range")
        , DimensionValue "Classic Set" (Dimension "Product Style")
        , DimensionValue "Set" (Dimension "Product Type")
        , DimensionValue "medium" (Dimension "Shipping Sizes")
        , DimensionValue "default" (Dimension "Size")
        , DimensionValue "GCLZ" (Dimension "Style")
        ]
    , Product
        (ProductSku "GCLA-CAR-555")
        (ProductName "Classic Set - Caramel")
        [ ProductPrice 850 0 HKD
        , ProductPrice 14900 0 JPY
        , ProductPrice 149 0 AUD
        , ProductPrice 135 0 CAD
        , ProductPrice 109 0 EUR
        , ProductPrice 159 0 SGD
        , ProductPrice 109 0 USD
        , ProductPrice 89 0 GBP
        , ProductPrice 419 0 AED
        , ProductPrice 159 0 NZD
        ]
        [ DimensionValue "caramel" (Dimension "Color")
        , DimensionValue "woven" (Dimension "Material")
        , DimensionValue "Targeted Persona" (Dimension "Product Range")
        , DimensionValue "Classic Set" (Dimension "Product Style")
        , DimensionValue "Set" (Dimension "Product Type")
        , DimensionValue "medium" (Dimension "Shipping Sizes")
        , DimensionValue "default" (Dimension "Size")
        , DimensionValue "GCLZ" (Dimension "Style")
        ]
    , Product
        (ProductSku "GCLA-CARAMEL")
        (ProductName "Classic Set - Caramel")
        [ ProductPrice 850 0 HKD
        , ProductPrice 14900 0 JPY
        , ProductPrice 149 0 AUD
        , ProductPrice 135 0 CAD
        , ProductPrice 109 0 EUR
        , ProductPrice 89 0 GBP
        , ProductPrice 159 0 SGD
        , ProductPrice 109 0 USD
        , ProductPrice 419 0 AED
        , ProductPrice 159 0 NZD
        ]
        [ DimensionValue "caramel" (Dimension "Color")
        , DimensionValue "leather" (Dimension "Material")
        , DimensionValue "facebook" (Dimension "Product Feed")
        , DimensionValue "google_shopping" (Dimension "Product Feed")
        , DimensionValue "instagram" (Dimension "Product Feed")
        , DimensionValue "rakuten_affiliate" (Dimension "Product Feed")
        , DimensionValue "Targeted Persona" (Dimension "Product Range")
        , DimensionValue "Classic Set" (Dimension "Product Style")
        , DimensionValue "Set" (Dimension "Product Type")
        , DimensionValue "small" (Dimension "Shipping Sizes")
        , DimensionValue "lo" (Dimension "Size")
        , DimensionValue "Bills" (Dimension "Storage")
        , DimensionValue "Keys" (Dimension "Storage")
        , DimensionValue "GCLA" (Dimension "Style")
        ]
    , Product
        (ProductSku "GCLA-CJA-505")
        (ProductName "Classic Set - Cocoa Java")
        [ ProductPrice 149 0 AUD
        , ProductPrice 135 0 CAD
        , ProductPrice 109 0 EUR
        , ProductPrice 89 0 GBP
        , ProductPrice 14900 0 JPY
        , ProductPrice 159 0 SGD
        , ProductPrice 109 0 USD
        , ProductPrice 850 0 HKD
        , ProductPrice 419 0 AED
        , ProductPrice 159 0 NZD
        ]
        [ DimensionValue "cocoa_java" (Dimension "Color")
        , DimensionValue "leather" (Dimension "Material")
        , DimensionValue "facebook" (Dimension "Product Feed")
        , DimensionValue "google_shopping" (Dimension "Product Feed")
        , DimensionValue "instagram" (Dimension "Product Feed")
        , DimensionValue "rakuten_affiliate" (Dimension "Product Feed")
        , DimensionValue "Targeted Persona" (Dimension "Product Range")
        , DimensionValue "Classic Set" (Dimension "Product Style")
        , DimensionValue "Set" (Dimension "Product Type")
        , DimensionValue "small" (Dimension "Shipping Sizes")
        , DimensionValue "lo" (Dimension "Size")
        , DimensionValue "GCLA" (Dimension "Style")
        ]
    , Product
        (ProductSku "GCLB-BLACK")
        (ProductName "Classic Set - Black")
        [ ProductPrice 850 0 HKD
        , ProductPrice 149 0 AUD
        , ProductPrice 135 0 CAD
        , ProductPrice 109 0 EUR
        , ProductPrice 159 0 SGD
        , ProductPrice 109 0 USD
        , ProductPrice 89 0 GBP
        , ProductPrice 14900 0 JPY
        , ProductPrice 419 0 AED
        , ProductPrice 159 0 NZD
        ]
        [ DimensionValue "black" (Dimension "Color")
        , DimensionValue "leather" (Dimension "Material")
        , DimensionValue "facebook" (Dimension "Product Feed")
        , DimensionValue "google_shopping" (Dimension "Product Feed")
        , DimensionValue "instagram" (Dimension "Product Feed")
        , DimensionValue "rakuten_affiliate" (Dimension "Product Feed")
        , DimensionValue "Targeted Persona" (Dimension "Product Range")
        , DimensionValue "Classic Set" (Dimension "Product Style")
        , DimensionValue "Set" (Dimension "Product Type")
        , DimensionValue "small" (Dimension "Shipping Sizes")
        , DimensionValue "hi" (Dimension "Size")
        , DimensionValue "Bills" (Dimension "Storage")
        , DimensionValue "Keys" (Dimension "Storage")
        , DimensionValue "GCLA" (Dimension "Style")
        ]
    , Product
        (ProductSku "GCLB-CARAMEL")
        (ProductName "Classic Set - Caramel")
        [ ProductPrice 850 0 HKD
        , ProductPrice 149 0 AUD
        , ProductPrice 135 0 CAD
        , ProductPrice 109 0 EUR
        , ProductPrice 159 0 SGD
        , ProductPrice 109 0 USD
        , ProductPrice 14900 0 JPY
        , ProductPrice 89 0 GBP
        , ProductPrice 419 0 AED
        , ProductPrice 159 0 NZD
        ]
        [ DimensionValue "caramel" (Dimension "Color")
        , DimensionValue "leather" (Dimension "Material")
        , DimensionValue "facebook" (Dimension "Product Feed")
        , DimensionValue "google_shopping" (Dimension "Product Feed")
        , DimensionValue "instagram" (Dimension "Product Feed")
        , DimensionValue "rakuten_affiliate" (Dimension "Product Feed")
        , DimensionValue "Targeted Persona" (Dimension "Product Range")
        , DimensionValue "Classic Set" (Dimension "Product Style")
        , DimensionValue "Set" (Dimension "Product Type")
        , DimensionValue "small" (Dimension "Shipping Sizes")
        , DimensionValue "hi" (Dimension "Size")
        , DimensionValue "Bills" (Dimension "Storage")
        , DimensionValue "Keys" (Dimension "Storage")
        , DimensionValue "GCLA" (Dimension "Style")
        ]
    , Product
        (ProductSku "GCLB-CJA-505")
        (ProductName "Classic Set - Cocoa Java")
        [ ProductPrice 149 0 AUD
        , ProductPrice 135 0 CAD
        , ProductPrice 109 0 EUR
        , ProductPrice 89 0 GBP
        , ProductPrice 14900 0 JPY
        , ProductPrice 159 0 SGD
        , ProductPrice 109 0 USD
        , ProductPrice 850 0 HKD
        , ProductPrice 419 0 AED
        , ProductPrice 159 0 NZD
        ]
        [ DimensionValue "cocoa_java" (Dimension "Color")
        , DimensionValue "leather" (Dimension "Material")
        , DimensionValue "facebook" (Dimension "Product Feed")
        , DimensionValue "google_shopping" (Dimension "Product Feed")
        , DimensionValue "instagram" (Dimension "Product Feed")
        , DimensionValue "rakuten_affiliate" (Dimension "Product Feed")
        , DimensionValue "Targeted Persona" (Dimension "Product Range")
        , DimensionValue "Classic Set" (Dimension "Product Style")
        , DimensionValue "Set" (Dimension "Product Type")
        , DimensionValue "small" (Dimension "Shipping Sizes")
        , DimensionValue "hi" (Dimension "Size")
        , DimensionValue "GCLA" (Dimension "Style")
        ]
    , Product
        (ProductSku "GDNA-BLK-505")
        (ProductName "Digital Nomad Set - Black")
        [ ProductPrice 119 0 AUD
        , ProductPrice 109 0 CAD
        , ProductPrice 85 0 EUR
        , ProductPrice 75 0 GBP
        , ProductPrice 11900 0 JPY
        , ProductPrice 119 0 SGD
        , ProductPrice 85 0 USD
        , ProductPrice 690 0 HKD
        , ProductPrice 329 0 AED
        , ProductPrice 139 0 NZD
        ]
        [ DimensionValue "black" (Dimension "Color")
        , DimensionValue "venture" (Dimension "Material")
        , DimensionValue "facebook" (Dimension "Product Feed")
        , DimensionValue "google_shopping" (Dimension "Product Feed")
        , DimensionValue "instagram" (Dimension "Product Feed")
        , DimensionValue "rakuten_affiliate" (Dimension "Product Feed")
        , DimensionValue "Targeted Persona" (Dimension "Product Range")
        , DimensionValue "Digital Nomad" (Dimension "Product Style")
        , DimensionValue "Set" (Dimension "Product Type")
        , DimensionValue "small" (Dimension "Shipping Sizes")
        , DimensionValue "13in" (Dimension "Size")
        , DimensionValue "GDNA" (Dimension "Style")
        ]
    , Product
        (ProductSku "GDNA-LGR-505")
        (ProductName "Digital Nomad Set - Light Grey")
        [ ProductPrice 119 0 AUD
        , ProductPrice 109 0 CAD
        , ProductPrice 85 0 EUR
        , ProductPrice 75 0 GBP
        , ProductPrice 11900 0 JPY
        , ProductPrice 119 0 SGD
        , ProductPrice 85 0 USD
        , ProductPrice 690 0 HKD
        , ProductPrice 329 0 AED
        , ProductPrice 139 0 NZD
        ]
        [ DimensionValue "light_grey" (Dimension "Color")
        , DimensionValue "venture" (Dimension "Material")
        , DimensionValue "facebook" (Dimension "Product Feed")
        , DimensionValue "google_shopping" (Dimension "Product Feed")
        , DimensionValue "instagram" (Dimension "Product Feed")
        , DimensionValue "rakuten_affiliate" (Dimension "Product Feed")
        , DimensionValue "Targeted Persona" (Dimension "Product Range")
        , DimensionValue "Digital Nomad" (Dimension "Product Style")
        , DimensionValue "Set" (Dimension "Product Type")
        , DimensionValue "small" (Dimension "Shipping Sizes")
        , DimensionValue "13in" (Dimension "Size")
        , DimensionValue "GDNA" (Dimension "Style")
        ]
    , Product
        (ProductSku "GDNB-BLK-505")
        (ProductName "Digital Nomad Set - Black")
        [ ProductPrice 119 0 AUD
        , ProductPrice 109 0 CAD
        , ProductPrice 85 0 EUR
        , ProductPrice 75 0 GBP
        , ProductPrice 11900 0 JPY
        , ProductPrice 119 0 SGD
        , ProductPrice 85 0 USD
        , ProductPrice 690 0 HKD
        , ProductPrice 329 0 AED
        , ProductPrice 139 0 NZD
        ]
        [ DimensionValue "black" (Dimension "Color")
        , DimensionValue "venture" (Dimension "Material")
        , DimensionValue "facebook" (Dimension "Product Feed")
        , DimensionValue "google_shopping" (Dimension "Product Feed")
        , DimensionValue "instagram" (Dimension "Product Feed")
        , DimensionValue "rakuten_affiliate" (Dimension "Product Feed")
        , DimensionValue "Targeted Persona" (Dimension "Product Range")
        , DimensionValue "Digital Nomad" (Dimension "Product Style")
        , DimensionValue "Set" (Dimension "Product Type")
        , DimensionValue "small" (Dimension "Shipping Sizes")
        , DimensionValue "15in" (Dimension "Size")
        , DimensionValue "GDNA" (Dimension "Style")
        ]
    , Product
        (ProductSku "GDNB-LGR-505")
        (ProductName "Digital Nomad Set - Light Grey")
        [ ProductPrice 119 0 AUD
        , ProductPrice 109 0 CAD
        , ProductPrice 85 0 EUR
        , ProductPrice 75 0 GBP
        , ProductPrice 11900 0 JPY
        , ProductPrice 119 0 SGD
        , ProductPrice 85 0 USD
        , ProductPrice 690 0 HKD
        , ProductPrice 329 0 AED
        , ProductPrice 139 0 NZD
        ]
        [ DimensionValue "light_grey" (Dimension "Color")
        , DimensionValue "venture" (Dimension "Material")
        , DimensionValue "facebook" (Dimension "Product Feed")
        , DimensionValue "google_shopping" (Dimension "Product Feed")
        , DimensionValue "instagram" (Dimension "Product Feed")
        , DimensionValue "rakuten_affiliate" (Dimension "Product Feed")
        , DimensionValue "Targeted Persona" (Dimension "Product Range")
        , DimensionValue "Digital Nomad" (Dimension "Product Style")
        , DimensionValue "Set" (Dimension "Product Type")
        , DimensionValue "small" (Dimension "Shipping Sizes")
        , DimensionValue "15in" (Dimension "Size")
        , DimensionValue "GDNA" (Dimension "Style")
        ]
    , Product
        (ProductSku "GESA-BLK-505")
        (ProductName "Essentials Set - Black")
        [ ProductPrice 189 0 AUD
        , ProductPrice 169 0 CAD
        , ProductPrice 139 0 EUR
        , ProductPrice 115 0 GBP
        , ProductPrice 18900 0 JPY
        , ProductPrice 199 0 SGD
        , ProductPrice 139 0 USD
        , ProductPrice 1090 0 HKD
        , ProductPrice 529 0 AED
        , ProductPrice 199 0 NZD
        ]
        [ DimensionValue "black" (Dimension "Color")
        , DimensionValue "venture" (Dimension "Material")
        , DimensionValue "facebook" (Dimension "Product Feed")
        , DimensionValue "google_shopping" (Dimension "Product Feed")
        , DimensionValue "instagram" (Dimension "Product Feed")
        , DimensionValue "rakuten_affiliate" (Dimension "Product Feed")
        , DimensionValue "Targeted Persona" (Dimension "Product Range")
        , DimensionValue "Essentials Set" (Dimension "Product Style")
        , DimensionValue "Set" (Dimension "Product Type")
        , DimensionValue "small" (Dimension "Shipping Sizes")
        , DimensionValue "GESA" (Dimension "Style")
        ]
    , Product
        (ProductSku "GESA-NCH-505")
        (ProductName "Essentials Set - Navy Charcoal")
        [ ProductPrice 189 0 AUD
        , ProductPrice 169 0 CAD
        , ProductPrice 139 0 EUR
        , ProductPrice 115 0 GBP
        , ProductPrice 18900 0 JPY
        , ProductPrice 199 0 SGD
        , ProductPrice 139 0 USD
        , ProductPrice 1090 0 HKD
        , ProductPrice 529 0 AED
        , ProductPrice 199 0 NZD
        ]
        [ DimensionValue "navy-charcoal" (Dimension "Color")
        , DimensionValue "venture" (Dimension "Material")
        , DimensionValue "facebook" (Dimension "Product Feed")
        , DimensionValue "google_shopping" (Dimension "Product Feed")
        , DimensionValue "instagram" (Dimension "Product Feed")
        , DimensionValue "rakuten_affiliate" (Dimension "Product Feed")
        , DimensionValue "Targeted Persona" (Dimension "Product Range")
        , DimensionValue "Essentials Set" (Dimension "Product Style")
        , DimensionValue "Set" (Dimension "Product Type")
        , DimensionValue "small" (Dimension "Shipping Sizes")
        , DimensionValue "GESA" (Dimension "Style")
        ]
    , Product
        (ProductSku "GHMB-BLK-555")
        (ProductName "His Favorites - Black")
        [ ProductPrice 20300 0 JPY
        , ProductPrice 1150 0 HKD
        , ProductPrice 189 0 AUD
        , ProductPrice 179 0 CAD
        , ProductPrice 145 0 EUR
        , ProductPrice 215 0 SGD
        , ProductPrice 149 0 USD
        , ProductPrice 129 0 GBP
        , ProductPrice 559 0 AED
        , ProductPrice 209 0 NZD
        ]
        [ DimensionValue "black" (Dimension "Color")
        , DimensionValue "woven" (Dimension "Material")
        , DimensionValue "General" (Dimension "Product Range")
        , DimensionValue "His Favorites Set" (Dimension "Product Style")
        , DimensionValue "Set" (Dimension "Product Type")
        , DimensionValue "medium" (Dimension "Shipping Sizes")
        , DimensionValue "default" (Dimension "Size")
        , DimensionValue "GHMZ" (Dimension "Style")
        ]
    , Product
        (ProductSku "GHMB-BLU-555")
        (ProductName "His Favorites - Blue")
        [ ProductPrice 20300 0 JPY
        , ProductPrice 1150 0 HKD
        , ProductPrice 189 0 AUD
        , ProductPrice 179 0 CAD
        , ProductPrice 145 0 EUR
        , ProductPrice 215 0 SGD
        , ProductPrice 149 0 USD
        , ProductPrice 129 0 GBP
        , ProductPrice 559 0 AED
        , ProductPrice 209 0 NZD
        ]
        [ DimensionValue "blue" (Dimension "Color")
        , DimensionValue "woven" (Dimension "Material")
        , DimensionValue "General" (Dimension "Product Range")
        , DimensionValue "His Favorites Set" (Dimension "Product Style")
        , DimensionValue "Set" (Dimension "Product Type")
        , DimensionValue "medium" (Dimension "Shipping Sizes")
        , DimensionValue "default" (Dimension "Size")
        , DimensionValue "GHMZ" (Dimension "Style")
        ]
    , Product
        (ProductSku "GJSA-BLK-505")
        (ProductName "Jet Set - Black")
        [ ProductPrice 189 0 AUD
        , ProductPrice 169 0 CAD
        , ProductPrice 139 0 EUR
        , ProductPrice 115 0 GBP
        , ProductPrice 11900 0 JPY
        , ProductPrice 199 0 SGD
        , ProductPrice 139 0 USD
        , ProductPrice 1090 0 HKD
        , ProductPrice 529 0 AED
        , ProductPrice 199 0 NZD
        ]
        [ DimensionValue "black" (Dimension "Color")
        , DimensionValue "venture" (Dimension "Material")
        , DimensionValue "facebook" (Dimension "Product Feed")
        , DimensionValue "google_shopping" (Dimension "Product Feed")
        , DimensionValue "instagram" (Dimension "Product Feed")
        , DimensionValue "rakuten_affiliate" (Dimension "Product Feed")
        , DimensionValue "Targeted Persona" (Dimension "Product Range")
        , DimensionValue "Jet Set" (Dimension "Product Style")
        , DimensionValue "Set" (Dimension "Product Type")
        , DimensionValue "small" (Dimension "Shipping Sizes")
        , DimensionValue "GJSA" (Dimension "Style")
        ]
    , Product
        (ProductSku "GJSA-CBL-505")
        (ProductName "Jet Set - Caramel Black")
        [ ProductPrice 189 0 AUD
        , ProductPrice 169 0 CAD
        , ProductPrice 139 0 EUR
        , ProductPrice 115 0 GBP
        , ProductPrice 11900 0 JPY
        , ProductPrice 199 0 SGD
        , ProductPrice 139 0 USD
        , ProductPrice 1090 0 HKD
        , ProductPrice 529 0 AED
        , ProductPrice 199 0 NZD
        ]
        [ DimensionValue "caramel-black" (Dimension "Color")
        , DimensionValue "venture" (Dimension "Material")
        , DimensionValue "facebook" (Dimension "Product Feed")
        , DimensionValue "google_shopping" (Dimension "Product Feed")
        , DimensionValue "instagram" (Dimension "Product Feed")
        , DimensionValue "rakuten_affiliate" (Dimension "Product Feed")
        , DimensionValue "Targeted Persona" (Dimension "Product Range")
        , DimensionValue "Jet Set" (Dimension "Product Style")
        , DimensionValue "Set" (Dimension "Product Type")
        , DimensionValue "small" (Dimension "Shipping Sizes")
        , DimensionValue "GJSA" (Dimension "Style")
        ]
    , Product
        (ProductSku "GJSA-NCH-505")
        (ProductName "Jet Set - Navy Charcoal")
        [ ProductPrice 189 0 AUD
        , ProductPrice 169 0 CAD
        , ProductPrice 139 0 EUR
        , ProductPrice 115 0 GBP
        , ProductPrice 11900 0 JPY
        , ProductPrice 199 0 SGD
        , ProductPrice 139 0 USD
        , ProductPrice 1090 0 HKD
        , ProductPrice 529 0 AED
        , ProductPrice 199 0 NZD
        ]
        [ DimensionValue "navy-charcoal" (Dimension "Color")
        , DimensionValue "venture" (Dimension "Material")
        , DimensionValue "facebook" (Dimension "Product Feed")
        , DimensionValue "google_shopping" (Dimension "Product Feed")
        , DimensionValue "instagram" (Dimension "Product Feed")
        , DimensionValue "rakuten_affiliate" (Dimension "Product Feed")
        , DimensionValue "Targeted Persona" (Dimension "Product Range")
        , DimensionValue "Jet Set" (Dimension "Product Style")
        , DimensionValue "Set" (Dimension "Product Type")
        , DimensionValue "small" (Dimension "Shipping Sizes")
        , DimensionValue "GJSA" (Dimension "Style")
        ]
    , Product
        (ProductSku "GMIA-BLACK")
        (ProductName "Minimalist Set - Black")
        [ ProductPrice 13600 0 JPY
        , ProductPrice 780 0 HKD
        , ProductPrice 129 0 AUD
        , ProductPrice 119 0 CAD
        , ProductPrice 99 0 EUR
        , ProductPrice 139 0 SGD
        , ProductPrice 99 0 USD
        , ProductPrice 85 0 GBP
        , ProductPrice 379 0 AED
        , ProductPrice 139 0 NZD
        ]
        [ DimensionValue "black" (Dimension "Color")
        , DimensionValue "leather" (Dimension "Material")
        , DimensionValue "facebook" (Dimension "Product Feed")
        , DimensionValue "google_shopping" (Dimension "Product Feed")
        , DimensionValue "instagram" (Dimension "Product Feed")
        , DimensionValue "rakuten_affiliate" (Dimension "Product Feed")
        , DimensionValue "Targeted Persona" (Dimension "Product Range")
        , DimensionValue "Minimalist Set" (Dimension "Product Style")
        , DimensionValue "Set" (Dimension "Product Type")
        , DimensionValue "small" (Dimension "Shipping Sizes")
        , DimensionValue "Bills" (Dimension "Storage")
        , DimensionValue "Keys" (Dimension "Storage")
        , DimensionValue "GMIA" (Dimension "Style")
        ]
    , Product
        (ProductSku "GMIA-BLK-555")
        (ProductName "Minimalist Set - Black")
        [ ProductPrice 13600 0 JPY
        , ProductPrice 780 0 HKD
        , ProductPrice 129 0 AUD
        , ProductPrice 119 0 CAD
        , ProductPrice 99 0 EUR
        , ProductPrice 139 0 SGD
        , ProductPrice 99 0 USD
        , ProductPrice 85 0 GBP
        , ProductPrice 379 0 AED
        , ProductPrice 139 0 NZD
        ]
        [ DimensionValue "black" (Dimension "Color")
        , DimensionValue "woven" (Dimension "Material")
        , DimensionValue "Targeted Persona" (Dimension "Product Range")
        , DimensionValue "Minimalist Set" (Dimension "Product Style")
        , DimensionValue "Set" (Dimension "Product Type")
        , DimensionValue "medium" (Dimension "Shipping Sizes")
        , DimensionValue "default" (Dimension "Size")
        , DimensionValue "GMIZ" (Dimension "Style")
        ]
    , Product
        (ProductSku "GMIA-BLS-555")
        (ProductName "Minimalist Set - Blue Steel")
        [ ProductPrice 13600 0 JPY
        , ProductPrice 780 0 HKD
        , ProductPrice 129 0 AUD
        , ProductPrice 119 0 CAD
        , ProductPrice 99 0 EUR
        , ProductPrice 139 0 SGD
        , ProductPrice 99 0 USD
        , ProductPrice 85 0 GBP
        , ProductPrice 379 0 AED
        , ProductPrice 139 0 NZD
        ]
        [ DimensionValue "blue_steel" (Dimension "Color")
        , DimensionValue "woven" (Dimension "Material")
        , DimensionValue "Targeted Persona" (Dimension "Product Range")
        , DimensionValue "Minimalist Set" (Dimension "Product Style")
        , DimensionValue "Set" (Dimension "Product Type")
        , DimensionValue "medium" (Dimension "Shipping Sizes")
        , DimensionValue "default" (Dimension "Size")
        , DimensionValue "GMIZ" (Dimension "Style")
        ]
    , Product
        (ProductSku "GMIA-CARCHG")
        (ProductName "Minimalist Set - Caramel Charcoal")
        [ ProductPrice 780 0 HKD
        , ProductPrice 129 0 AUD
        , ProductPrice 119 0 CAD
        , ProductPrice 99 0 EUR
        , ProductPrice 13600 0 JPY
        , ProductPrice 139 0 SGD
        , ProductPrice 99 0 USD
        , ProductPrice 85 0 GBP
        , ProductPrice 379 0 AED
        , ProductPrice 139 0 NZD
        ]
        [ DimensionValue "caramel-charcoal" (Dimension "Color")
        , DimensionValue "leather" (Dimension "Material")
        , DimensionValue "facebook" (Dimension "Product Feed")
        , DimensionValue "google_shopping" (Dimension "Product Feed")
        , DimensionValue "instagram" (Dimension "Product Feed")
        , DimensionValue "rakuten_affiliate" (Dimension "Product Feed")
        , DimensionValue "Targeted Persona" (Dimension "Product Range")
        , DimensionValue "Minimalist Set" (Dimension "Product Style")
        , DimensionValue "Set" (Dimension "Product Type")
        , DimensionValue "small" (Dimension "Shipping Sizes")
        , DimensionValue "Bills" (Dimension "Storage")
        , DimensionValue "Keys" (Dimension "Storage")
        , DimensionValue "GMIA" (Dimension "Style")
        ]
    , Product
        (ProductSku "GMIA-CCH-555")
        (ProductName "Minimalist Set - Caramel Charcoal")
        [ ProductPrice 13600 0 JPY
        , ProductPrice 780 0 HKD
        , ProductPrice 129 0 AUD
        , ProductPrice 119 0 CAD
        , ProductPrice 99 0 EUR
        , ProductPrice 139 0 SGD
        , ProductPrice 99 0 USD
        , ProductPrice 85 0 GBP
        , ProductPrice 379 0 AED
        , ProductPrice 139 0 NZD
        ]
        [ DimensionValue "caramel-charcoal" (Dimension "Color")
        , DimensionValue "woven" (Dimension "Material")
        , DimensionValue "Targeted Persona" (Dimension "Product Range")
        , DimensionValue "Minimalist Set" (Dimension "Product Style")
        , DimensionValue "Set" (Dimension "Product Type")
        , DimensionValue "medium" (Dimension "Shipping Sizes")
        , DimensionValue "default" (Dimension "Size")
        , DimensionValue "GMIZ" (Dimension "Style")
        ]
    , Product
        (ProductSku "GMIA-NAVY")
        (ProductName "Minimalist Set - Navy")
        [ ProductPrice 780 0 HKD
        , ProductPrice 13600 0 JPY
        , ProductPrice 129 0 AUD
        , ProductPrice 119 0 CAD
        , ProductPrice 99 0 EUR
        , ProductPrice 139 0 SGD
        , ProductPrice 99 0 USD
        , ProductPrice 85 0 GBP
        , ProductPrice 379 0 AED
        , ProductPrice 139 0 NZD
        ]
        [ DimensionValue "navy" (Dimension "Color")
        , DimensionValue "leather" (Dimension "Material")
        , DimensionValue "facebook" (Dimension "Product Feed")
        , DimensionValue "google_shopping" (Dimension "Product Feed")
        , DimensionValue "instagram" (Dimension "Product Feed")
        , DimensionValue "rakuten_affiliate" (Dimension "Product Feed")
        , DimensionValue "Targeted Persona" (Dimension "Product Range")
        , DimensionValue "Minimalist Set" (Dimension "Product Style")
        , DimensionValue "Set" (Dimension "Product Type")
        , DimensionValue "small" (Dimension "Shipping Sizes")
        , DimensionValue "Bills" (Dimension "Storage")
        , DimensionValue "Keys" (Dimension "Storage")
        , DimensionValue "GMIA" (Dimension "Style")
        ]
    , Product
        (ProductSku "GSTA-BLK-505")
        (ProductName "Studio Set - Black")
        [ ProductPrice 149 0 AUD
        , ProductPrice 139 0 CAD
        , ProductPrice 109 0 EUR
        , ProductPrice 95 0 GBP
        , ProductPrice 159 0 SGD
        , ProductPrice 109 0 USD
        , ProductPrice 890 0 HKD
        , ProductPrice 15100 0 JPY
        , ProductPrice 419 0 AED
        , ProductPrice 159 0 NZD
        ]
        [ DimensionValue "black" (Dimension "Color")
        , DimensionValue "venture" (Dimension "Material")
        , DimensionValue "facebook" (Dimension "Product Feed")
        , DimensionValue "google_shopping" (Dimension "Product Feed")
        , DimensionValue "instagram" (Dimension "Product Feed")
        , DimensionValue "rakuten_affiliate" (Dimension "Product Feed")
        , DimensionValue "Targeted Persona" (Dimension "Product Range")
        , DimensionValue "Studio Set" (Dimension "Product Style")
        , DimensionValue "Set" (Dimension "Product Type")
        , DimensionValue "small" (Dimension "Shipping Sizes")
        , DimensionValue "GSTA" (Dimension "Style")
        ]
    , Product
        (ProductSku "GSTA-CFO-505")
        (ProductName "Studio Set - Caramel Forest")
        [ ProductPrice 149 0 AUD
        , ProductPrice 139 0 CAD
        , ProductPrice 109 0 EUR
        , ProductPrice 95 0 GBP
        , ProductPrice 15100 0 JPY
        , ProductPrice 159 0 SGD
        , ProductPrice 109 0 USD
        , ProductPrice 890 0 HKD
        , ProductPrice 419 0 AED
        , ProductPrice 159 0 NZD
        ]
        [ DimensionValue "caramel-forest" (Dimension "Color")
        , DimensionValue "venture" (Dimension "Material")
        , DimensionValue "facebook" (Dimension "Product Feed")
        , DimensionValue "google_shopping" (Dimension "Product Feed")
        , DimensionValue "instagram" (Dimension "Product Feed")
        , DimensionValue "rakuten_affiliate" (Dimension "Product Feed")
        , DimensionValue "Targeted Persona" (Dimension "Product Range")
        , DimensionValue "Studio Set" (Dimension "Product Style")
        , DimensionValue "Set" (Dimension "Product Type")
        , DimensionValue "small" (Dimension "Shipping Sizes")
        , DimensionValue "GSTA" (Dimension "Style")
        ]
    , Product
        (ProductSku "GSTA-NCH-505")
        (ProductName "Studio Set - Navy Charcoal")
        [ ProductPrice 149 0 AUD
        , ProductPrice 139 0 CAD
        , ProductPrice 109 0 EUR
        , ProductPrice 95 0 GBP
        , ProductPrice 15100 0 JPY
        , ProductPrice 159 0 SGD
        , ProductPrice 109 0 USD
        , ProductPrice 890 0 HKD
        , ProductPrice 419 0 AED
        , ProductPrice 159 0 NZD
        ]
        [ DimensionValue "navy-charcoal" (Dimension "Color")
        , DimensionValue "venture" (Dimension "Material")
        , DimensionValue "facebook" (Dimension "Product Feed")
        , DimensionValue "google_shopping" (Dimension "Product Feed")
        , DimensionValue "instagram" (Dimension "Product Feed")
        , DimensionValue "rakuten_affiliate" (Dimension "Product Feed")
        , DimensionValue "Targeted Persona" (Dimension "Product Range")
        , DimensionValue "Studio Set" (Dimension "Product Style")
        , DimensionValue "Set" (Dimension "Product Type")
        , DimensionValue "small" (Dimension "Shipping Sizes")
        , DimensionValue "GSTA" (Dimension "Style")
        ]
    , Product
        (ProductSku "GTRA-BLN-505")
        (ProductName "Travel Set - Black Navy")
        [ ProductPrice 1190 0 HKD
        , ProductPrice 199 0 AUD
        , ProductPrice 189 0 CAD
        , ProductPrice 149 0 EUR
        , ProductPrice 129 0 GBP
        , ProductPrice 23500 0 JPY
        , ProductPrice 215 0 SGD
        , ProductPrice 149 0 USD
        , ProductPrice 559 0 AED
        , ProductPrice 219 0 NZD
        ]
        [ DimensionValue "black-navy" (Dimension "Color")
        , DimensionValue "leather" (Dimension "Material")
        , DimensionValue "facebook" (Dimension "Product Feed")
        , DimensionValue "google_shopping" (Dimension "Product Feed")
        , DimensionValue "instagram" (Dimension "Product Feed")
        , DimensionValue "rakuten_affiliate" (Dimension "Product Feed")
        , DimensionValue "Targeted Persona" (Dimension "Product Range")
        , DimensionValue "Travel Set" (Dimension "Product Style")
        , DimensionValue "Set" (Dimension "Product Type")
        , DimensionValue "small" (Dimension "Shipping Sizes")
        , DimensionValue "GTRA" (Dimension "Style")
        ]
    , Product
        (ProductSku "GTRA-CMG-505")
        (ProductName "Travel Set - Caramel Mid Grey")
        [ ProductPrice 1190 0 HKD
        , ProductPrice 199 0 AUD
        , ProductPrice 189 0 CAD
        , ProductPrice 149 0 EUR
        , ProductPrice 129 0 GBP
        , ProductPrice 23500 0 JPY
        , ProductPrice 215 0 SGD
        , ProductPrice 149 0 USD
        , ProductPrice 559 0 AED
        , ProductPrice 219 0 NZD
        ]
        [ DimensionValue "caramel-mid_grey" (Dimension "Color")
        , DimensionValue "leather" (Dimension "Material")
        , DimensionValue "facebook" (Dimension "Product Feed")
        , DimensionValue "google_shopping" (Dimension "Product Feed")
        , DimensionValue "instagram" (Dimension "Product Feed")
        , DimensionValue "rakuten_affiliate" (Dimension "Product Feed")
        , DimensionValue "Targeted Persona" (Dimension "Product Range")
        , DimensionValue "Travel Set" (Dimension "Product Style")
        , DimensionValue "Set" (Dimension "Product Type")
        , DimensionValue "small" (Dimension "Shipping Sizes")
        , DimensionValue "GTRA" (Dimension "Style")
        ]
    , Product
        (ProductSku "GTRA-NCH-505")
        (ProductName "Travel Set - Navy Charcoal")
        [ ProductPrice 199 0 AUD
        , ProductPrice 189 0 CAD
        , ProductPrice 149 0 EUR
        , ProductPrice 129 0 GBP
        , ProductPrice 23500 0 JPY
        , ProductPrice 215 0 SGD
        , ProductPrice 149 0 USD
        , ProductPrice 1190 0 HKD
        , ProductPrice 559 0 AED
        , ProductPrice 219 0 NZD
        ]
        [ DimensionValue "navy-charcoal" (Dimension "Color")
        , DimensionValue "leather" (Dimension "Material")
        , DimensionValue "facebook" (Dimension "Product Feed")
        , DimensionValue "google_shopping" (Dimension "Product Feed")
        , DimensionValue "instagram" (Dimension "Product Feed")
        , DimensionValue "rakuten_affiliate" (Dimension "Product Feed")
        , DimensionValue "Targeted Persona" (Dimension "Product Range")
        , DimensionValue "Travel Set" (Dimension "Product Style")
        , DimensionValue "Set" (Dimension "Product Type")
        , DimensionValue "small" (Dimension "Shipping Sizes")
        , DimensionValue "GTRA" (Dimension "Style")
        ]
    , Product
        (ProductSku "GZSA-BLK-505")
        (ProductName "Zipped Set - Black")
        [ ProductPrice 149 0 AUD
        , ProductPrice 139 0 CAD
        , ProductPrice 109 0 EUR
        , ProductPrice 95 0 GBP
        , ProductPrice 15100 0 JPY
        , ProductPrice 159 0 SGD
        , ProductPrice 109 0 USD
        , ProductPrice 850 0 HKD
        , ProductPrice 419 0 AED
        , ProductPrice 159 0 NZD
        ]
        [ DimensionValue "black" (Dimension "Color")
        , DimensionValue "venture" (Dimension "Material")
        , DimensionValue "facebook" (Dimension "Product Feed")
        , DimensionValue "google_shopping" (Dimension "Product Feed")
        , DimensionValue "instagram" (Dimension "Product Feed")
        , DimensionValue "rakuten_affiliate" (Dimension "Product Feed")
        , DimensionValue "Targeted Persona" (Dimension "Product Range")
        , DimensionValue "Zipped Set" (Dimension "Product Style")
        , DimensionValue "Set" (Dimension "Product Type")
        , DimensionValue "small" (Dimension "Shipping Sizes")
        , DimensionValue "GZSA" (Dimension "Style")
        ]
    , Product
        (ProductSku "GZSA-CMG-505")
        (ProductName "Zipped Set - Caramel Mid Grey")
        [ ProductPrice 149 0 AUD
        , ProductPrice 139 0 CAD
        , ProductPrice 109 0 EUR
        , ProductPrice 95 0 GBP
        , ProductPrice 15100 0 JPY
        , ProductPrice 159 0 SGD
        , ProductPrice 109 0 USD
        , ProductPrice 850 0 HKD
        , ProductPrice 419 0 AED
        , ProductPrice 159 0 NZD
        ]
        [ DimensionValue "caramel-mid_grey" (Dimension "Color")
        , DimensionValue "venture" (Dimension "Material")
        , DimensionValue "facebook" (Dimension "Product Feed")
        , DimensionValue "google_shopping" (Dimension "Product Feed")
        , DimensionValue "instagram" (Dimension "Product Feed")
        , DimensionValue "rakuten_affiliate" (Dimension "Product Feed")
        , DimensionValue "Targeted Persona" (Dimension "Product Range")
        , DimensionValue "Zipped Set" (Dimension "Product Style")
        , DimensionValue "Set" (Dimension "Product Type")
        , DimensionValue "small" (Dimension "Shipping Sizes")
        , DimensionValue "GZSA" (Dimension "Style")
        ]
    , Product
        (ProductSku "GZSA-WCH-505")
        (ProductName "Zipped Set - Wine Charcoal")
        [ ProductPrice 149 0 AUD
        , ProductPrice 139 0 CAD
        , ProductPrice 109 0 EUR
        , ProductPrice 95 0 GBP
        , ProductPrice 15100 0 JPY
        , ProductPrice 159 0 SGD
        , ProductPrice 109 0 USD
        , ProductPrice 850 0 HKD
        , ProductPrice 419 0 AED
        , ProductPrice 159 0 NZD
        ]
        [ DimensionValue "wine-charcoal" (Dimension "Color")
        , DimensionValue "venture" (Dimension "Material")
        , DimensionValue "facebook" (Dimension "Product Feed")
        , DimensionValue "google_shopping" (Dimension "Product Feed")
        , DimensionValue "instagram" (Dimension "Product Feed")
        , DimensionValue "rakuten_affiliate" (Dimension "Product Feed")
        , DimensionValue "Targeted Persona" (Dimension "Product Range")
        , DimensionValue "Zipped Set" (Dimension "Product Style")
        , DimensionValue "Set" (Dimension "Product Type")
        , DimensionValue "small" (Dimension "Shipping Sizes")
        , DimensionValue "GZSA" (Dimension "Style")
        ]
    , Product
        (ProductSku "PCAB-BLK-107")
        (ProductName "Phone Case - Black")
        [ ProductPrice 310 0 HKD
        , ProductPrice 59 0 SGD
        , ProductPrice 40 0 USD
        , ProductPrice 55 0 AUD
        , ProductPrice 49 0 CAD
        , ProductPrice 39 0 EUR
        , ProductPrice 35 0 GBP
        , ProductPrice 5500 0 JPY
        , ProductPrice 149 0 AED
        , ProductPrice 55 0 NZD
        ]
        [ DimensionValue "black" (Dimension "Color")
        , DimensionValue "facebook" (Dimension "Product Feed")
        , DimensionValue "google_shopping" (Dimension "Product Feed")
        , DimensionValue "instagram" (Dimension "Product Feed")
        , DimensionValue "rakuten_affiliate" (Dimension "Product Feed")
        , DimensionValue "Plain Case" (Dimension "Product Range")
        , DimensionValue "Phone Case" (Dimension "Product Style")
        , DimensionValue "Phone Case" (Dimension "Product Type")
        , DimensionValue "small" (Dimension "Shipping Sizes")
        , DimensionValue "i11" (Dimension "Size")
        , DimensionValue "PCIC" (Dimension "Style")
        ]
    , Product
        (ProductSku "PCAB-CAR-101")
        (ProductName "Phone Case - Caramel")
        [ ProductPrice 310 0 HKD
        , ProductPrice 59 0 SGD
        , ProductPrice 40 0 USD
        , ProductPrice 55 0 AUD
        , ProductPrice 49 0 CAD
        , ProductPrice 39 0 EUR
        , ProductPrice 35 0 GBP
        , ProductPrice 5500 0 JPY
        , ProductPrice 149 0 AED
        , ProductPrice 55 0 NZD
        ]
        [ DimensionValue "caramel" (Dimension "Color")
        , DimensionValue "facebook" (Dimension "Product Feed")
        , DimensionValue "google_shopping" (Dimension "Product Feed")
        , DimensionValue "instagram" (Dimension "Product Feed")
        , DimensionValue "rakuten_affiliate" (Dimension "Product Feed")
        , DimensionValue "Plain Case" (Dimension "Product Range")
        , DimensionValue "Phone Case" (Dimension "Product Style")
        , DimensionValue "Phone Case" (Dimension "Product Type")
        , DimensionValue "small" (Dimension "Shipping Sizes")
        , DimensionValue "i11" (Dimension "Size")
        , DimensionValue "PCIC" (Dimension "Style")
        ]
    , Product
        (ProductSku "PCAB-COR-107")
        (ProductName "Phone Case - Coral")
        [ ProductPrice 310 0 HKD
        , ProductPrice 59 0 SGD
        , ProductPrice 40 0 USD
        , ProductPrice 55 0 AUD
        , ProductPrice 49 0 CAD
        , ProductPrice 39 0 EUR
        , ProductPrice 35 0 GBP
        , ProductPrice 5500 0 JPY
        , ProductPrice 149 0 AED
        , ProductPrice 55 0 NZD
        ]
        [ DimensionValue "coral" (Dimension "Color")
        , DimensionValue "facebook" (Dimension "Product Feed")
        , DimensionValue "google_shopping" (Dimension "Product Feed")
        , DimensionValue "instagram" (Dimension "Product Feed")
        , DimensionValue "rakuten_affiliate" (Dimension "Product Feed")
        , DimensionValue "Plain Case" (Dimension "Product Range")
        , DimensionValue "Phone Case" (Dimension "Product Style")
        , DimensionValue "Phone Case" (Dimension "Product Type")
        , DimensionValue "small" (Dimension "Shipping Sizes")
        , DimensionValue "i11" (Dimension "Size")
        , DimensionValue "PCIC" (Dimension "Style")
        ]
    , Product
        (ProductSku "PCAB-GRA-107")
        (ProductName "Phone Case - Graphite")
        [ ProductPrice 310 0 HKD
        , ProductPrice 59 0 SGD
        , ProductPrice 40 0 USD
        , ProductPrice 55 0 AUD
        , ProductPrice 49 0 CAD
        , ProductPrice 39 0 EUR
        , ProductPrice 35 0 GBP
        , ProductPrice 5500 0 JPY
        , ProductPrice 149 0 AED
        , ProductPrice 55 0 NZD
        ]
        [ DimensionValue "graphite" (Dimension "Color")
        , DimensionValue "facebook" (Dimension "Product Feed")
        , DimensionValue "google_shopping" (Dimension "Product Feed")
        , DimensionValue "instagram" (Dimension "Product Feed")
        , DimensionValue "rakuten_affiliate" (Dimension "Product Feed")
        , DimensionValue "Plain Case" (Dimension "Product Range")
        , DimensionValue "Phone Case" (Dimension "Product Style")
        , DimensionValue "Phone Case" (Dimension "Product Type")
        , DimensionValue "small" (Dimension "Shipping Sizes")
        , DimensionValue "i11" (Dimension "Size")
        , DimensionValue "PCIC" (Dimension "Style")
        ]
    , Product
        (ProductSku "PCEB-BLK-107")
        (ProductName "Leather Case for Pixel - Black")
        [ ProductPrice 310 0 HKD
        , ProductPrice 49 0 AUD
        , ProductPrice 49 0 CAD
        , ProductPrice 39 0 EUR
        , ProductPrice 35 0 GBP
        , ProductPrice 5400 0 JPY
        , ProductPrice 59 0 SGD
        , ProductPrice 39 0 USD
        , ProductPrice 149 0 AED
        , ProductPrice 55 0 NZD
        ]
        [ DimensionValue "black" (Dimension "Color")
        , DimensionValue "leather" (Dimension "Material")
        , DimensionValue "facebook" (Dimension "Product Feed")
        , DimensionValue "google_shopping" (Dimension "Product Feed")
        , DimensionValue "instagram" (Dimension "Product Feed")
        , DimensionValue "rakuten_affiliate" (Dimension "Product Feed")
        , DimensionValue "Plain Case" (Dimension "Product Range")
        , DimensionValue "Phone Case" (Dimension "Product Style")
        , DimensionValue "Phone Case" (Dimension "Product Type")
        , DimensionValue "small" (Dimension "Shipping Sizes")
        , DimensionValue "pixel3xl" (Dimension "Size")
        , DimensionValue "Phone" (Dimension "Storage")
        , DimensionValue "PCEA" (Dimension "Style")
        ]
    , Product
        (ProductSku "PCEB-NAV-107")
        (ProductName "Leather Case for Pixel - Navy")
        [ ProductPrice 310 0 HKD
        , ProductPrice 49 0 AUD
        , ProductPrice 49 0 CAD
        , ProductPrice 39 0 EUR
        , ProductPrice 35 0 GBP
        , ProductPrice 59 0 SGD
        , ProductPrice 39 0 USD
        , ProductPrice 5400 0 JPY
        , ProductPrice 149 0 AED
        , ProductPrice 55 0 NZD
        ]
        [ DimensionValue "navy" (Dimension "Color")
        , DimensionValue "leather" (Dimension "Material")
        , DimensionValue "facebook" (Dimension "Product Feed")
        , DimensionValue "google_shopping" (Dimension "Product Feed")
        , DimensionValue "instagram" (Dimension "Product Feed")
        , DimensionValue "rakuten_affiliate" (Dimension "Product Feed")
        , DimensionValue "Plain Case" (Dimension "Product Range")
        , DimensionValue "Phone Case" (Dimension "Product Style")
        , DimensionValue "Phone Case" (Dimension "Product Type")
        , DimensionValue "small" (Dimension "Shipping Sizes")
        , DimensionValue "pixel3xl" (Dimension "Size")
        , DimensionValue "Phone" (Dimension "Storage")
        , DimensionValue "PCEA" (Dimension "Style")
        ]
    , Product
        (ProductSku "PCEB-NPK-107")
        (ProductName "Leather Case for Pixel - Not Pink")
        [ ProductPrice 310 0 HKD
        , ProductPrice 49 0 AUD
        , ProductPrice 49 0 CAD
        , ProductPrice 39 0 EUR
        , ProductPrice 35 0 GBP
        , ProductPrice 5400 0 JPY
        , ProductPrice 59 0 SGD
        , ProductPrice 39 0 USD
        , ProductPrice 149 0 AED
        , ProductPrice 55 0 NZD
        ]
        [ DimensionValue "not_pink" (Dimension "Color")
        , DimensionValue "leather" (Dimension "Material")
        , DimensionValue "facebook" (Dimension "Product Feed")
        , DimensionValue "google_shopping" (Dimension "Product Feed")
        , DimensionValue "instagram" (Dimension "Product Feed")
        , DimensionValue "rakuten_affiliate" (Dimension "Product Feed")
        , DimensionValue "Plain Case" (Dimension "Product Range")
        , DimensionValue "Phone Case" (Dimension "Product Style")
        , DimensionValue "Phone Case" (Dimension "Product Type")
        , DimensionValue "small" (Dimension "Shipping Sizes")
        , DimensionValue "pixel3xl" (Dimension "Size")
        , DimensionValue "Phone" (Dimension "Storage")
        , DimensionValue "PCEA" (Dimension "Style")
        ]
    , Product
        (ProductSku "PCEC-BLK-107")
        (ProductName "Leather Case for Pixel - Black")
        [ ProductPrice 55 0 AUD
        , ProductPrice 49 0 CAD
        , ProductPrice 40 0 EUR
        , ProductPrice 30 0 GBP
        , ProductPrice 5400 0 JPY
        , ProductPrice 59 0 SGD
        , ProductPrice 40 0 USD
        , ProductPrice 310 0 HKD
        , ProductPrice 149 0 AED
        , ProductPrice 55 0 NZD
        ]
        [ DimensionValue "black" (Dimension "Color")
        , DimensionValue "leather" (Dimension "Material")
        , DimensionValue "facebook" (Dimension "Product Feed")
        , DimensionValue "google_shopping" (Dimension "Product Feed")
        , DimensionValue "instagram" (Dimension "Product Feed")
        , DimensionValue "rakuten_affiliate" (Dimension "Product Feed")
        , DimensionValue "Plain Case" (Dimension "Product Range")
        , DimensionValue "Phone Case" (Dimension "Product Style")
        , DimensionValue "Phone Case" (Dimension "Product Type")
        , DimensionValue "small" (Dimension "Shipping Sizes")
        , DimensionValue "pixel4" (Dimension "Size")
        , DimensionValue "PCEA" (Dimension "Style")
        ]
    , Product
        (ProductSku "PCEC-CAR-101")
        (ProductName "Leather Case for Pixel - Caramel")
        [ ProductPrice 55 0 AUD
        , ProductPrice 49 0 CAD
        , ProductPrice 40 0 EUR
        , ProductPrice 30 0 GBP
        , ProductPrice 5400 0 JPY
        , ProductPrice 59 0 SGD
        , ProductPrice 40 0 USD
        , ProductPrice 310 0 HKD
        , ProductPrice 149 0 AED
        , ProductPrice 55 0 NZD
        ]
        [ DimensionValue "caramel" (Dimension "Color")
        , DimensionValue "leather" (Dimension "Material")
        , DimensionValue "facebook" (Dimension "Product Feed")
        , DimensionValue "google_shopping" (Dimension "Product Feed")
        , DimensionValue "instagram" (Dimension "Product Feed")
        , DimensionValue "rakuten_affiliate" (Dimension "Product Feed")
        , DimensionValue "Plain Case" (Dimension "Product Range")
        , DimensionValue "Phone Case" (Dimension "Product Style")
        , DimensionValue "Phone Case" (Dimension "Product Type")
        , DimensionValue "small" (Dimension "Shipping Sizes")
        , DimensionValue "pixel4" (Dimension "Size")
        , DimensionValue "PCEA" (Dimension "Style")
        ]
    , Product
        (ProductSku "PCEC-COR-107")
        (ProductName "Leather Case for Pixel - Coral")
        [ ProductPrice 55 0 AUD
        , ProductPrice 49 0 CAD
        , ProductPrice 40 0 EUR
        , ProductPrice 30 0 GBP
        , ProductPrice 5400 0 JPY
        , ProductPrice 59 0 SGD
        , ProductPrice 40 0 USD
        , ProductPrice 310 0 HKD
        , ProductPrice 149 0 AED
        , ProductPrice 55 0 NZD
        ]
        [ DimensionValue "coral" (Dimension "Color")
        , DimensionValue "leather" (Dimension "Material")
        , DimensionValue "facebook" (Dimension "Product Feed")
        , DimensionValue "google_shopping" (Dimension "Product Feed")
        , DimensionValue "instagram" (Dimension "Product Feed")
        , DimensionValue "rakuten_affiliate" (Dimension "Product Feed")
        , DimensionValue "Plain Case" (Dimension "Product Range")
        , DimensionValue "Phone Case" (Dimension "Product Style")
        , DimensionValue "Phone Case" (Dimension "Product Type")
        , DimensionValue "small" (Dimension "Shipping Sizes")
        , DimensionValue "pixel4" (Dimension "Size")
        , DimensionValue "PCEA" (Dimension "Style")
        ]
    , Product
        (ProductSku "PCEC-GRA-107")
        (ProductName "Leather Case for Pixel - Graphite")
        [ ProductPrice 55 0 AUD
        , ProductPrice 49 0 CAD
        , ProductPrice 40 0 EUR
        , ProductPrice 30 0 GBP
        , ProductPrice 5400 0 JPY
        , ProductPrice 59 0 SGD
        , ProductPrice 40 0 USD
        , ProductPrice 310 0 HKD
        , ProductPrice 149 0 AED
        , ProductPrice 55 0 NZD
        ]
        [ DimensionValue "graphite" (Dimension "Color")
        , DimensionValue "leather" (Dimension "Material")
        , DimensionValue "facebook" (Dimension "Product Feed")
        , DimensionValue "google_shopping" (Dimension "Product Feed")
        , DimensionValue "instagram" (Dimension "Product Feed")
        , DimensionValue "rakuten_affiliate" (Dimension "Product Feed")
        , DimensionValue "Plain Case" (Dimension "Product Range")
        , DimensionValue "Phone Case" (Dimension "Product Style")
        , DimensionValue "Phone Case" (Dimension "Product Type")
        , DimensionValue "small" (Dimension "Shipping Sizes")
        , DimensionValue "pixel4" (Dimension "Size")
        , DimensionValue "PCEA" (Dimension "Style")
        ]
    , Product
        (ProductSku "PCED-BLK-107")
        (ProductName "Leather Case for Pixel - Black")
        [ ProductPrice 59 0 AUD
        , ProductPrice 55 0 CAD
        , ProductPrice 45 0 EUR
        , ProductPrice 35 0 GBP
        , ProductPrice 6200 0 JPY
        , ProductPrice 65 0 SGD
        , ProductPrice 45 0 USD
        , ProductPrice 350 0 HKD
        , ProductPrice 169 0 AED
        , ProductPrice 65 0 NZD
        ]
        [ DimensionValue "black" (Dimension "Color")
        , DimensionValue "leather" (Dimension "Material")
        , DimensionValue "facebook" (Dimension "Product Feed")
        , DimensionValue "google_shopping" (Dimension "Product Feed")
        , DimensionValue "instagram" (Dimension "Product Feed")
        , DimensionValue "rakuten_affiliate" (Dimension "Product Feed")
        , DimensionValue "Plain Case" (Dimension "Product Range")
        , DimensionValue "Phone Case" (Dimension "Product Style")
        , DimensionValue "Phone Case" (Dimension "Product Type")
        , DimensionValue "small" (Dimension "Shipping Sizes")
        , DimensionValue "pixel4xl" (Dimension "Size")
        , DimensionValue "PCEA" (Dimension "Style")
        ]
    , Product
        (ProductSku "PCED-CAR-101")
        (ProductName "Leather Case for Pixel - Caramel")
        [ ProductPrice 59 0 AUD
        , ProductPrice 55 0 CAD
        , ProductPrice 45 0 EUR
        , ProductPrice 35 0 GBP
        , ProductPrice 6200 0 JPY
        , ProductPrice 65 0 SGD
        , ProductPrice 45 0 USD
        , ProductPrice 350 0 HKD
        , ProductPrice 169 0 AED
        , ProductPrice 65 0 NZD
        ]
        [ DimensionValue "caramel" (Dimension "Color")
        , DimensionValue "leather" (Dimension "Material")
        , DimensionValue "facebook" (Dimension "Product Feed")
        , DimensionValue "google_shopping" (Dimension "Product Feed")
        , DimensionValue "instagram" (Dimension "Product Feed")
        , DimensionValue "rakuten_affiliate" (Dimension "Product Feed")
        , DimensionValue "Plain Case" (Dimension "Product Range")
        , DimensionValue "Phone Case" (Dimension "Product Style")
        , DimensionValue "Phone Case" (Dimension "Product Type")
        , DimensionValue "small" (Dimension "Shipping Sizes")
        , DimensionValue "pixel4xl" (Dimension "Size")
        , DimensionValue "PCEA" (Dimension "Style")
        ]
    , Product
        (ProductSku "PCED-COR-107")
        (ProductName "Leather Case for Pixel - Coral")
        [ ProductPrice 59 0 AUD
        , ProductPrice 55 0 CAD
        , ProductPrice 45 0 EUR
        , ProductPrice 35 0 GBP
        , ProductPrice 6200 0 JPY
        , ProductPrice 65 0 SGD
        , ProductPrice 45 0 USD
        , ProductPrice 350 0 HKD
        , ProductPrice 169 0 AED
        , ProductPrice 65 0 NZD
        ]
        [ DimensionValue "coral" (Dimension "Color")
        , DimensionValue "leather" (Dimension "Material")
        , DimensionValue "facebook" (Dimension "Product Feed")
        , DimensionValue "google_shopping" (Dimension "Product Feed")
        , DimensionValue "instagram" (Dimension "Product Feed")
        , DimensionValue "rakuten_affiliate" (Dimension "Product Feed")
        , DimensionValue "Plain Case" (Dimension "Product Range")
        , DimensionValue "Phone Case" (Dimension "Product Style")
        , DimensionValue "Phone Case" (Dimension "Product Type")
        , DimensionValue "small" (Dimension "Shipping Sizes")
        , DimensionValue "pixel4xl" (Dimension "Size")
        , DimensionValue "PCEA" (Dimension "Style")
        ]
    , Product
        (ProductSku "PCED-GRA-107")
        (ProductName "Leather Case for Pixel - Graphite")
        [ ProductPrice 59 0 AUD
        , ProductPrice 55 0 CAD
        , ProductPrice 45 0 EUR
        , ProductPrice 35 0 GBP
        , ProductPrice 6200 0 JPY
        , ProductPrice 65 0 SGD
        , ProductPrice 45 0 USD
        , ProductPrice 350 0 HKD
        , ProductPrice 169 0 AED
        , ProductPrice 65 0 NZD
        ]
        [ DimensionValue "graphite" (Dimension "Color")
        , DimensionValue "leather" (Dimension "Material")
        , DimensionValue "facebook" (Dimension "Product Feed")
        , DimensionValue "google_shopping" (Dimension "Product Feed")
        , DimensionValue "instagram" (Dimension "Product Feed")
        , DimensionValue "rakuten_affiliate" (Dimension "Product Feed")
        , DimensionValue "Plain Case" (Dimension "Product Range")
        , DimensionValue "Phone Case" (Dimension "Product Style")
        , DimensionValue "Phone Case" (Dimension "Product Type")
        , DimensionValue "small" (Dimension "Shipping Sizes")
        , DimensionValue "pixel4xl" (Dimension "Size")
        , DimensionValue "PCEA" (Dimension "Style")
        ]
    , Product
        (ProductSku "PCHA-BLACK")
        (ProductName "Leather Case for Pixel - Black")
        [ ProductPrice 230 0 HKD
        , ProductPrice 39 0 AUD
        , ProductPrice 35 0 CAD
        , ProductPrice 29 0 EUR
        , ProductPrice 25 0 GBP
        , ProductPrice 39 0 SGD
        , ProductPrice 29 0 USD
        , ProductPrice 4000 0 JPY
        , ProductPrice 109 0 AED
        , ProductPrice 45 0 NZD
        ]
        [ DimensionValue "black" (Dimension "Color")
        , DimensionValue "facebook" (Dimension "Product Feed")
        , DimensionValue "google_shopping" (Dimension "Product Feed")
        , DimensionValue "instagram" (Dimension "Product Feed")
        , DimensionValue "rakuten_affiliate" (Dimension "Product Feed")
        , DimensionValue "Plain Case" (Dimension "Product Range")
        , DimensionValue "Phone Case" (Dimension "Product Style")
        , DimensionValue "Phone Case" (Dimension "Product Type")
        , DimensionValue "low-value-product" (Dimension "Promotion Tag")
        , DimensionValue "small" (Dimension "Shipping Sizes")
        , DimensionValue "pixel2" (Dimension "Size")
        , DimensionValue "PCHA" (Dimension "Style")
        ]
    , Product
        (ProductSku "PCHA-CARAMEL")
        (ProductName "Leather Case for Pixel - Caramel")
        [ ProductPrice 39 0 AUD
        , ProductPrice 35 0 CAD
        , ProductPrice 29 0 EUR
        , ProductPrice 25 0 GBP
        , ProductPrice 39 0 SGD
        , ProductPrice 29 0 USD
        , ProductPrice 230 0 HKD
        , ProductPrice 4000 0 JPY
        , ProductPrice 109 0 AED
        , ProductPrice 45 0 NZD
        ]
        [ DimensionValue "caramel" (Dimension "Color")
        , DimensionValue "facebook" (Dimension "Product Feed")
        , DimensionValue "google_shopping" (Dimension "Product Feed")
        , DimensionValue "instagram" (Dimension "Product Feed")
        , DimensionValue "rakuten_affiliate" (Dimension "Product Feed")
        , DimensionValue "Plain Case" (Dimension "Product Range")
        , DimensionValue "Phone Case" (Dimension "Product Style")
        , DimensionValue "Phone Case" (Dimension "Product Type")
        , DimensionValue "low-value-product" (Dimension "Promotion Tag")
        , DimensionValue "small" (Dimension "Shipping Sizes")
        , DimensionValue "pixel2" (Dimension "Size")
        , DimensionValue "PCHA" (Dimension "Style")
        ]
    , Product
        (ProductSku "PCHA-NAVY")
        (ProductName "Leather Case for Pixel - Navy")
        [ ProductPrice 230 0 HKD
        , ProductPrice 39 0 AUD
        , ProductPrice 35 0 CAD
        , ProductPrice 29 0 EUR
        , ProductPrice 25 0 GBP
        , ProductPrice 39 0 SGD
        , ProductPrice 29 0 USD
        , ProductPrice 4000 0 JPY
        , ProductPrice 109 0 AED
        , ProductPrice 45 0 NZD
        ]
        [ DimensionValue "navy" (Dimension "Color")
        , DimensionValue "facebook" (Dimension "Product Feed")
        , DimensionValue "google_shopping" (Dimension "Product Feed")
        , DimensionValue "instagram" (Dimension "Product Feed")
        , DimensionValue "rakuten_affiliate" (Dimension "Product Feed")
        , DimensionValue "Plain Case" (Dimension "Product Range")
        , DimensionValue "Phone Case" (Dimension "Product Style")
        , DimensionValue "Phone Case" (Dimension "Product Type")
        , DimensionValue "low-value-product" (Dimension "Promotion Tag")
        , DimensionValue "small" (Dimension "Shipping Sizes")
        , DimensionValue "pixel2" (Dimension "Size")
        , DimensionValue "PCHA" (Dimension "Style")
        ]
    , Product
        (ProductSku "PCHA-STONE")
        (ProductName "Leather Case for Pixel - Stone")
        [ ProductPrice 25 0 GBP
        , ProductPrice 39 0 SGD
        , ProductPrice 29 0 USD
        , ProductPrice 230 0 HKD
        , ProductPrice 39 0 AUD
        , ProductPrice 35 0 CAD
        , ProductPrice 29 0 EUR
        , ProductPrice 4000 0 JPY
        , ProductPrice 109 0 AED
        , ProductPrice 45 0 NZD
        ]
        [ DimensionValue "stone" (Dimension "Color")
        , DimensionValue "facebook" (Dimension "Product Feed")
        , DimensionValue "google_shopping" (Dimension "Product Feed")
        , DimensionValue "instagram" (Dimension "Product Feed")
        , DimensionValue "rakuten_affiliate" (Dimension "Product Feed")
        , DimensionValue "Plain Case" (Dimension "Product Range")
        , DimensionValue "Phone Case" (Dimension "Product Style")
        , DimensionValue "Phone Case" (Dimension "Product Type")
        , DimensionValue "low-value-product" (Dimension "Promotion Tag")
        , DimensionValue "small" (Dimension "Shipping Sizes")
        , DimensionValue "pixel2" (Dimension "Size")
        , DimensionValue "PCHA" (Dimension "Style")
        ]
    , Product
        (ProductSku "PCHB-BLACK")
        (ProductName "Leather Case 3 Card for Pixel - Black")
        [ ProductPrice 59 0 CAD
        , ProductPrice 49 0 EUR
        , ProductPrice 69 0 SGD
        , ProductPrice 49 0 USD
        , ProductPrice 65 0 AUD
        , ProductPrice 39 0 GBP
        , ProductPrice 390 0 HKD
        , ProductPrice 6800 0 JPY
        , ProductPrice 189 0 AED
        , ProductPrice 69 0 NZD
        ]
        [ DimensionValue "black" (Dimension "Color")
        , DimensionValue "leather" (Dimension "Material")
        , DimensionValue "facebook" (Dimension "Product Feed")
        , DimensionValue "google_shopping" (Dimension "Product Feed")
        , DimensionValue "instagram" (Dimension "Product Feed")
        , DimensionValue "rakuten_affiliate" (Dimension "Product Feed")
        , DimensionValue "Card Case" (Dimension "Product Range")
        , DimensionValue "Phone Case 3 Card" (Dimension "Product Style")
        , DimensionValue "Phone Case" (Dimension "Product Type")
        , DimensionValue "small" (Dimension "Shipping Sizes")
        , DimensionValue "pixel2" (Dimension "Size")
        , DimensionValue "3 cards" (Dimension "Storage")
        , DimensionValue "Phone" (Dimension "Storage")
        , DimensionValue "PCHB" (Dimension "Style")
        ]
    , Product
        (ProductSku "PCHB-CARAMEL")
        (ProductName "Leather Case 3 Card for Pixel - Caramel")
        [ ProductPrice 59 0 CAD
        , ProductPrice 49 0 EUR
        , ProductPrice 69 0 SGD
        , ProductPrice 49 0 USD
        , ProductPrice 65 0 AUD
        , ProductPrice 39 0 GBP
        , ProductPrice 390 0 HKD
        , ProductPrice 6800 0 JPY
        , ProductPrice 189 0 AED
        , ProductPrice 69 0 NZD
        ]
        [ DimensionValue "caramel" (Dimension "Color")
        , DimensionValue "leather" (Dimension "Material")
        , DimensionValue "facebook" (Dimension "Product Feed")
        , DimensionValue "google_shopping" (Dimension "Product Feed")
        , DimensionValue "instagram" (Dimension "Product Feed")
        , DimensionValue "rakuten_affiliate" (Dimension "Product Feed")
        , DimensionValue "Card Case" (Dimension "Product Range")
        , DimensionValue "Phone Case 3 Card" (Dimension "Product Style")
        , DimensionValue "Phone Case" (Dimension "Product Type")
        , DimensionValue "small" (Dimension "Shipping Sizes")
        , DimensionValue "pixel2" (Dimension "Size")
        , DimensionValue "3 cards" (Dimension "Storage")
        , DimensionValue "Phone" (Dimension "Storage")
        , DimensionValue "PCHB" (Dimension "Style")
        ]
    , Product
        (ProductSku "PCHB-NAVY")
        (ProductName "Leather Case 3 Card for Pixel - Navy")
        [ ProductPrice 65 0 AUD
        , ProductPrice 39 0 GBP
        , ProductPrice 59 0 CAD
        , ProductPrice 49 0 EUR
        , ProductPrice 69 0 SGD
        , ProductPrice 49 0 USD
        , ProductPrice 390 0 HKD
        , ProductPrice 6800 0 JPY
        , ProductPrice 189 0 AED
        , ProductPrice 69 0 NZD
        ]
        [ DimensionValue "navy" (Dimension "Color")
        , DimensionValue "leather" (Dimension "Material")
        , DimensionValue "facebook" (Dimension "Product Feed")
        , DimensionValue "google_shopping" (Dimension "Product Feed")
        , DimensionValue "instagram" (Dimension "Product Feed")
        , DimensionValue "rakuten_affiliate" (Dimension "Product Feed")
        , DimensionValue "Card Case" (Dimension "Product Range")
        , DimensionValue "Phone Case 3 Card" (Dimension "Product Style")
        , DimensionValue "Phone Case" (Dimension "Product Type")
        , DimensionValue "small" (Dimension "Shipping Sizes")
        , DimensionValue "pixel2" (Dimension "Size")
        , DimensionValue "3 cards" (Dimension "Storage")
        , DimensionValue "Phone" (Dimension "Storage")
        , DimensionValue "PCHB" (Dimension "Style")
        ]
    , Product
        (ProductSku "PCHB-STONE")
        (ProductName "Leather Case 3 Card for Pixel - Stone")
        [ ProductPrice 59 0 CAD
        , ProductPrice 49 0 EUR
        , ProductPrice 69 0 SGD
        , ProductPrice 49 0 USD
        , ProductPrice 65 0 AUD
        , ProductPrice 39 0 GBP
        , ProductPrice 390 0 HKD
        , ProductPrice 6800 0 JPY
        , ProductPrice 189 0 AED
        , ProductPrice 69 0 NZD
        ]
        [ DimensionValue "stone" (Dimension "Color")
        , DimensionValue "leather" (Dimension "Material")
        , DimensionValue "facebook" (Dimension "Product Feed")
        , DimensionValue "google_shopping" (Dimension "Product Feed")
        , DimensionValue "instagram" (Dimension "Product Feed")
        , DimensionValue "rakuten_affiliate" (Dimension "Product Feed")
        , DimensionValue "Card Case" (Dimension "Product Range")
        , DimensionValue "Phone Case 3 Card" (Dimension "Product Style")
        , DimensionValue "Phone Case" (Dimension "Product Type")
        , DimensionValue "small" (Dimension "Shipping Sizes")
        , DimensionValue "pixel2" (Dimension "Size")
        , DimensionValue "3 cards" (Dimension "Storage")
        , DimensionValue "Phone" (Dimension "Storage")
        , DimensionValue "PCHB" (Dimension "Style")
        ]
    , Product
        (ProductSku "PCLA-BLACK")
        (ProductName "Leather Case for Pixel - Black")
        [ ProductPrice 45 0 AUD
        , ProductPrice 45 0 CAD
        , ProductPrice 35 0 EUR
        , ProductPrice 29 0 GBP
        , ProductPrice 49 0 SGD
        , ProductPrice 35 0 USD
        , ProductPrice 270 0 HKD
        , ProductPrice 4800 0 JPY
        , ProductPrice 129 0 AED
        , ProductPrice 49 0 NZD
        ]
        [ DimensionValue "black" (Dimension "Color")
        , DimensionValue "facebook" (Dimension "Product Feed")
        , DimensionValue "google_shopping" (Dimension "Product Feed")
        , DimensionValue "instagram" (Dimension "Product Feed")
        , DimensionValue "rakuten_affiliate" (Dimension "Product Feed")
        , DimensionValue "Plain Case" (Dimension "Product Range")
        , DimensionValue "Phone Case" (Dimension "Product Style")
        , DimensionValue "Phone Case" (Dimension "Product Type")
        , DimensionValue "small" (Dimension "Shipping Sizes")
        , DimensionValue "pixel2xl" (Dimension "Size")
        , DimensionValue "PCHA" (Dimension "Style")
        ]
    , Product
        (ProductSku "PCLA-CARAMEL")
        (ProductName "Leather Case for Pixel - Caramel")
        [ ProductPrice 45 0 AUD
        , ProductPrice 45 0 CAD
        , ProductPrice 35 0 EUR
        , ProductPrice 29 0 GBP
        , ProductPrice 49 0 SGD
        , ProductPrice 35 0 USD
        , ProductPrice 270 0 HKD
        , ProductPrice 4800 0 JPY
        , ProductPrice 129 0 AED
        , ProductPrice 49 0 NZD
        ]
        [ DimensionValue "caramel" (Dimension "Color")
        , DimensionValue "facebook" (Dimension "Product Feed")
        , DimensionValue "google_shopping" (Dimension "Product Feed")
        , DimensionValue "instagram" (Dimension "Product Feed")
        , DimensionValue "rakuten_affiliate" (Dimension "Product Feed")
        , DimensionValue "Plain Case" (Dimension "Product Range")
        , DimensionValue "Phone Case" (Dimension "Product Style")
        , DimensionValue "Phone Case" (Dimension "Product Type")
        , DimensionValue "small" (Dimension "Shipping Sizes")
        , DimensionValue "pixel2xl" (Dimension "Size")
        , DimensionValue "PCHA" (Dimension "Style")
        ]
    , Product
        (ProductSku "PCLA-NAVY")
        (ProductName "Leather Case for Pixel - Navy")
        [ ProductPrice 45 0 AUD
        , ProductPrice 45 0 CAD
        , ProductPrice 35 0 EUR
        , ProductPrice 29 0 GBP
        , ProductPrice 49 0 SGD
        , ProductPrice 35 0 USD
        , ProductPrice 270 0 HKD
        , ProductPrice 4800 0 JPY
        , ProductPrice 129 0 AED
        , ProductPrice 49 0 NZD
        ]
        [ DimensionValue "navy" (Dimension "Color")
        , DimensionValue "facebook" (Dimension "Product Feed")
        , DimensionValue "google_shopping" (Dimension "Product Feed")
        , DimensionValue "instagram" (Dimension "Product Feed")
        , DimensionValue "rakuten_affiliate" (Dimension "Product Feed")
        , DimensionValue "Plain Case" (Dimension "Product Range")
        , DimensionValue "Phone Case" (Dimension "Product Style")
        , DimensionValue "Phone Case" (Dimension "Product Type")
        , DimensionValue "small" (Dimension "Shipping Sizes")
        , DimensionValue "pixel2xl" (Dimension "Size")
        , DimensionValue "PCHA" (Dimension "Style")
        ]
    , Product
        (ProductSku "PCLA-STONE")
        (ProductName "Leather Case for Pixel - Stone")
        [ ProductPrice 45 0 AUD
        , ProductPrice 45 0 CAD
        , ProductPrice 35 0 EUR
        , ProductPrice 29 0 GBP
        , ProductPrice 49 0 SGD
        , ProductPrice 35 0 USD
        , ProductPrice 270 0 HKD
        , ProductPrice 4800 0 JPY
        , ProductPrice 129 0 AED
        , ProductPrice 49 0 NZD
        ]
        [ DimensionValue "stone" (Dimension "Color")
        , DimensionValue "facebook" (Dimension "Product Feed")
        , DimensionValue "google_shopping" (Dimension "Product Feed")
        , DimensionValue "instagram" (Dimension "Product Feed")
        , DimensionValue "rakuten_affiliate" (Dimension "Product Feed")
        , DimensionValue "Plain Case" (Dimension "Product Range")
        , DimensionValue "Phone Case" (Dimension "Product Style")
        , DimensionValue "Phone Case" (Dimension "Product Type")
        , DimensionValue "small" (Dimension "Shipping Sizes")
        , DimensionValue "pixel2xl" (Dimension "Size")
        , DimensionValue "PCHA" (Dimension "Style")
        ]
    , Product
        (ProductSku "PCLB-BLACK")
        (ProductName "Leather Case 3 card for Pixel - Black")
        [ ProductPrice 75 0 AUD
        , ProductPrice 69 0 CAD
        , ProductPrice 55 0 EUR
        , ProductPrice 79 0 SGD
        , ProductPrice 55 0 USD
        , ProductPrice 39 0 GBP
        , ProductPrice 430 0 HKD
        , ProductPrice 7500 0 JPY
        , ProductPrice 209 0 AED
        , ProductPrice 79 0 NZD
        ]
        [ DimensionValue "black" (Dimension "Color")
        , DimensionValue "leather" (Dimension "Material")
        , DimensionValue "facebook" (Dimension "Product Feed")
        , DimensionValue "google_shopping" (Dimension "Product Feed")
        , DimensionValue "instagram" (Dimension "Product Feed")
        , DimensionValue "rakuten_affiliate" (Dimension "Product Feed")
        , DimensionValue "Card Case" (Dimension "Product Range")
        , DimensionValue "Phone Case 3 Card" (Dimension "Product Style")
        , DimensionValue "Phone Case" (Dimension "Product Type")
        , DimensionValue "small" (Dimension "Shipping Sizes")
        , DimensionValue "pixel2xl" (Dimension "Size")
        , DimensionValue "3 cards" (Dimension "Storage")
        , DimensionValue "Phone" (Dimension "Storage")
        , DimensionValue "PCHB" (Dimension "Style")
        ]
    , Product
        (ProductSku "PCLB-CARAMEL")
        (ProductName "Leather Case 3 card for Pixel - Caramel")
        [ ProductPrice 75 0 AUD
        , ProductPrice 69 0 CAD
        , ProductPrice 55 0 EUR
        , ProductPrice 79 0 SGD
        , ProductPrice 55 0 USD
        , ProductPrice 39 0 GBP
        , ProductPrice 430 0 HKD
        , ProductPrice 7500 0 JPY
        , ProductPrice 209 0 AED
        , ProductPrice 79 0 NZD
        ]
        [ DimensionValue "caramel" (Dimension "Color")
        , DimensionValue "leather" (Dimension "Material")
        , DimensionValue "facebook" (Dimension "Product Feed")
        , DimensionValue "google_shopping" (Dimension "Product Feed")
        , DimensionValue "instagram" (Dimension "Product Feed")
        , DimensionValue "rakuten_affiliate" (Dimension "Product Feed")
        , DimensionValue "Card Case" (Dimension "Product Range")
        , DimensionValue "Phone Case 3 Card" (Dimension "Product Style")
        , DimensionValue "Phone Case" (Dimension "Product Type")
        , DimensionValue "small" (Dimension "Shipping Sizes")
        , DimensionValue "pixel2xl" (Dimension "Size")
        , DimensionValue "3 cards" (Dimension "Storage")
        , DimensionValue "Phone" (Dimension "Storage")
        , DimensionValue "PCHB" (Dimension "Style")
        ]
    , Product
        (ProductSku "PCLB-NAVY")
        (ProductName "Leather Case 3 card for Pixel - Navy")
        [ ProductPrice 430 0 HKD
        , ProductPrice 75 0 AUD
        , ProductPrice 69 0 CAD
        , ProductPrice 55 0 EUR
        , ProductPrice 39 0 GBP
        , ProductPrice 79 0 SGD
        , ProductPrice 55 0 USD
        , ProductPrice 7500 0 JPY
        , ProductPrice 209 0 AED
        , ProductPrice 79 0 NZD
        ]
        [ DimensionValue "navy" (Dimension "Color")
        , DimensionValue "leather" (Dimension "Material")
        , DimensionValue "facebook" (Dimension "Product Feed")
        , DimensionValue "google_shopping" (Dimension "Product Feed")
        , DimensionValue "instagram" (Dimension "Product Feed")
        , DimensionValue "rakuten_affiliate" (Dimension "Product Feed")
        , DimensionValue "Card Case" (Dimension "Product Range")
        , DimensionValue "Phone Case 3 Card" (Dimension "Product Style")
        , DimensionValue "Phone Case" (Dimension "Product Type")
        , DimensionValue "small" (Dimension "Shipping Sizes")
        , DimensionValue "pixel2xl" (Dimension "Size")
        , DimensionValue "3 cards" (Dimension "Storage")
        , DimensionValue "Phone" (Dimension "Storage")
        , DimensionValue "PCHB" (Dimension "Style")
        ]
    , Product
        (ProductSku "PCLB-STONE")
        (ProductName "Leather Case 3 card for Pixel - Stone")
        [ ProductPrice 430 0 HKD
        , ProductPrice 75 0 AUD
        , ProductPrice 69 0 CAD
        , ProductPrice 55 0 EUR
        , ProductPrice 79 0 SGD
        , ProductPrice 55 0 USD
        , ProductPrice 7500 0 JPY
        , ProductPrice 39 0 GBP
        , ProductPrice 209 0 AED
        , ProductPrice 79 0 NZD
        ]
        [ DimensionValue "stone" (Dimension "Color")
        , DimensionValue "leather" (Dimension "Material")
        , DimensionValue "facebook" (Dimension "Product Feed")
        , DimensionValue "google_shopping" (Dimension "Product Feed")
        , DimensionValue "instagram" (Dimension "Product Feed")
        , DimensionValue "rakuten_affiliate" (Dimension "Product Feed")
        , DimensionValue "Card Case" (Dimension "Product Range")
        , DimensionValue "Phone Case 3 Card" (Dimension "Product Style")
        , DimensionValue "Phone Case" (Dimension "Product Type")
        , DimensionValue "small" (Dimension "Shipping Sizes")
        , DimensionValue "pixel2xl" (Dimension "Size")
        , DimensionValue "3 cards" (Dimension "Storage")
        , DimensionValue "Phone" (Dimension "Storage")
        , DimensionValue "PCHB" (Dimension "Style")
        ]
    , Product
        (ProductSku "PCPC-JAVA")
        (ProductName "Phone Case - Java")
        [ ProductPrice 120 0 HKD
        , ProductPrice 19 0 AUD
        , ProductPrice 19 0 CAD
        , ProductPrice 15 0 EUR
        , ProductPrice 19 0 SGD
        , ProductPrice 15 0 USD
        , ProductPrice 12 0 GBP
        , ProductPrice 2000 0 JPY
        , ProductPrice 59 0 AED
        , ProductPrice 19 0 NZD
        ]
        [ DimensionValue "java" (Dimension "Color")
        , DimensionValue "facebook" (Dimension "Product Feed")
        , DimensionValue "google_shopping" (Dimension "Product Feed")
        , DimensionValue "instagram" (Dimension "Product Feed")
        , DimensionValue "rakuten_affiliate" (Dimension "Product Feed")
        , DimensionValue "Plain Case" (Dimension "Product Range")
        , DimensionValue "Phone Case" (Dimension "Product Style")
        , DimensionValue "Phone Case" (Dimension "Product Type")
        , DimensionValue "low-value-product" (Dimension "Promotion Tag")
        , DimensionValue "small" (Dimension "Shipping Sizes")
        , DimensionValue "i6plus" (Dimension "Size")
        , DimensionValue "i6splus" (Dimension "Size")
        , DimensionValue "iPhone 6s Plus" (Dimension "Storage")
        , DimensionValue "PCIC" (Dimension "Style")
        ]
    , Product
        (ProductSku "PCPD-CARAMELCHA")
        (ProductName "Phone Case – 1 Card - Caramel Charcoal")
        [ ProductPrice 150 0 HKD
        , ProductPrice 25 0 AUD
        , ProductPrice 25 0 CAD
        , ProductPrice 19 0 EUR
        , ProductPrice 29 0 SGD
        , ProductPrice 19 0 USD
        , ProductPrice 16 0 GBP
        , ProductPrice 2700 0 JPY
        , ProductPrice 70 0 AED
        , ProductPrice 29 0 NZD
        ]
        [ DimensionValue "caramel-charcoal" (Dimension "Color")
        , DimensionValue "facebook" (Dimension "Product Feed")
        , DimensionValue "google_shopping" (Dimension "Product Feed")
        , DimensionValue "instagram" (Dimension "Product Feed")
        , DimensionValue "rakuten_affiliate" (Dimension "Product Feed")
        , DimensionValue "Card Case" (Dimension "Product Range")
        , DimensionValue "Phone Case 1 Card" (Dimension "Product Style")
        , DimensionValue "Phone Case" (Dimension "Product Type")
        , DimensionValue "small" (Dimension "Shipping Sizes")
        , DimensionValue "i6plus" (Dimension "Size")
        , DimensionValue "i6splus" (Dimension "Size")
        , DimensionValue "Cards" (Dimension "Storage")
        , DimensionValue "iPhone 6s Plus" (Dimension "Storage")
        , DimensionValue "PCIA" (Dimension "Style")
        ]
    , Product
        (ProductSku "PCPD-CHARCOALTAM")
        (ProductName "Phone Case – 1 Card - Charcoal Tamarillo")
        [ ProductPrice 150 0 HKD
        , ProductPrice 25 0 AUD
        , ProductPrice 25 0 CAD
        , ProductPrice 19 0 EUR
        , ProductPrice 29 0 SGD
        , ProductPrice 19 0 USD
        , ProductPrice 16 0 GBP
        , ProductPrice 2700 0 JPY
        , ProductPrice 70 0 AED
        , ProductPrice 29 0 NZD
        ]
        [ DimensionValue "charcoal-tamarillo" (Dimension "Color")
        , DimensionValue "facebook" (Dimension "Product Feed")
        , DimensionValue "google_shopping" (Dimension "Product Feed")
        , DimensionValue "instagram" (Dimension "Product Feed")
        , DimensionValue "rakuten_affiliate" (Dimension "Product Feed")
        , DimensionValue "Card Case" (Dimension "Product Range")
        , DimensionValue "Phone Case 1 Card" (Dimension "Product Style")
        , DimensionValue "Phone Case" (Dimension "Product Type")
        , DimensionValue "low-value-product" (Dimension "Promotion Tag")
        , DimensionValue "small" (Dimension "Shipping Sizes")
        , DimensionValue "i6plus" (Dimension "Size")
        , DimensionValue "i6splus" (Dimension "Size")
        , DimensionValue "Cards" (Dimension "Storage")
        , DimensionValue "iPhone 6s Plus" (Dimension "Storage")
        , DimensionValue "PCIA" (Dimension "Style")
        ]
    , Product
        (ProductSku "PCPD-TAMARILLO")
        (ProductName "Phone Case – 1 Card - Tamarillo")
        [ ProductPrice 25 0 AUD
        , ProductPrice 25 0 CAD
        , ProductPrice 19 0 EUR
        , ProductPrice 29 0 SGD
        , ProductPrice 19 0 USD
        , ProductPrice 16 0 GBP
        , ProductPrice 2700 0 JPY
        , ProductPrice 150 0 HKD
        , ProductPrice 70 0 AED
        , ProductPrice 29 0 NZD
        ]
        [ DimensionValue "tamarillo" (Dimension "Color")
        , DimensionValue "facebook" (Dimension "Product Feed")
        , DimensionValue "google_shopping" (Dimension "Product Feed")
        , DimensionValue "instagram" (Dimension "Product Feed")
        , DimensionValue "rakuten_affiliate" (Dimension "Product Feed")
        , DimensionValue "Card Case" (Dimension "Product Range")
        , DimensionValue "Phone Case 1 Card" (Dimension "Product Style")
        , DimensionValue "Phone Case" (Dimension "Product Type")
        , DimensionValue "low-value-product" (Dimension "Promotion Tag")
        , DimensionValue "small" (Dimension "Shipping Sizes")
        , DimensionValue "i6plus" (Dimension "Size")
        , DimensionValue "i6splus" (Dimension "Size")
        , DimensionValue "Cards" (Dimension "Storage")
        , DimensionValue "iPhone 6s Plus" (Dimension "Storage")
        , DimensionValue "PCIA" (Dimension "Style")
        ]
    , Product
        (ProductSku "PCPF-BLACK")
        (ProductName "Phone Case - Black")
        [ ProductPrice 19 0 AUD
        , ProductPrice 19 0 CAD
        , ProductPrice 15 0 EUR
        , ProductPrice 19 0 SGD
        , ProductPrice 15 0 USD
        , ProductPrice 120 0 HKD
        , ProductPrice 2000 0 JPY
        , ProductPrice 12 0 GBP
        , ProductPrice 59 0 AED
        , ProductPrice 19 0 NZD
        ]
        [ DimensionValue "black" (Dimension "Color")
        , DimensionValue "facebook" (Dimension "Product Feed")
        , DimensionValue "google_shopping" (Dimension "Product Feed")
        , DimensionValue "instagram" (Dimension "Product Feed")
        , DimensionValue "rakuten_affiliate" (Dimension "Product Feed")
        , DimensionValue "Plain Case" (Dimension "Product Range")
        , DimensionValue "Phone Case" (Dimension "Product Style")
        , DimensionValue "Phone Case" (Dimension "Product Type")
        , DimensionValue "low-value-product" (Dimension "Promotion Tag")
        , DimensionValue "small" (Dimension "Shipping Sizes")
        , DimensionValue "i6plus" (Dimension "Size")
        , DimensionValue "iPhone 6 Plus" (Dimension "Storage")
        , DimensionValue "PCIC" (Dimension "Style")
        ]
    , Product
        (ProductSku "PCPF-CARAMELCHA")
        (ProductName "Phone Case - Caramel Charcoal")
        [ ProductPrice 19 0 AUD
        , ProductPrice 19 0 CAD
        , ProductPrice 15 0 EUR
        , ProductPrice 19 0 SGD
        , ProductPrice 15 0 USD
        , ProductPrice 2000 0 JPY
        , ProductPrice 12 0 GBP
        , ProductPrice 120 0 HKD
        , ProductPrice 59 0 AED
        , ProductPrice 19 0 NZD
        ]
        [ DimensionValue "caramel-charcoal" (Dimension "Color")
        , DimensionValue "facebook" (Dimension "Product Feed")
        , DimensionValue "google_shopping" (Dimension "Product Feed")
        , DimensionValue "instagram" (Dimension "Product Feed")
        , DimensionValue "rakuten_affiliate" (Dimension "Product Feed")
        , DimensionValue "Plain Case" (Dimension "Product Range")
        , DimensionValue "Phone Case" (Dimension "Product Style")
        , DimensionValue "Phone Case" (Dimension "Product Type")
        , DimensionValue "low-value-product" (Dimension "Promotion Tag")
        , DimensionValue "small" (Dimension "Shipping Sizes")
        , DimensionValue "i6plus" (Dimension "Size")
        , DimensionValue "iPhone 6 Plus" (Dimension "Storage")
        , DimensionValue "PCIC" (Dimension "Style")
        ]
    , Product
        (ProductSku "PCPF-CHARCOAL")
        (ProductName "Phone Case - Charcoal")
        [ ProductPrice 19 0 AUD
        , ProductPrice 19 0 CAD
        , ProductPrice 15 0 EUR
        , ProductPrice 19 0 SGD
        , ProductPrice 15 0 USD
        , ProductPrice 120 0 HKD
        , ProductPrice 2000 0 JPY
        , ProductPrice 12 0 GBP
        , ProductPrice 59 0 AED
        , ProductPrice 19 0 NZD
        ]
        [ DimensionValue "charcoal" (Dimension "Color")
        , DimensionValue "facebook" (Dimension "Product Feed")
        , DimensionValue "google_shopping" (Dimension "Product Feed")
        , DimensionValue "instagram" (Dimension "Product Feed")
        , DimensionValue "rakuten_affiliate" (Dimension "Product Feed")
        , DimensionValue "Plain Case" (Dimension "Product Range")
        , DimensionValue "Phone Case" (Dimension "Product Style")
        , DimensionValue "Phone Case" (Dimension "Product Type")
        , DimensionValue "low-value-product" (Dimension "Promotion Tag")
        , DimensionValue "small" (Dimension "Shipping Sizes")
        , DimensionValue "i6plus" (Dimension "Size")
        , DimensionValue "iPhone 6 Plus" (Dimension "Storage")
        , DimensionValue "PCIC" (Dimension "Style")
        ]
    , Product
        (ProductSku "PCPF-CHARCOALTAM")
        (ProductName "Phone Case - Charcoal Tamarillo")
        [ ProductPrice 19 0 AUD
        , ProductPrice 19 0 CAD
        , ProductPrice 15 0 EUR
        , ProductPrice 19 0 SGD
        , ProductPrice 15 0 USD
        , ProductPrice 2000 0 JPY
        , ProductPrice 12 0 GBP
        , ProductPrice 120 0 HKD
        , ProductPrice 59 0 AED
        , ProductPrice 19 0 NZD
        ]
        [ DimensionValue "charcoal-tamarillo" (Dimension "Color")
        , DimensionValue "facebook" (Dimension "Product Feed")
        , DimensionValue "google_shopping" (Dimension "Product Feed")
        , DimensionValue "instagram" (Dimension "Product Feed")
        , DimensionValue "rakuten_affiliate" (Dimension "Product Feed")
        , DimensionValue "Plain Case" (Dimension "Product Range")
        , DimensionValue "Phone Case" (Dimension "Product Style")
        , DimensionValue "Phone Case" (Dimension "Product Type")
        , DimensionValue "low-value-product" (Dimension "Promotion Tag")
        , DimensionValue "small" (Dimension "Shipping Sizes")
        , DimensionValue "i6plus" (Dimension "Size")
        , DimensionValue "iPhone 6 Plus" (Dimension "Storage")
        , DimensionValue "PCIC" (Dimension "Style")
        ]
    , Product
        (ProductSku "PCPF-JAVA")
        (ProductName "Phone Case - Java")
        [ ProductPrice 120 0 HKD
        , ProductPrice 19 0 AUD
        , ProductPrice 19 0 CAD
        , ProductPrice 15 0 EUR
        , ProductPrice 19 0 SGD
        , ProductPrice 15 0 USD
        , ProductPrice 2000 0 JPY
        , ProductPrice 12 0 GBP
        , ProductPrice 59 0 AED
        , ProductPrice 19 0 NZD
        ]
        [ DimensionValue "java" (Dimension "Color")
        , DimensionValue "facebook" (Dimension "Product Feed")
        , DimensionValue "google_shopping" (Dimension "Product Feed")
        , DimensionValue "instagram" (Dimension "Product Feed")
        , DimensionValue "rakuten_affiliate" (Dimension "Product Feed")
        , DimensionValue "Plain Case" (Dimension "Product Range")
        , DimensionValue "Phone Case" (Dimension "Product Style")
        , DimensionValue "Phone Case" (Dimension "Product Type")
        , DimensionValue "low-value-product" (Dimension "Promotion Tag")
        , DimensionValue "small" (Dimension "Shipping Sizes")
        , DimensionValue "i6plus" (Dimension "Size")
        , DimensionValue "iPhone 6 Plus" (Dimension "Storage")
        , DimensionValue "PCIC" (Dimension "Style")
        ]
    , Product
        (ProductSku "PCPF-TAMARILLO")
        (ProductName "Phone Case - Tamarillo")
        [ ProductPrice 19 0 AUD
        , ProductPrice 19 0 CAD
        , ProductPrice 15 0 EUR
        , ProductPrice 19 0 SGD
        , ProductPrice 15 0 USD
        , ProductPrice 2000 0 JPY
        , ProductPrice 12 0 GBP
        , ProductPrice 120 0 HKD
        , ProductPrice 59 0 AED
        , ProductPrice 19 0 NZD
        ]
        [ DimensionValue "tamarillo" (Dimension "Color")
        , DimensionValue "facebook" (Dimension "Product Feed")
        , DimensionValue "google_shopping" (Dimension "Product Feed")
        , DimensionValue "instagram" (Dimension "Product Feed")
        , DimensionValue "rakuten_affiliate" (Dimension "Product Feed")
        , DimensionValue "Plain Case" (Dimension "Product Range")
        , DimensionValue "Phone Case" (Dimension "Product Style")
        , DimensionValue "Phone Case" (Dimension "Product Type")
        , DimensionValue "low-value-product" (Dimension "Promotion Tag")
        , DimensionValue "small" (Dimension "Shipping Sizes")
        , DimensionValue "i6plus" (Dimension "Size")
        , DimensionValue "iPhone 6 Plus" (Dimension "Storage")
        , DimensionValue "PCIC" (Dimension "Style")
        ]
    , Product
        (ProductSku "PCSA-BLACK")
        (ProductName "Phone Case – 1 Card - Black")
        [ ProductPrice 150 0 HKD
        , ProductPrice 25 0 AUD
        , ProductPrice 25 0 CAD
        , ProductPrice 19 0 EUR
        , ProductPrice 16 0 GBP
        , ProductPrice 2700 0 JPY
        , ProductPrice 29 0 SGD
        , ProductPrice 19 0 USD
        , ProductPrice 70 0 AED
        , ProductPrice 29 0 NZD
        ]
        [ DimensionValue "black" (Dimension "Color")
        , DimensionValue "facebook" (Dimension "Product Feed")
        , DimensionValue "google_shopping" (Dimension "Product Feed")
        , DimensionValue "instagram" (Dimension "Product Feed")
        , DimensionValue "rakuten_affiliate" (Dimension "Product Feed")
        , DimensionValue "Card Case" (Dimension "Product Range")
        , DimensionValue "Phone Case 1 Card" (Dimension "Product Style")
        , DimensionValue "Phone Case" (Dimension "Product Type")
        , DimensionValue "small" (Dimension "Shipping Sizes")
        , DimensionValue "s7" (Dimension "Size")
        , DimensionValue "Cards" (Dimension "Storage")
        , DimensionValue "Samsung S7" (Dimension "Storage")
        , DimensionValue "PCIA" (Dimension "Style")
        ]
    , Product
        (ProductSku "PCSA-BLUESTEEL")
        (ProductName "Phone Case – 1 Card - Blue Steel")
        [ ProductPrice 150 0 HKD
        , ProductPrice 25 0 AUD
        , ProductPrice 25 0 CAD
        , ProductPrice 19 0 EUR
        , ProductPrice 16 0 GBP
        , ProductPrice 2700 0 JPY
        , ProductPrice 29 0 SGD
        , ProductPrice 19 0 USD
        , ProductPrice 70 0 AED
        , ProductPrice 29 0 NZD
        ]
        [ DimensionValue "blue_steel" (Dimension "Color")
        , DimensionValue "facebook" (Dimension "Product Feed")
        , DimensionValue "google_shopping" (Dimension "Product Feed")
        , DimensionValue "instagram" (Dimension "Product Feed")
        , DimensionValue "rakuten_affiliate" (Dimension "Product Feed")
        , DimensionValue "Card Case" (Dimension "Product Range")
        , DimensionValue "Phone Case 1 Card" (Dimension "Product Style")
        , DimensionValue "Phone Case" (Dimension "Product Type")
        , DimensionValue "small" (Dimension "Shipping Sizes")
        , DimensionValue "s7" (Dimension "Size")
        , DimensionValue "Cards" (Dimension "Storage")
        , DimensionValue "Samsung S7" (Dimension "Storage")
        , DimensionValue "PCIA" (Dimension "Style")
        ]
    , Product
        (ProductSku "PCSA-TAMARILLO")
        (ProductName "Phone Case – 1 Card - Tamarillo")
        [ ProductPrice 150 0 HKD
        , ProductPrice 25 0 AUD
        , ProductPrice 25 0 CAD
        , ProductPrice 19 0 EUR
        , ProductPrice 16 0 GBP
        , ProductPrice 2700 0 JPY
        , ProductPrice 29 0 SGD
        , ProductPrice 19 0 USD
        , ProductPrice 70 0 AED
        , ProductPrice 29 0 NZD
        ]
        [ DimensionValue "tamarillo" (Dimension "Color")
        , DimensionValue "facebook" (Dimension "Product Feed")
        , DimensionValue "google_shopping" (Dimension "Product Feed")
        , DimensionValue "instagram" (Dimension "Product Feed")
        , DimensionValue "rakuten_affiliate" (Dimension "Product Feed")
        , DimensionValue "Card Case" (Dimension "Product Range")
        , DimensionValue "Phone Case 1 Card" (Dimension "Product Style")
        , DimensionValue "Phone Case" (Dimension "Product Type")
        , DimensionValue "small" (Dimension "Shipping Sizes")
        , DimensionValue "s7" (Dimension "Size")
        , DimensionValue "Cards" (Dimension "Storage")
        , DimensionValue "Samsung S7" (Dimension "Storage")
        , DimensionValue "PCIA" (Dimension "Style")
        ]
    , Product
        (ProductSku "PCXD-BLK-107")
        (ProductName "Phone Case - Black")
        [ ProductPrice 55 0 AUD
        , ProductPrice 49 0 CAD
        , ProductPrice 39 0 EUR
        , ProductPrice 35 0 GBP
        , ProductPrice 5500 0 JPY
        , ProductPrice 59 0 SGD
        , ProductPrice 40 0 USD
        , ProductPrice 310 0 HKD
        , ProductPrice 149 0 AED
        , ProductPrice 55 0 NZD
        ]
        [ DimensionValue "black" (Dimension "Color")
        , DimensionValue "facebook" (Dimension "Product Feed")
        , DimensionValue "google_shopping" (Dimension "Product Feed")
        , DimensionValue "instagram" (Dimension "Product Feed")
        , DimensionValue "rakuten_affiliate" (Dimension "Product Feed")
        , DimensionValue "Plain Case" (Dimension "Product Range")
        , DimensionValue "Phone Case" (Dimension "Product Style")
        , DimensionValue "Phone Case" (Dimension "Product Type")
        , DimensionValue "small" (Dimension "Shipping Sizes")
        , DimensionValue "i11pro" (Dimension "Size")
        , DimensionValue "PCIC" (Dimension "Style")
        ]
    , Product
        (ProductSku "PCXD-CAR-101")
        (ProductName "Phone Case - Caramel")
        [ ProductPrice 55 0 AUD
        , ProductPrice 49 0 CAD
        , ProductPrice 39 0 EUR
        , ProductPrice 35 0 GBP
        , ProductPrice 5500 0 JPY
        , ProductPrice 59 0 SGD
        , ProductPrice 40 0 USD
        , ProductPrice 310 0 HKD
        , ProductPrice 149 0 AED
        , ProductPrice 55 0 NZD
        ]
        [ DimensionValue "caramel" (Dimension "Color")
        , DimensionValue "facebook" (Dimension "Product Feed")
        , DimensionValue "google_shopping" (Dimension "Product Feed")
        , DimensionValue "instagram" (Dimension "Product Feed")
        , DimensionValue "rakuten_affiliate" (Dimension "Product Feed")
        , DimensionValue "Plain Case" (Dimension "Product Range")
        , DimensionValue "Phone Case" (Dimension "Product Style")
        , DimensionValue "Phone Case" (Dimension "Product Type")
        , DimensionValue "small" (Dimension "Shipping Sizes")
        , DimensionValue "i11pro" (Dimension "Size")
        , DimensionValue "PCIC" (Dimension "Style")
        ]
    , Product
        (ProductSku "PCXD-COR-107")
        (ProductName "Phone Case - Coral")
        [ ProductPrice 55 0 AUD
        , ProductPrice 49 0 CAD
        , ProductPrice 39 0 EUR
        , ProductPrice 35 0 GBP
        , ProductPrice 5500 0 JPY
        , ProductPrice 59 0 SGD
        , ProductPrice 40 0 USD
        , ProductPrice 310 0 HKD
        , ProductPrice 149 0 AED
        , ProductPrice 55 0 NZD
        ]
        [ DimensionValue "coral" (Dimension "Color")
        , DimensionValue "facebook" (Dimension "Product Feed")
        , DimensionValue "google_shopping" (Dimension "Product Feed")
        , DimensionValue "instagram" (Dimension "Product Feed")
        , DimensionValue "rakuten_affiliate" (Dimension "Product Feed")
        , DimensionValue "Plain Case" (Dimension "Product Range")
        , DimensionValue "Phone Case" (Dimension "Product Style")
        , DimensionValue "Phone Case" (Dimension "Product Type")
        , DimensionValue "small" (Dimension "Shipping Sizes")
        , DimensionValue "i11pro" (Dimension "Size")
        , DimensionValue "PCIC" (Dimension "Style")
        ]
    , Product
        (ProductSku "PCXD-GRA-107")
        (ProductName "Phone Case - Graphite")
        [ ProductPrice 55 0 AUD
        , ProductPrice 49 0 CAD
        , ProductPrice 39 0 EUR
        , ProductPrice 35 0 GBP
        , ProductPrice 5500 0 JPY
        , ProductPrice 59 0 SGD
        , ProductPrice 40 0 USD
        , ProductPrice 310 0 HKD
        , ProductPrice 149 0 AED
        , ProductPrice 55 0 NZD
        ]
        [ DimensionValue "graphite" (Dimension "Color")
        , DimensionValue "facebook" (Dimension "Product Feed")
        , DimensionValue "google_shopping" (Dimension "Product Feed")
        , DimensionValue "instagram" (Dimension "Product Feed")
        , DimensionValue "rakuten_affiliate" (Dimension "Product Feed")
        , DimensionValue "Plain Case" (Dimension "Product Range")
        , DimensionValue "Phone Case" (Dimension "Product Style")
        , DimensionValue "Phone Case" (Dimension "Product Type")
        , DimensionValue "small" (Dimension "Shipping Sizes")
        , DimensionValue "i11pro" (Dimension "Size")
        , DimensionValue "PCIC" (Dimension "Style")
        ]
    , Product
        (ProductSku "PCYA-BLK-107")
        (ProductName "Phone Case - Black")
        [ ProductPrice 230 0 HKD
        , ProductPrice 39 0 AUD
        , ProductPrice 35 0 CAD
        , ProductPrice 29 0 EUR
        , ProductPrice 25 0 GBP
        , ProductPrice 4000 0 JPY
        , ProductPrice 39 0 SGD
        , ProductPrice 29 0 USD
        , ProductPrice 109 0 AED
        , ProductPrice 45 0 NZD
        ]
        [ DimensionValue "black" (Dimension "Color")
        , DimensionValue "facebook" (Dimension "Product Feed")
        , DimensionValue "google_shopping" (Dimension "Product Feed")
        , DimensionValue "instagram" (Dimension "Product Feed")
        , DimensionValue "rakuten_affiliate" (Dimension "Product Feed")
        , DimensionValue "Plain Case" (Dimension "Product Range")
        , DimensionValue "Phone Case" (Dimension "Product Style")
        , DimensionValue "Phone Case" (Dimension "Product Type")
        , DimensionValue "small" (Dimension "Shipping Sizes")
        , DimensionValue "xsmax" (Dimension "Size")
        , DimensionValue "Phone" (Dimension "Storage")
        , DimensionValue "PCIC" (Dimension "Style")
        ]
    , Product
        (ProductSku "PCYA-CAR-108")
        (ProductName "Phone Case - Caramel")
        [ ProductPrice 230 0 HKD
        , ProductPrice 39 0 AUD
        , ProductPrice 35 0 CAD
        , ProductPrice 29 0 EUR
        , ProductPrice 25 0 GBP
        , ProductPrice 39 0 SGD
        , ProductPrice 29 0 USD
        , ProductPrice 4000 0 JPY
        , ProductPrice 109 0 AED
        , ProductPrice 45 0 NZD
        ]
        [ DimensionValue "caramel" (Dimension "Color")
        , DimensionValue "facebook" (Dimension "Product Feed")
        , DimensionValue "google_shopping" (Dimension "Product Feed")
        , DimensionValue "instagram" (Dimension "Product Feed")
        , DimensionValue "rakuten_affiliate" (Dimension "Product Feed")
        , DimensionValue "Plain Case" (Dimension "Product Range")
        , DimensionValue "Phone Case" (Dimension "Product Style")
        , DimensionValue "Phone Case" (Dimension "Product Type")
        , DimensionValue "small" (Dimension "Shipping Sizes")
        , DimensionValue "xsmax" (Dimension "Size")
        , DimensionValue "Phone" (Dimension "Storage")
        , DimensionValue "PCIC" (Dimension "Style")
        ]
    , Product
        (ProductSku "PCYA-COR-107")
        (ProductName "Phone Case - Coral")
        [ ProductPrice 230 0 HKD
        , ProductPrice 39 0 AUD
        , ProductPrice 35 0 CAD
        , ProductPrice 29 0 EUR
        , ProductPrice 25 0 GBP
        , ProductPrice 4000 0 JPY
        , ProductPrice 39 0 SGD
        , ProductPrice 29 0 USD
        , ProductPrice 109 0 AED
        , ProductPrice 45 0 NZD
        ]
        [ DimensionValue "coral" (Dimension "Color")
        , DimensionValue "facebook" (Dimension "Product Feed")
        , DimensionValue "google_shopping" (Dimension "Product Feed")
        , DimensionValue "instagram" (Dimension "Product Feed")
        , DimensionValue "rakuten_affiliate" (Dimension "Product Feed")
        , DimensionValue "Plain Case" (Dimension "Product Range")
        , DimensionValue "Phone Case" (Dimension "Product Style")
        , DimensionValue "Phone Case" (Dimension "Product Type")
        , DimensionValue "small" (Dimension "Shipping Sizes")
        , DimensionValue "xsmax" (Dimension "Size")
        , DimensionValue "Phone" (Dimension "Storage")
        , DimensionValue "PCIC" (Dimension "Style")
        ]
    , Product
        (ProductSku "PCYA-GRA-107")
        (ProductName "Phone Case - Graphite")
        [ ProductPrice 230 0 HKD
        , ProductPrice 39 0 AUD
        , ProductPrice 35 0 CAD
        , ProductPrice 29 0 EUR
        , ProductPrice 25 0 GBP
        , ProductPrice 4000 0 JPY
        , ProductPrice 39 0 SGD
        , ProductPrice 29 0 USD
        , ProductPrice 109 0 AED
        , ProductPrice 45 0 NZD
        ]
        [ DimensionValue "graphite" (Dimension "Color")
        , DimensionValue "facebook" (Dimension "Product Feed")
        , DimensionValue "google_shopping" (Dimension "Product Feed")
        , DimensionValue "instagram" (Dimension "Product Feed")
        , DimensionValue "rakuten_affiliate" (Dimension "Product Feed")
        , DimensionValue "Plain Case" (Dimension "Product Range")
        , DimensionValue "Phone Case" (Dimension "Product Style")
        , DimensionValue "Phone Case" (Dimension "Product Type")
        , DimensionValue "small" (Dimension "Shipping Sizes")
        , DimensionValue "xsmax" (Dimension "Size")
        , DimensionValue "Phone" (Dimension "Storage")
        , DimensionValue "PCIC" (Dimension "Style")
        ]
    , Product
        (ProductSku "PCYA-NAV-107")
        (ProductName "Phone Case - Navy")
        [ ProductPrice 230 0 HKD
        , ProductPrice 39 0 AUD
        , ProductPrice 35 0 CAD
        , ProductPrice 29 0 EUR
        , ProductPrice 25 0 GBP
        , ProductPrice 4000 0 JPY
        , ProductPrice 39 0 SGD
        , ProductPrice 29 0 USD
        , ProductPrice 109 0 AED
        , ProductPrice 45 0 NZD
        ]
        [ DimensionValue "navy" (Dimension "Color")
        , DimensionValue "facebook" (Dimension "Product Feed")
        , DimensionValue "google_shopping" (Dimension "Product Feed")
        , DimensionValue "instagram" (Dimension "Product Feed")
        , DimensionValue "rakuten_affiliate" (Dimension "Product Feed")
        , DimensionValue "Plain Case" (Dimension "Product Range")
        , DimensionValue "Phone Case" (Dimension "Product Style")
        , DimensionValue "Phone Case" (Dimension "Product Type")
        , DimensionValue "small" (Dimension "Shipping Sizes")
        , DimensionValue "xsmax" (Dimension "Size")
        , DimensionValue "Phone" (Dimension "Storage")
        , DimensionValue "PCIC" (Dimension "Style")
        ]
    , Product
        (ProductSku "PCYB-BLK-107")
        (ProductName "Phone Case - Black")
        [ ProductPrice 59 0 AUD
        , ProductPrice 55 0 CAD
        , ProductPrice 45 0 EUR
        , ProductPrice 39 0 GBP
        , ProductPrice 6200 0 JPY
        , ProductPrice 65 0 SGD
        , ProductPrice 45 0 USD
        , ProductPrice 350 0 HKD
        , ProductPrice 169 0 AED
        , ProductPrice 65 0 NZD
        ]
        [ DimensionValue "black" (Dimension "Color")
        , DimensionValue "facebook" (Dimension "Product Feed")
        , DimensionValue "google_shopping" (Dimension "Product Feed")
        , DimensionValue "instagram" (Dimension "Product Feed")
        , DimensionValue "rakuten_affiliate" (Dimension "Product Feed")
        , DimensionValue "Plain Case" (Dimension "Product Range")
        , DimensionValue "Phone Case" (Dimension "Product Style")
        , DimensionValue "Phone Case" (Dimension "Product Type")
        , DimensionValue "small" (Dimension "Shipping Sizes")
        , DimensionValue "i11promax" (Dimension "Size")
        , DimensionValue "PCIC" (Dimension "Style")
        ]
    , Product
        (ProductSku "PCYB-CAR-101")
        (ProductName "Phone Case - Caramel")
        [ ProductPrice 59 0 AUD
        , ProductPrice 55 0 CAD
        , ProductPrice 45 0 EUR
        , ProductPrice 39 0 GBP
        , ProductPrice 6200 0 JPY
        , ProductPrice 65 0 SGD
        , ProductPrice 45 0 USD
        , ProductPrice 350 0 HKD
        , ProductPrice 169 0 AED
        , ProductPrice 65 0 NZD
        ]
        [ DimensionValue "caramel" (Dimension "Color")
        , DimensionValue "facebook" (Dimension "Product Feed")
        , DimensionValue "google_shopping" (Dimension "Product Feed")
        , DimensionValue "instagram" (Dimension "Product Feed")
        , DimensionValue "rakuten_affiliate" (Dimension "Product Feed")
        , DimensionValue "Plain Case" (Dimension "Product Range")
        , DimensionValue "Phone Case" (Dimension "Product Style")
        , DimensionValue "Phone Case" (Dimension "Product Type")
        , DimensionValue "small" (Dimension "Shipping Sizes")
        , DimensionValue "i11promax" (Dimension "Size")
        , DimensionValue "PCIC" (Dimension "Style")
        ]
    , Product
        (ProductSku "PCYB-COR-107")
        (ProductName "Phone Case - Coral")
        [ ProductPrice 59 0 AUD
        , ProductPrice 55 0 CAD
        , ProductPrice 45 0 EUR
        , ProductPrice 39 0 GBP
        , ProductPrice 6200 0 JPY
        , ProductPrice 65 0 SGD
        , ProductPrice 45 0 USD
        , ProductPrice 350 0 HKD
        , ProductPrice 169 0 AED
        , ProductPrice 65 0 NZD
        ]
        [ DimensionValue "coral" (Dimension "Color")
        , DimensionValue "facebook" (Dimension "Product Feed")
        , DimensionValue "google_shopping" (Dimension "Product Feed")
        , DimensionValue "instagram" (Dimension "Product Feed")
        , DimensionValue "rakuten_affiliate" (Dimension "Product Feed")
        , DimensionValue "Plain Case" (Dimension "Product Range")
        , DimensionValue "Phone Case" (Dimension "Product Style")
        , DimensionValue "Phone Case" (Dimension "Product Type")
        , DimensionValue "small" (Dimension "Shipping Sizes")
        , DimensionValue "i11promax" (Dimension "Size")
        , DimensionValue "PCIC" (Dimension "Style")
        ]
    , Product
        (ProductSku "PCYB-GRA-107")
        (ProductName "Phone Case - Graphite")
        [ ProductPrice 59 0 AUD
        , ProductPrice 55 0 CAD
        , ProductPrice 45 0 EUR
        , ProductPrice 39 0 GBP
        , ProductPrice 6200 0 JPY
        , ProductPrice 65 0 SGD
        , ProductPrice 45 0 USD
        , ProductPrice 350 0 HKD
        , ProductPrice 169 0 AED
        , ProductPrice 65 0 NZD
        ]
        [ DimensionValue "graphite" (Dimension "Color")
        , DimensionValue "facebook" (Dimension "Product Feed")
        , DimensionValue "google_shopping" (Dimension "Product Feed")
        , DimensionValue "instagram" (Dimension "Product Feed")
        , DimensionValue "rakuten_affiliate" (Dimension "Product Feed")
        , DimensionValue "Plain Case" (Dimension "Product Range")
        , DimensionValue "Phone Case" (Dimension "Product Style")
        , DimensionValue "Phone Case" (Dimension "Product Type")
        , DimensionValue "small" (Dimension "Shipping Sizes")
        , DimensionValue "i11promax" (Dimension "Size")
        , DimensionValue "PCIC" (Dimension "Style")
        ]
    , Product
        (ProductSku "PTAA-BLK-107")
        (ProductName "Phone Case – 3 Card - Black")
        [ ProductPrice 580 0 HKD
        , ProductPrice 89 0 AUD
        , ProductPrice 95 0 CAD
        , ProductPrice 75 0 EUR
        , ProductPrice 110 0 SGD
        , ProductPrice 75 0 USD
        , ProductPrice 10300 0 JPY
        , ProductPrice 65 0 GBP
        , ProductPrice 289 0 AED
        , ProductPrice 109 0 NZD
        ]
        [ DimensionValue "black" (Dimension "Color")
        , DimensionValue "facebook" (Dimension "Product Feed")
        , DimensionValue "google_shopping" (Dimension "Product Feed")
        , DimensionValue "instagram" (Dimension "Product Feed")
        , DimensionValue "rakuten_affiliate" (Dimension "Product Feed")
        , DimensionValue "Card Case" (Dimension "Product Range")
        , DimensionValue "Phone Case 3 Card" (Dimension "Product Style")
        , DimensionValue "Phone Case" (Dimension "Product Type")
        , DimensionValue "small" (Dimension "Shipping Sizes")
        , DimensionValue "xr" (Dimension "Size")
        , DimensionValue "Phone" (Dimension "Storage")
        , DimensionValue "PCIH" (Dimension "Style")
        ]
    , Product
        (ProductSku "PTAA-CAR-108")
        (ProductName "Phone Case – 3 Card - Caramel")
        [ ProductPrice 580 0 HKD
        , ProductPrice 89 0 AUD
        , ProductPrice 95 0 CAD
        , ProductPrice 75 0 EUR
        , ProductPrice 110 0 SGD
        , ProductPrice 75 0 USD
        , ProductPrice 10300 0 JPY
        , ProductPrice 65 0 GBP
        , ProductPrice 289 0 AED
        , ProductPrice 109 0 NZD
        ]
        [ DimensionValue "caramel" (Dimension "Color")
        , DimensionValue "facebook" (Dimension "Product Feed")
        , DimensionValue "google_shopping" (Dimension "Product Feed")
        , DimensionValue "instagram" (Dimension "Product Feed")
        , DimensionValue "rakuten_affiliate" (Dimension "Product Feed")
        , DimensionValue "Card Case" (Dimension "Product Range")
        , DimensionValue "Phone Case 3 Card" (Dimension "Product Style")
        , DimensionValue "Phone Case" (Dimension "Product Type")
        , DimensionValue "small" (Dimension "Shipping Sizes")
        , DimensionValue "xr" (Dimension "Size")
        , DimensionValue "Phone" (Dimension "Storage")
        , DimensionValue "PCIH" (Dimension "Style")
        ]
    , Product
        (ProductSku "PTAB-BLK-107")
        (ProductName "Phone Case – 3 Card - Black")
        [ ProductPrice 89 0 AUD
        , ProductPrice 95 0 CAD
        , ProductPrice 65 0 GBP
        , ProductPrice 75 0 EUR
        , ProductPrice 10300 0 JPY
        , ProductPrice 110 0 SGD
        , ProductPrice 75 0 USD
        , ProductPrice 580 0 HKD
        , ProductPrice 289 0 AED
        , ProductPrice 109 0 NZD
        ]
        [ DimensionValue "black" (Dimension "Color")
        , DimensionValue "facebook" (Dimension "Product Feed")
        , DimensionValue "google_shopping" (Dimension "Product Feed")
        , DimensionValue "instagram" (Dimension "Product Feed")
        , DimensionValue "rakuten_affiliate" (Dimension "Product Feed")
        , DimensionValue "Card Case" (Dimension "Product Range")
        , DimensionValue "Phone Case 3 Card" (Dimension "Product Style")
        , DimensionValue "Phone Case" (Dimension "Product Type")
        , DimensionValue "small" (Dimension "Shipping Sizes")
        , DimensionValue "i11" (Dimension "Size")
        , DimensionValue "PCIH" (Dimension "Style")
        ]
    , Product
        (ProductSku "PTAB-CAR-101")
        (ProductName "Phone Case – 3 Card - Caramel")
        [ ProductPrice 89 0 AUD
        , ProductPrice 95 0 CAD
        , ProductPrice 75 0 EUR
        , ProductPrice 65 0 GBP
        , ProductPrice 10300 0 JPY
        , ProductPrice 110 0 SGD
        , ProductPrice 75 0 USD
        , ProductPrice 580 0 HKD
        , ProductPrice 289 0 AED
        , ProductPrice 109 0 NZD
        ]
        [ DimensionValue "caramel" (Dimension "Color")
        , DimensionValue "facebook" (Dimension "Product Feed")
        , DimensionValue "google_shopping" (Dimension "Product Feed")
        , DimensionValue "instagram" (Dimension "Product Feed")
        , DimensionValue "rakuten_affiliate" (Dimension "Product Feed")
        , DimensionValue "Card Case" (Dimension "Product Range")
        , DimensionValue "Phone Case 3 Card" (Dimension "Product Style")
        , DimensionValue "Phone Case" (Dimension "Product Type")
        , DimensionValue "small" (Dimension "Shipping Sizes")
        , DimensionValue "i11" (Dimension "Size")
        , DimensionValue "PCIH" (Dimension "Style")
        ]
    , Product
        (ProductSku "PTAB-COR-107")
        (ProductName "Phone Case – 3 Card - Coral")
        [ ProductPrice 95 0 CAD
        , ProductPrice 75 0 EUR
        , ProductPrice 65 0 GBP
        , ProductPrice 10300 0 JPY
        , ProductPrice 110 0 SGD
        , ProductPrice 75 0 USD
        , ProductPrice 89 0 AUD
        , ProductPrice 580 0 HKD
        , ProductPrice 289 0 AED
        , ProductPrice 109 0 NZD
        ]
        [ DimensionValue "coral" (Dimension "Color")
        , DimensionValue "facebook" (Dimension "Product Feed")
        , DimensionValue "google_shopping" (Dimension "Product Feed")
        , DimensionValue "instagram" (Dimension "Product Feed")
        , DimensionValue "rakuten_affiliate" (Dimension "Product Feed")
        , DimensionValue "Card Case" (Dimension "Product Range")
        , DimensionValue "Phone Case 3 Card" (Dimension "Product Style")
        , DimensionValue "Phone Case" (Dimension "Product Type")
        , DimensionValue "small" (Dimension "Shipping Sizes")
        , DimensionValue "i11" (Dimension "Size")
        , DimensionValue "PCIH" (Dimension "Style")
        ]
    , Product
        (ProductSku "PTAB-GRA-107")
        (ProductName "Phone Case – 3 Card - Graphite")
        [ ProductPrice 95 0 CAD
        , ProductPrice 75 0 EUR
        , ProductPrice 65 0 GBP
        , ProductPrice 10300 0 JPY
        , ProductPrice 110 0 SGD
        , ProductPrice 75 0 USD
        , ProductPrice 580 0 HKD
        , ProductPrice 89 0 AUD
        , ProductPrice 289 0 AED
        , ProductPrice 109 0 NZD
        ]
        [ DimensionValue "graphite" (Dimension "Color")
        , DimensionValue "facebook" (Dimension "Product Feed")
        , DimensionValue "google_shopping" (Dimension "Product Feed")
        , DimensionValue "instagram" (Dimension "Product Feed")
        , DimensionValue "rakuten_affiliate" (Dimension "Product Feed")
        , DimensionValue "Card Case" (Dimension "Product Range")
        , DimensionValue "Phone Case 3 Card" (Dimension "Product Style")
        , DimensionValue "Phone Case" (Dimension "Product Type")
        , DimensionValue "small" (Dimension "Shipping Sizes")
        , DimensionValue "i11" (Dimension "Size")
        , DimensionValue "PCIH" (Dimension "Style")
        ]
    , Product
        (ProductSku "PTXB-BLK-107")
        (ProductName "Phone Case – 3 Card - Black")
        [ ProductPrice 89 0 AUD
        , ProductPrice 95 0 CAD
        , ProductPrice 75 0 EUR
        , ProductPrice 65 0 GBP
        , ProductPrice 10300 0 JPY
        , ProductPrice 110 0 SGD
        , ProductPrice 75 0 USD
        , ProductPrice 580 0 HKD
        , ProductPrice 289 0 AED
        , ProductPrice 109 0 NZD
        ]
        [ DimensionValue "black" (Dimension "Color")
        , DimensionValue "facebook" (Dimension "Product Feed")
        , DimensionValue "google_shopping" (Dimension "Product Feed")
        , DimensionValue "instagram" (Dimension "Product Feed")
        , DimensionValue "rakuten_affiliate" (Dimension "Product Feed")
        , DimensionValue "Card Case" (Dimension "Product Range")
        , DimensionValue "Phone Case 3 Card" (Dimension "Product Style")
        , DimensionValue "Phone Case" (Dimension "Product Type")
        , DimensionValue "small" (Dimension "Shipping Sizes")
        , DimensionValue "i11pro" (Dimension "Size")
        , DimensionValue "PCIH" (Dimension "Style")
        ]
    , Product
        (ProductSku "PTXB-CAR-101")
        (ProductName "Phone Case – 3 Card - Caramel")
        [ ProductPrice 89 0 AUD
        , ProductPrice 95 0 CAD
        , ProductPrice 75 0 EUR
        , ProductPrice 65 0 GBP
        , ProductPrice 10300 0 JPY
        , ProductPrice 110 0 SGD
        , ProductPrice 75 0 USD
        , ProductPrice 580 0 HKD
        , ProductPrice 289 0 AED
        , ProductPrice 109 0 NZD
        ]
        [ DimensionValue "caramel" (Dimension "Color")
        , DimensionValue "facebook" (Dimension "Product Feed")
        , DimensionValue "google_shopping" (Dimension "Product Feed")
        , DimensionValue "instagram" (Dimension "Product Feed")
        , DimensionValue "rakuten_affiliate" (Dimension "Product Feed")
        , DimensionValue "Card Case" (Dimension "Product Range")
        , DimensionValue "Phone Case 3 Card" (Dimension "Product Style")
        , DimensionValue "Phone Case" (Dimension "Product Type")
        , DimensionValue "small" (Dimension "Shipping Sizes")
        , DimensionValue "i11pro" (Dimension "Size")
        , DimensionValue "PCIH" (Dimension "Style")
        ]
    , Product
        (ProductSku "PTXB-COR-107")
        (ProductName "Phone Case – 3 Card - Coral")
        [ ProductPrice 89 0 AUD
        , ProductPrice 95 0 CAD
        , ProductPrice 75 0 EUR
        , ProductPrice 65 0 GBP
        , ProductPrice 10300 0 JPY
        , ProductPrice 110 0 SGD
        , ProductPrice 75 0 USD
        , ProductPrice 580 0 HKD
        , ProductPrice 289 0 AED
        , ProductPrice 109 0 NZD
        ]
        [ DimensionValue "coral" (Dimension "Color")
        , DimensionValue "facebook" (Dimension "Product Feed")
        , DimensionValue "google_shopping" (Dimension "Product Feed")
        , DimensionValue "instagram" (Dimension "Product Feed")
        , DimensionValue "rakuten_affiliate" (Dimension "Product Feed")
        , DimensionValue "Card Case" (Dimension "Product Range")
        , DimensionValue "Phone Case 3 Card" (Dimension "Product Style")
        , DimensionValue "Phone Case" (Dimension "Product Type")
        , DimensionValue "small" (Dimension "Shipping Sizes")
        , DimensionValue "i11pro" (Dimension "Size")
        , DimensionValue "PCIH" (Dimension "Style")
        ]
    , Product
        (ProductSku "PTXB-GRA-107")
        (ProductName "Phone Case – 3 Card - Graphite")
        [ ProductPrice 89 0 AUD
        , ProductPrice 95 0 CAD
        , ProductPrice 75 0 EUR
        , ProductPrice 65 0 GBP
        , ProductPrice 10300 0 JPY
        , ProductPrice 110 0 SGD
        , ProductPrice 75 0 USD
        , ProductPrice 580 0 HKD
        , ProductPrice 289 0 AED
        , ProductPrice 109 0 NZD
        ]
        [ DimensionValue "graphite" (Dimension "Color")
        , DimensionValue "facebook" (Dimension "Product Feed")
        , DimensionValue "google_shopping" (Dimension "Product Feed")
        , DimensionValue "instagram" (Dimension "Product Feed")
        , DimensionValue "rakuten_affiliate" (Dimension "Product Feed")
        , DimensionValue "Card Case" (Dimension "Product Range")
        , DimensionValue "Phone Case 3 Card" (Dimension "Product Style")
        , DimensionValue "Phone Case" (Dimension "Product Type")
        , DimensionValue "small" (Dimension "Shipping Sizes")
        , DimensionValue "i11pro" (Dimension "Size")
        , DimensionValue "PCIH" (Dimension "Style")
        ]
    , Product
        (ProductSku "PTYA-COR-107")
        (ProductName "Phone Case – 3 Card - Coral")
        [ ProductPrice 620 0 HKD
        , ProductPrice 99 0 AUD
        , ProductPrice 95 0 CAD
        , ProductPrice 79 0 EUR
        , ProductPrice 10800 0 JPY
        , ProductPrice 119 0 SGD
        , ProductPrice 79 0 USD
        , ProductPrice 65 0 GBP
        , ProductPrice 299 0 AED
        , ProductPrice 115 0 NZD
        ]
        [ DimensionValue "coral" (Dimension "Color")
        , DimensionValue "facebook" (Dimension "Product Feed")
        , DimensionValue "google_shopping" (Dimension "Product Feed")
        , DimensionValue "instagram" (Dimension "Product Feed")
        , DimensionValue "rakuten_affiliate" (Dimension "Product Feed")
        , DimensionValue "Card Case" (Dimension "Product Range")
        , DimensionValue "Phone Case 3 Card" (Dimension "Product Style")
        , DimensionValue "Phone Case" (Dimension "Product Type")
        , DimensionValue "small" (Dimension "Shipping Sizes")
        , DimensionValue "xsmax" (Dimension "Size")
        , DimensionValue "Phone" (Dimension "Storage")
        , DimensionValue "PCIH" (Dimension "Style")
        ]
    , Product
        (ProductSku "PTYB-BLK-107")
        (ProductName "Phone Case – 3 Card - Black")
        [ ProductPrice 99 0 AUD
        , ProductPrice 79 0 EUR
        , ProductPrice 10800 0 JPY
        , ProductPrice 119 0 SGD
        , ProductPrice 99 0 CAD
        , ProductPrice 69 0 GBP
        , ProductPrice 79 0 USD
        , ProductPrice 620 0 HKD
        , ProductPrice 299 0 AED
        , ProductPrice 115 0 NZD
        ]
        [ DimensionValue "black" (Dimension "Color")
        , DimensionValue "facebook" (Dimension "Product Feed")
        , DimensionValue "google_shopping" (Dimension "Product Feed")
        , DimensionValue "instagram" (Dimension "Product Feed")
        , DimensionValue "rakuten_affiliate" (Dimension "Product Feed")
        , DimensionValue "Card Case" (Dimension "Product Range")
        , DimensionValue "Phone Case 3 Card" (Dimension "Product Style")
        , DimensionValue "Phone Case" (Dimension "Product Type")
        , DimensionValue "small" (Dimension "Shipping Sizes")
        , DimensionValue "i11promax" (Dimension "Size")
        , DimensionValue "PCIH" (Dimension "Style")
        ]
    , Product
        (ProductSku "PTYB-CAR-101")
        (ProductName "Phone Case – 3 Card - Caramel")
        [ ProductPrice 99 0 AUD
        , ProductPrice 79 0 EUR
        , ProductPrice 10800 0 JPY
        , ProductPrice 119 0 SGD
        , ProductPrice 79 0 USD
        , ProductPrice 99 0 CAD
        , ProductPrice 69 0 GBP
        , ProductPrice 620 0 HKD
        , ProductPrice 299 0 AED
        , ProductPrice 115 0 NZD
        ]
        [ DimensionValue "caramel" (Dimension "Color")
        , DimensionValue "facebook" (Dimension "Product Feed")
        , DimensionValue "google_shopping" (Dimension "Product Feed")
        , DimensionValue "instagram" (Dimension "Product Feed")
        , DimensionValue "rakuten_affiliate" (Dimension "Product Feed")
        , DimensionValue "Card Case" (Dimension "Product Range")
        , DimensionValue "Phone Case 3 Card" (Dimension "Product Style")
        , DimensionValue "Phone Case" (Dimension "Product Type")
        , DimensionValue "small" (Dimension "Shipping Sizes")
        , DimensionValue "i11promax" (Dimension "Size")
        , DimensionValue "PCIH" (Dimension "Style")
        ]
    , Product
        (ProductSku "PTYB-COR-107")
        (ProductName "Phone Case – 3 Card - Coral")
        [ ProductPrice 99 0 AUD
        , ProductPrice 79 0 EUR
        , ProductPrice 10800 0 JPY
        , ProductPrice 119 0 SGD
        , ProductPrice 79 0 USD
        , ProductPrice 99 0 CAD
        , ProductPrice 69 0 GBP
        , ProductPrice 620 0 HKD
        , ProductPrice 299 0 AED
        , ProductPrice 115 0 NZD
        ]
        [ DimensionValue "coral" (Dimension "Color")
        , DimensionValue "facebook" (Dimension "Product Feed")
        , DimensionValue "google_shopping" (Dimension "Product Feed")
        , DimensionValue "instagram" (Dimension "Product Feed")
        , DimensionValue "rakuten_affiliate" (Dimension "Product Feed")
        , DimensionValue "Card Case" (Dimension "Product Range")
        , DimensionValue "Phone Case 3 Card" (Dimension "Product Style")
        , DimensionValue "Phone Case" (Dimension "Product Type")
        , DimensionValue "small" (Dimension "Shipping Sizes")
        , DimensionValue "i11promax" (Dimension "Size")
        , DimensionValue "PCIH" (Dimension "Style")
        ]
    , Product
        (ProductSku "PTYB-GRA-107")
        (ProductName "Phone Case – 3 Card - Graphite")
        [ ProductPrice 99 0 AUD
        , ProductPrice 79 0 EUR
        , ProductPrice 10800 0 JPY
        , ProductPrice 119 0 SGD
        , ProductPrice 79 0 USD
        , ProductPrice 99 0 CAD
        , ProductPrice 69 0 GBP
        , ProductPrice 620 0 HKD
        , ProductPrice 299 0 AED
        , ProductPrice 115 0 NZD
        ]
        [ DimensionValue "graphite" (Dimension "Color")
        , DimensionValue "facebook" (Dimension "Product Feed")
        , DimensionValue "google_shopping" (Dimension "Product Feed")
        , DimensionValue "instagram" (Dimension "Product Feed")
        , DimensionValue "rakuten_affiliate" (Dimension "Product Feed")
        , DimensionValue "Card Case" (Dimension "Product Range")
        , DimensionValue "Phone Case 3 Card" (Dimension "Product Style")
        , DimensionValue "Phone Case" (Dimension "Product Type")
        , DimensionValue "small" (Dimension "Shipping Sizes")
        , DimensionValue "i11promax" (Dimension "Size")
        , DimensionValue "PCIH" (Dimension "Style")
        ]
    , Product
        (ProductSku "PWEA-BLK-107")
        (ProductName "Leather Phone Wallet for Pixel - Black")
        [ ProductPrice 470 0 HKD
        , ProductPrice 85 0 AUD
        , ProductPrice 75 0 CAD
        , ProductPrice 59 0 EUR
        , ProductPrice 49 0 GBP
        , ProductPrice 8100 0 JPY
        , ProductPrice 79 0 SGD
        , ProductPrice 59 0 USD
        , ProductPrice 219 0 AED
        , ProductPrice 95 0 NZD
        ]
        [ DimensionValue "black" (Dimension "Color")
        , DimensionValue "leather" (Dimension "Material")
        , DimensionValue "facebook" (Dimension "Product Feed")
        , DimensionValue "google_shopping" (Dimension "Product Feed")
        , DimensionValue "instagram" (Dimension "Product Feed")
        , DimensionValue "rakuten_affiliate" (Dimension "Product Feed")
        , DimensionValue "Card Case" (Dimension "Product Range")
        , DimensionValue "Phone Wallet" (Dimension "Product Style")
        , DimensionValue "Phone Case" (Dimension "Product Type")
        , DimensionValue "small" (Dimension "Shipping Sizes")
        , DimensionValue "pixel3" (Dimension "Size")
        , DimensionValue "Phone" (Dimension "Storage")
        , DimensionValue "PWEA" (Dimension "Style")
        ]
    , Product
        (ProductSku "PWEA-CAR-108")
        (ProductName "Leather Phone Wallet for Pixel - Caramel")
        [ ProductPrice 470 0 HKD
        , ProductPrice 85 0 AUD
        , ProductPrice 75 0 CAD
        , ProductPrice 59 0 EUR
        , ProductPrice 49 0 GBP
        , ProductPrice 8100 0 JPY
        , ProductPrice 79 0 SGD
        , ProductPrice 59 0 USD
        , ProductPrice 219 0 AED
        , ProductPrice 95 0 NZD
        ]
        [ DimensionValue "caramel" (Dimension "Color")
        , DimensionValue "leather" (Dimension "Material")
        , DimensionValue "facebook" (Dimension "Product Feed")
        , DimensionValue "google_shopping" (Dimension "Product Feed")
        , DimensionValue "instagram" (Dimension "Product Feed")
        , DimensionValue "rakuten_affiliate" (Dimension "Product Feed")
        , DimensionValue "Card Case" (Dimension "Product Range")
        , DimensionValue "Phone Wallet" (Dimension "Product Style")
        , DimensionValue "Phone Case" (Dimension "Product Type")
        , DimensionValue "small" (Dimension "Shipping Sizes")
        , DimensionValue "pixel3" (Dimension "Size")
        , DimensionValue "Phone" (Dimension "Storage")
        , DimensionValue "PWEA" (Dimension "Style")
        ]
    , Product
        (ProductSku "PWEA-NAV-107")
        (ProductName "Leather Phone Wallet for Pixel - Navy")
        [ ProductPrice 470 0 HKD
        , ProductPrice 85 0 AUD
        , ProductPrice 75 0 CAD
        , ProductPrice 59 0 EUR
        , ProductPrice 49 0 GBP
        , ProductPrice 8100 0 JPY
        , ProductPrice 79 0 SGD
        , ProductPrice 59 0 USD
        , ProductPrice 219 0 AED
        , ProductPrice 95 0 NZD
        ]
        [ DimensionValue "navy" (Dimension "Color")
        , DimensionValue "leather" (Dimension "Material")
        , DimensionValue "facebook" (Dimension "Product Feed")
        , DimensionValue "google_shopping" (Dimension "Product Feed")
        , DimensionValue "instagram" (Dimension "Product Feed")
        , DimensionValue "rakuten_affiliate" (Dimension "Product Feed")
        , DimensionValue "Card Case" (Dimension "Product Range")
        , DimensionValue "Phone Wallet" (Dimension "Product Style")
        , DimensionValue "Phone Case" (Dimension "Product Type")
        , DimensionValue "small" (Dimension "Shipping Sizes")
        , DimensionValue "pixel3" (Dimension "Size")
        , DimensionValue "Phone" (Dimension "Storage")
        , DimensionValue "PWEA" (Dimension "Style")
        ]
    , Product
        (ProductSku "PWEB-BLK-107")
        (ProductName "Leather Phone Wallet for Pixel - Black")
        [ ProductPrice 510 0 HKD
        , ProductPrice 85 0 AUD
        , ProductPrice 75 0 CAD
        , ProductPrice 60 0 EUR
        , ProductPrice 45 0 GBP
        , ProductPrice 8900 0 JPY
        , ProductPrice 85 0 SGD
        , ProductPrice 65 0 USD
        , ProductPrice 249 0 AED
        , ProductPrice 89 0 NZD
        ]
        [ DimensionValue "black" (Dimension "Color")
        , DimensionValue "leather" (Dimension "Material")
        , DimensionValue "facebook" (Dimension "Product Feed")
        , DimensionValue "google_shopping" (Dimension "Product Feed")
        , DimensionValue "instagram" (Dimension "Product Feed")
        , DimensionValue "rakuten_affiliate" (Dimension "Product Feed")
        , DimensionValue "Card Case" (Dimension "Product Range")
        , DimensionValue "Phone Wallet" (Dimension "Product Style")
        , DimensionValue "Phone Case" (Dimension "Product Type")
        , DimensionValue "small" (Dimension "Shipping Sizes")
        , DimensionValue "pixel3xl" (Dimension "Size")
        , DimensionValue "Phone" (Dimension "Storage")
        , DimensionValue "PWEA" (Dimension "Style")
        ]
    , Product
        (ProductSku "PWEB-CAR-108")
        (ProductName "Leather Phone Wallet for Pixel - Caramel")
        [ ProductPrice 510 0 HKD
        , ProductPrice 85 0 AUD
        , ProductPrice 75 0 CAD
        , ProductPrice 60 0 EUR
        , ProductPrice 45 0 GBP
        , ProductPrice 8900 0 JPY
        , ProductPrice 85 0 SGD
        , ProductPrice 65 0 USD
        , ProductPrice 249 0 AED
        , ProductPrice 89 0 NZD
        ]
        [ DimensionValue "caramel" (Dimension "Color")
        , DimensionValue "leather" (Dimension "Material")
        , DimensionValue "facebook" (Dimension "Product Feed")
        , DimensionValue "google_shopping" (Dimension "Product Feed")
        , DimensionValue "instagram" (Dimension "Product Feed")
        , DimensionValue "rakuten_affiliate" (Dimension "Product Feed")
        , DimensionValue "Card Case" (Dimension "Product Range")
        , DimensionValue "Phone Wallet" (Dimension "Product Style")
        , DimensionValue "Phone Case" (Dimension "Product Type")
        , DimensionValue "small" (Dimension "Shipping Sizes")
        , DimensionValue "pixel3xl" (Dimension "Size")
        , DimensionValue "Phone" (Dimension "Storage")
        , DimensionValue "PWEA" (Dimension "Style")
        ]
    , Product
        (ProductSku "PWEB-GRA-107")
        (ProductName "Leather Phone Wallet for Pixel - Graphite")
        [ ProductPrice 510 0 HKD
        , ProductPrice 85 0 AUD
        , ProductPrice 75 0 CAD
        , ProductPrice 60 0 EUR
        , ProductPrice 45 0 GBP
        , ProductPrice 8900 0 JPY
        , ProductPrice 85 0 SGD
        , ProductPrice 65 0 USD
        , ProductPrice 249 0 AED
        , ProductPrice 89 0 NZD
        ]
        [ DimensionValue "graphite" (Dimension "Color")
        , DimensionValue "leather" (Dimension "Material")
        , DimensionValue "facebook" (Dimension "Product Feed")
        , DimensionValue "google_shopping" (Dimension "Product Feed")
        , DimensionValue "instagram" (Dimension "Product Feed")
        , DimensionValue "rakuten_affiliate" (Dimension "Product Feed")
        , DimensionValue "Card Case" (Dimension "Product Range")
        , DimensionValue "Phone Wallet" (Dimension "Product Style")
        , DimensionValue "Phone Case" (Dimension "Product Type")
        , DimensionValue "small" (Dimension "Shipping Sizes")
        , DimensionValue "pixel3xl" (Dimension "Size")
        , DimensionValue "Phone" (Dimension "Storage")
        , DimensionValue "PWEA" (Dimension "Style")
        ]
    , Product
        (ProductSku "PWEB-NAV-107")
        (ProductName "Leather Phone Wallet for Pixel - Navy")
        [ ProductPrice 510 0 HKD
        , ProductPrice 85 0 AUD
        , ProductPrice 75 0 CAD
        , ProductPrice 60 0 EUR
        , ProductPrice 45 0 GBP
        , ProductPrice 8900 0 JPY
        , ProductPrice 85 0 SGD
        , ProductPrice 65 0 USD
        , ProductPrice 249 0 AED
        , ProductPrice 89 0 NZD
        ]
        [ DimensionValue "navy" (Dimension "Color")
        , DimensionValue "leather" (Dimension "Material")
        , DimensionValue "facebook" (Dimension "Product Feed")
        , DimensionValue "google_shopping" (Dimension "Product Feed")
        , DimensionValue "instagram" (Dimension "Product Feed")
        , DimensionValue "rakuten_affiliate" (Dimension "Product Feed")
        , DimensionValue "Card Case" (Dimension "Product Range")
        , DimensionValue "Phone Wallet" (Dimension "Product Style")
        , DimensionValue "Phone Case" (Dimension "Product Type")
        , DimensionValue "small" (Dimension "Shipping Sizes")
        , DimensionValue "pixel3xl" (Dimension "Size")
        , DimensionValue "Phone" (Dimension "Storage")
        , DimensionValue "PWEA" (Dimension "Style")
        ]
    , Product
        (ProductSku "PWPA-BLACK")
        (ProductName "Phone Wallet - Black")
        [ ProductPrice 45 0 AUD
        , ProductPrice 45 0 CAD
        , ProductPrice 35 0 EUR
        , ProductPrice 25 0 GBP
        , ProductPrice 4800 0 JPY
        , ProductPrice 49 0 SGD
        , ProductPrice 35 0 USD
        , ProductPrice 270 0 HKD
        , ProductPrice 129 0 AED
        , ProductPrice 49 0 NZD
        ]
        [ DimensionValue "black" (Dimension "Color")
        , DimensionValue "facebook" (Dimension "Product Feed")
        , DimensionValue "google_shopping" (Dimension "Product Feed")
        , DimensionValue "instagram" (Dimension "Product Feed")
        , DimensionValue "rakuten_affiliate" (Dimension "Product Feed")
        , DimensionValue "Card Case" (Dimension "Product Range")
        , DimensionValue "Phone Wallet" (Dimension "Product Style")
        , DimensionValue "Phone Case" (Dimension "Product Type")
        , DimensionValue "small" (Dimension "Shipping Sizes")
        , DimensionValue "i6plus" (Dimension "Size")
        , DimensionValue "i6splus" (Dimension "Size")
        , DimensionValue "Bills" (Dimension "Storage")
        , DimensionValue "Cards" (Dimension "Storage")
        , DimensionValue "iPhone 6 Plus" (Dimension "Storage")
        , DimensionValue "iPhone 6s Plus" (Dimension "Storage")
        , DimensionValue "PWIA" (Dimension "Style")
        ]
    , Product
        (ProductSku "PWPA-CHARCOAL")
        (ProductName "Phone Wallet - Charcoal")
        [ ProductPrice 45 0 AUD
        , ProductPrice 45 0 CAD
        , ProductPrice 35 0 EUR
        , ProductPrice 25 0 GBP
        , ProductPrice 49 0 SGD
        , ProductPrice 35 0 USD
        , ProductPrice 4800 0 JPY
        , ProductPrice 270 0 HKD
        , ProductPrice 129 0 AED
        , ProductPrice 49 0 NZD
        ]
        [ DimensionValue "charcoal" (Dimension "Color")
        , DimensionValue "facebook" (Dimension "Product Feed")
        , DimensionValue "google_shopping" (Dimension "Product Feed")
        , DimensionValue "instagram" (Dimension "Product Feed")
        , DimensionValue "rakuten_affiliate" (Dimension "Product Feed")
        , DimensionValue "Card Case" (Dimension "Product Range")
        , DimensionValue "Phone Wallet" (Dimension "Product Style")
        , DimensionValue "Phone Case" (Dimension "Product Type")
        , DimensionValue "small" (Dimension "Shipping Sizes")
        , DimensionValue "i6plus" (Dimension "Size")
        , DimensionValue "i6splus" (Dimension "Size")
        , DimensionValue "Bills" (Dimension "Storage")
        , DimensionValue "Cards" (Dimension "Storage")
        , DimensionValue "iPhone 6 Plus" (Dimension "Storage")
        , DimensionValue "iPhone 6s Plus" (Dimension "Storage")
        , DimensionValue "PWIA" (Dimension "Style")
        ]
    , Product
        (ProductSku "PWPB-EUCALYPTUS")
        (ProductName "Phone Wallet - Eucalyptus")
        [ ProductPrice 45 0 AUD
        , ProductPrice 45 0 CAD
        , ProductPrice 35 0 EUR
        , ProductPrice 25 0 GBP
        , ProductPrice 4800 0 JPY
        , ProductPrice 49 0 SGD
        , ProductPrice 35 0 USD
        , ProductPrice 270 0 HKD
        , ProductPrice 129 0 AED
        , ProductPrice 49 0 NZD
        ]
        [ DimensionValue "eucalyptus" (Dimension "Color")
        , DimensionValue "facebook" (Dimension "Product Feed")
        , DimensionValue "google_shopping" (Dimension "Product Feed")
        , DimensionValue "instagram" (Dimension "Product Feed")
        , DimensionValue "rakuten_affiliate" (Dimension "Product Feed")
        , DimensionValue "Card Case" (Dimension "Product Range")
        , DimensionValue "Phone Wallet" (Dimension "Product Style")
        , DimensionValue "Phone Case" (Dimension "Product Type")
        , DimensionValue "small" (Dimension "Shipping Sizes")
        , DimensionValue "i7plus" (Dimension "Size")
        , DimensionValue "i8plus" (Dimension "Size")
        , DimensionValue "Bills" (Dimension "Storage")
        , DimensionValue "Cards" (Dimension "Storage")
        , DimensionValue "iPhone 7 Plus" (Dimension "Storage")
        , DimensionValue "PWIA" (Dimension "Style")
        ]
    , Product
        (ProductSku "WAEA-CHARCOAL")
        (ProductName "All-Conditions Essentials Pocket - Charcoal")
        [ ProductPrice 1090 0 HKD
        , ProductPrice 179 0 AUD
        , ProductPrice 169 0 CAD
        , ProductPrice 139 0 EUR
        , ProductPrice 18900 0 JPY
        , ProductPrice 199 0 SGD
        , ProductPrice 139 0 USD
        , ProductPrice 119 0 GBP
        , ProductPrice 529 0 AED
        , ProductPrice 199 0 NZD
        ]
        [ DimensionValue "charcoal" (Dimension "Color")
        , DimensionValue "Water resistant" (Dimension "Features")
        , DimensionValue "leather" (Dimension "Material")
        , DimensionValue "facebook" (Dimension "Product Feed")
        , DimensionValue "google_shopping" (Dimension "Product Feed")
        , DimensionValue "instagram" (Dimension "Product Feed")
        , DimensionValue "rakuten_affiliate" (Dimension "Product Feed")
        , DimensionValue "Unisex Pocket" (Dimension "Product Range")
        , DimensionValue "All-Conditions Essentials Pckt" (Dimension "Product Style")
        , DimensionValue "Wallet" (Dimension "Product Type")
        , DimensionValue "small" (Dimension "Shipping Sizes")
        , DimensionValue "1 Passport" (Dimension "Storage")
        , DimensionValue "12 or less cards" (Dimension "Storage")
        , DimensionValue "12+ cards" (Dimension "Storage")
        , DimensionValue "2 — 3 Passports" (Dimension "Storage")
        , DimensionValue "Bills" (Dimension "Storage")
        , DimensionValue "Cards" (Dimension "Storage")
        , DimensionValue "Coins" (Dimension "Storage")
        , DimensionValue "Keys" (Dimension "Storage")
        , DimensionValue "Mini notebook" (Dimension "Storage")
        , DimensionValue "Passport" (Dimension "Storage")
        , DimensionValue "Pen" (Dimension "Storage")
        , DimensionValue "Phone" (Dimension "Storage")
        , DimensionValue "Travel documents" (Dimension "Storage")
        , DimensionValue "WAEA" (Dimension "Style")
        ]
    , Product
        (ProductSku "WAPA-BLUE-WOVEN")
        (ProductName "All-Conditions Phone Pocket - Arctic Blue")
        [ ProductPrice 430 0 HKD
        , ProductPrice 75 0 AUD
        , ProductPrice 69 0 CAD
        , ProductPrice 55 0 EUR
        , ProductPrice 79 0 SGD
        , ProductPrice 55 0 USD
        , ProductPrice 7500 0 JPY
        , ProductPrice 45 0 GBP
        , ProductPrice 209 0 AED
        , ProductPrice 79 0 NZD
        ]
        [ DimensionValue "arctic_blue" (Dimension "Color")
        , DimensionValue "Water resistant" (Dimension "Features")
        , DimensionValue "woven" (Dimension "Material")
        , DimensionValue "facebook" (Dimension "Product Feed")
        , DimensionValue "google_shopping" (Dimension "Product Feed")
        , DimensionValue "instagram" (Dimension "Product Feed")
        , DimensionValue "rakuten_affiliate" (Dimension "Product Feed")
        , DimensionValue "Unisex Pocket" (Dimension "Product Range")
        , DimensionValue "All-Conditions Phone Pocket" (Dimension "Product Style")
        , DimensionValue "Wallet" (Dimension "Product Type")
        , DimensionValue "small" (Dimension "Shipping Sizes")
        , DimensionValue "standard" (Dimension "Size")
        , DimensionValue "12 or less cards" (Dimension "Storage")
        , DimensionValue "6 or less cards" (Dimension "Storage")
        , DimensionValue "Bills" (Dimension "Storage")
        , DimensionValue "Cards" (Dimension "Storage")
        , DimensionValue "Coins" (Dimension "Storage")
        , DimensionValue "Keys" (Dimension "Storage")
        , DimensionValue "Phone" (Dimension "Storage")
        , DimensionValue "Samsung S7" (Dimension "Storage")
        , DimensionValue "iPhone 6" (Dimension "Storage")
        , DimensionValue "iPhone 7" (Dimension "Storage")
        , DimensionValue "WAPA" (Dimension "Style")
        ]
    , Product
        (ProductSku "WCFB-BLACK")
        (ProductName "Coin Fold - Black")
        [ ProductPrice 780 0 HKD
        , ProductPrice 129 0 AUD
        , ProductPrice 119 0 CAD
        , ProductPrice 99 0 EUR
        , ProductPrice 139 0 SGD
        , ProductPrice 99 0 USD
        , ProductPrice 13600 0 JPY
        , ProductPrice 85 0 GBP
        , ProductPrice 379 0 AED
        , ProductPrice 139 0 NZD
        ]
        [ DimensionValue "black" (Dimension "Color")
        , DimensionValue "facebook" (Dimension "Product Feed")
        , DimensionValue "google_shopping" (Dimension "Product Feed")
        , DimensionValue "instagram" (Dimension "Product Feed")
        , DimensionValue "rakuten_affiliate" (Dimension "Product Feed")
        , DimensionValue "Unisex Wallet" (Dimension "Product Range")
        , DimensionValue "Coin Fold" (Dimension "Product Style")
        , DimensionValue "Wallet" (Dimension "Product Type")
        , DimensionValue "small" (Dimension "Shipping Sizes")
        , DimensionValue "hi" (Dimension "Size")
        , DimensionValue "12 or less cards" (Dimension "Storage")
        , DimensionValue "6 or less cards" (Dimension "Storage")
        , DimensionValue "Bills" (Dimension "Storage")
        , DimensionValue "Cards" (Dimension "Storage")
        , DimensionValue "Coins" (Dimension "Storage")
        , DimensionValue "WCFA" (Dimension "Style")
        ]
    , Product
        (ProductSku "WCFB-JAVA")
        (ProductName "Coin Fold - Java")
        [ ProductPrice 780 0 HKD
        , ProductPrice 129 0 AUD
        , ProductPrice 119 0 CAD
        , ProductPrice 99 0 EUR
        , ProductPrice 139 0 SGD
        , ProductPrice 99 0 USD
        , ProductPrice 85 0 GBP
        , ProductPrice 13600 0 JPY
        , ProductPrice 379 0 AED
        , ProductPrice 139 0 NZD
        ]
        [ DimensionValue "java" (Dimension "Color")
        , DimensionValue "facebook" (Dimension "Product Feed")
        , DimensionValue "google_shopping" (Dimension "Product Feed")
        , DimensionValue "instagram" (Dimension "Product Feed")
        , DimensionValue "rakuten_affiliate" (Dimension "Product Feed")
        , DimensionValue "Unisex Wallet" (Dimension "Product Range")
        , DimensionValue "Coin Fold" (Dimension "Product Style")
        , DimensionValue "Wallet" (Dimension "Product Type")
        , DimensionValue "small" (Dimension "Shipping Sizes")
        , DimensionValue "hi" (Dimension "Size")
        , DimensionValue "12 or less cards" (Dimension "Storage")
        , DimensionValue "6 or less cards" (Dimension "Storage")
        , DimensionValue "Bills" (Dimension "Storage")
        , DimensionValue "Cards" (Dimension "Storage")
        , DimensionValue "Coins" (Dimension "Storage")
        , DimensionValue "WCFA" (Dimension "Style")
        ]
    , Product
        (ProductSku "WCFB-NAV-101")
        (ProductName "Coin Fold - Navy")
        [ ProductPrice 780 0 HKD
        , ProductPrice 129 0 AUD
        , ProductPrice 119 0 CAD
        , ProductPrice 99 0 EUR
        , ProductPrice 139 0 SGD
        , ProductPrice 99 0 USD
        , ProductPrice 13600 0 JPY
        , ProductPrice 85 0 GBP
        , ProductPrice 379 0 AED
        , ProductPrice 139 0 NZD
        ]
        [ DimensionValue "navy" (Dimension "Color")
        , DimensionValue "facebook" (Dimension "Product Feed")
        , DimensionValue "google_shopping" (Dimension "Product Feed")
        , DimensionValue "instagram" (Dimension "Product Feed")
        , DimensionValue "rakuten_affiliate" (Dimension "Product Feed")
        , DimensionValue "Unisex Wallet" (Dimension "Product Range")
        , DimensionValue "Coin Fold" (Dimension "Product Style")
        , DimensionValue "Wallet" (Dimension "Product Type")
        , DimensionValue "small" (Dimension "Shipping Sizes")
        , DimensionValue "hi" (Dimension "Size")
        , DimensionValue "WCFA" (Dimension "Style")
        ]
    , Product
        (ProductSku "WCPA-BLK-101")
        (ProductName "Card Pocket - Black")
        [ ProductPrice 79 0 AUD
        , ProductPrice 75 0 CAD
        , ProductPrice 59 0 EUR
        , ProductPrice 8100 0 JPY
        , ProductPrice 89 0 SGD
        , ProductPrice 59 0 USD
        , ProductPrice 49 0 GBP
        , ProductPrice 470 0 HKD
        , ProductPrice 219 0 AED
        , ProductPrice 85 0 NZD
        ]
        [ DimensionValue "black" (Dimension "Color")
        , DimensionValue "facebook" (Dimension "Product Feed")
        , DimensionValue "google_shopping" (Dimension "Product Feed")
        , DimensionValue "instagram" (Dimension "Product Feed")
        , DimensionValue "rakuten_affiliate" (Dimension "Product Feed")
        , DimensionValue "Unisex Wallet" (Dimension "Product Range")
        , DimensionValue "Card Pocket" (Dimension "Product Style")
        , DimensionValue "Wallet" (Dimension "Product Type")
        , DimensionValue "small" (Dimension "Shipping Sizes")
        , DimensionValue "default" (Dimension "Size")
        , DimensionValue "WCPA" (Dimension "Style")
        ]
    , Product
        (ProductSku "WCPA-CAR-101")
        (ProductName "Card Pocket - Caramel")
        [ ProductPrice 79 0 AUD
        , ProductPrice 75 0 CAD
        , ProductPrice 59 0 EUR
        , ProductPrice 8100 0 JPY
        , ProductPrice 89 0 SGD
        , ProductPrice 59 0 USD
        , ProductPrice 49 0 GBP
        , ProductPrice 470 0 HKD
        , ProductPrice 219 0 AED
        , ProductPrice 85 0 NZD
        ]
        [ DimensionValue "caramel" (Dimension "Color")
        , DimensionValue "facebook" (Dimension "Product Feed")
        , DimensionValue "google_shopping" (Dimension "Product Feed")
        , DimensionValue "instagram" (Dimension "Product Feed")
        , DimensionValue "rakuten_affiliate" (Dimension "Product Feed")
        , DimensionValue "Unisex Wallet" (Dimension "Product Range")
        , DimensionValue "Card Pocket" (Dimension "Product Style")
        , DimensionValue "Wallet" (Dimension "Product Type")
        , DimensionValue "small" (Dimension "Shipping Sizes")
        , DimensionValue "default" (Dimension "Size")
        , DimensionValue "WCPA" (Dimension "Style")
        ]
    , Product
        (ProductSku "WCPA-NAV-101")
        (ProductName "Card Pocket - Navy")
        [ ProductPrice 470 0 HKD
        , ProductPrice 79 0 AUD
        , ProductPrice 75 0 CAD
        , ProductPrice 59 0 EUR
        , ProductPrice 8100 0 JPY
        , ProductPrice 89 0 SGD
        , ProductPrice 59 0 USD
        , ProductPrice 49 0 GBP
        , ProductPrice 219 0 AED
        , ProductPrice 85 0 NZD
        ]
        [ DimensionValue "navy" (Dimension "Color")
        , DimensionValue "facebook" (Dimension "Product Feed")
        , DimensionValue "google_shopping" (Dimension "Product Feed")
        , DimensionValue "instagram" (Dimension "Product Feed")
        , DimensionValue "rakuten_affiliate" (Dimension "Product Feed")
        , DimensionValue "Unisex Wallet" (Dimension "Product Range")
        , DimensionValue "Card Pocket" (Dimension "Product Style")
        , DimensionValue "Wallet" (Dimension "Product Type")
        , DimensionValue "small" (Dimension "Shipping Sizes")
        , DimensionValue "default" (Dimension "Size")
        , DimensionValue "WCPA" (Dimension "Style")
        ]
    , Product
        (ProductSku "WCPA-RAG-101")
        (ProductName "Card Pocket - Racing Green")
        [ ProductPrice 470 0 HKD
        , ProductPrice 79 0 AUD
        , ProductPrice 75 0 CAD
        , ProductPrice 59 0 EUR
        , ProductPrice 8100 0 JPY
        , ProductPrice 89 0 SGD
        , ProductPrice 59 0 USD
        , ProductPrice 49 0 GBP
        , ProductPrice 219 0 AED
        , ProductPrice 85 0 NZD
        ]
        [ DimensionValue "racing_green" (Dimension "Color")
        , DimensionValue "facebook" (Dimension "Product Feed")
        , DimensionValue "google_shopping" (Dimension "Product Feed")
        , DimensionValue "instagram" (Dimension "Product Feed")
        , DimensionValue "rakuten_affiliate" (Dimension "Product Feed")
        , DimensionValue "Unisex Wallet" (Dimension "Product Range")
        , DimensionValue "Card Pocket" (Dimension "Product Style")
        , DimensionValue "Wallet" (Dimension "Product Type")
        , DimensionValue "small" (Dimension "Shipping Sizes")
        , DimensionValue "default" (Dimension "Size")
        , DimensionValue "WCPA" (Dimension "Style")
        ]
    , Product
        (ProductSku "WCPA-TAN-101")
        (ProductName "Card Pocket - Tan")
        [ ProductPrice 470 0 HKD
        , ProductPrice 79 0 AUD
        , ProductPrice 75 0 CAD
        , ProductPrice 59 0 EUR
        , ProductPrice 8100 0 JPY
        , ProductPrice 89 0 SGD
        , ProductPrice 59 0 USD
        , ProductPrice 49 0 GBP
        , ProductPrice 219 0 AED
        , ProductPrice 85 0 NZD
        ]
        [ DimensionValue "tan" (Dimension "Color")
        , DimensionValue "facebook" (Dimension "Product Feed")
        , DimensionValue "google_shopping" (Dimension "Product Feed")
        , DimensionValue "instagram" (Dimension "Product Feed")
        , DimensionValue "rakuten_affiliate" (Dimension "Product Feed")
        , DimensionValue "Unisex Wallet" (Dimension "Product Range")
        , DimensionValue "Card Pocket" (Dimension "Product Style")
        , DimensionValue "Wallet" (Dimension "Product Type")
        , DimensionValue "small" (Dimension "Shipping Sizes")
        , DimensionValue "default" (Dimension "Size")
        , DimensionValue "WCPA" (Dimension "Style")
        ]
    , Product
        (ProductSku "WCPA-WIN-101")
        (ProductName "Card Pocket - Wine")
        [ ProductPrice 470 0 HKD
        , ProductPrice 79 0 AUD
        , ProductPrice 75 0 CAD
        , ProductPrice 59 0 EUR
        , ProductPrice 8100 0 JPY
        , ProductPrice 89 0 SGD
        , ProductPrice 59 0 USD
        , ProductPrice 49 0 GBP
        , ProductPrice 219 0 AED
        , ProductPrice 85 0 NZD
        ]
        [ DimensionValue "wine" (Dimension "Color")
        , DimensionValue "facebook" (Dimension "Product Feed")
        , DimensionValue "google_shopping" (Dimension "Product Feed")
        , DimensionValue "instagram" (Dimension "Product Feed")
        , DimensionValue "rakuten_affiliate" (Dimension "Product Feed")
        , DimensionValue "Unisex Wallet" (Dimension "Product Range")
        , DimensionValue "Card Pocket" (Dimension "Product Style")
        , DimensionValue "Wallet" (Dimension "Product Type")
        , DimensionValue "small" (Dimension "Shipping Sizes")
        , DimensionValue "default" (Dimension "Size")
        , DimensionValue "WCPA" (Dimension "Style")
        ]
    , Product
        (ProductSku "WCSA-BLACK")
        (ProductName "Card Sleeve - Black")
        [ ProductPrice 430 0 HKD
        , ProductPrice 75 0 AUD
        , ProductPrice 69 0 CAD
        , ProductPrice 55 0 EUR
        , ProductPrice 79 0 SGD
        , ProductPrice 55 0 USD
        , ProductPrice 45 0 GBP
        , ProductPrice 7500 0 JPY
        , ProductPrice 209 0 AED
        , ProductPrice 79 0 NZD
        ]
        [ DimensionValue "black" (Dimension "Color")
        , DimensionValue "facebook" (Dimension "Product Feed")
        , DimensionValue "google_shopping" (Dimension "Product Feed")
        , DimensionValue "instagram" (Dimension "Product Feed")
        , DimensionValue "rakuten_affiliate" (Dimension "Product Feed")
        , DimensionValue "Unisex Wallet" (Dimension "Product Range")
        , DimensionValue "Card Sleeve" (Dimension "Product Style")
        , DimensionValue "Wallet" (Dimension "Product Type")
        , DimensionValue "small" (Dimension "Shipping Sizes")
        , DimensionValue "default" (Dimension "Size")
        , DimensionValue "12 or less cards" (Dimension "Storage")
        , DimensionValue "6 or less cards" (Dimension "Storage")
        , DimensionValue "Bills" (Dimension "Storage")
        , DimensionValue "Cards" (Dimension "Storage")
        , DimensionValue "Coins" (Dimension "Storage")
        , DimensionValue "WCSA" (Dimension "Style")
        ]
    , Product
        (ProductSku "WCSA-CHARCOAL")
        (ProductName "Card Sleeve - Charcoal")
        [ ProductPrice 75 0 AUD
        , ProductPrice 69 0 CAD
        , ProductPrice 55 0 EUR
        , ProductPrice 79 0 SGD
        , ProductPrice 55 0 USD
        , ProductPrice 45 0 GBP
        , ProductPrice 430 0 HKD
        , ProductPrice 7500 0 JPY
        , ProductPrice 209 0 AED
        , ProductPrice 79 0 NZD
        ]
        [ DimensionValue "charcoal" (Dimension "Color")
        , DimensionValue "facebook" (Dimension "Product Feed")
        , DimensionValue "google_shopping" (Dimension "Product Feed")
        , DimensionValue "instagram" (Dimension "Product Feed")
        , DimensionValue "rakuten_affiliate" (Dimension "Product Feed")
        , DimensionValue "Unisex Wallet" (Dimension "Product Range")
        , DimensionValue "Card Sleeve" (Dimension "Product Style")
        , DimensionValue "Wallet" (Dimension "Product Type")
        , DimensionValue "small" (Dimension "Shipping Sizes")
        , DimensionValue "default" (Dimension "Size")
        , DimensionValue "12 or less cards" (Dimension "Storage")
        , DimensionValue "6 or less cards" (Dimension "Storage")
        , DimensionValue "Bills" (Dimension "Storage")
        , DimensionValue "Cards" (Dimension "Storage")
        , DimensionValue "Coins" (Dimension "Storage")
        , DimensionValue "WCSA" (Dimension "Style")
        ]
    , Product
        (ProductSku "WCSA-COA-101")
        (ProductName "Card Sleeve - Cocoa")
        [ ProductPrice 430 0 HKD
        , ProductPrice 75 0 AUD
        , ProductPrice 69 0 CAD
        , ProductPrice 55 0 EUR
        , ProductPrice 79 0 SGD
        , ProductPrice 55 0 USD
        , ProductPrice 7500 0 JPY
        , ProductPrice 45 0 GBP
        , ProductPrice 209 0 AED
        , ProductPrice 79 0 NZD
        ]
        [ DimensionValue "cocoa" (Dimension "Color")
        , DimensionValue "facebook" (Dimension "Product Feed")
        , DimensionValue "google_shopping" (Dimension "Product Feed")
        , DimensionValue "instagram" (Dimension "Product Feed")
        , DimensionValue "rakuten_affiliate" (Dimension "Product Feed")
        , DimensionValue "Unisex Wallet" (Dimension "Product Range")
        , DimensionValue "Card Sleeve" (Dimension "Product Style")
        , DimensionValue "Wallet" (Dimension "Product Type")
        , DimensionValue "small" (Dimension "Shipping Sizes")
        , DimensionValue "default" (Dimension "Size")
        , DimensionValue "WCSA" (Dimension "Style")
        ]
    , Product
        (ProductSku "WCSA-NAV-101")
        (ProductName "Card Sleeve - Navy")
        [ ProductPrice 430 0 HKD
        , ProductPrice 75 0 AUD
        , ProductPrice 69 0 CAD
        , ProductPrice 55 0 EUR
        , ProductPrice 79 0 SGD
        , ProductPrice 55 0 USD
        , ProductPrice 7500 0 JPY
        , ProductPrice 45 0 GBP
        , ProductPrice 209 0 AED
        , ProductPrice 79 0 NZD
        ]
        [ DimensionValue "navy" (Dimension "Color")
        , DimensionValue "facebook" (Dimension "Product Feed")
        , DimensionValue "google_shopping" (Dimension "Product Feed")
        , DimensionValue "instagram" (Dimension "Product Feed")
        , DimensionValue "rakuten_affiliate" (Dimension "Product Feed")
        , DimensionValue "Unisex Wallet" (Dimension "Product Range")
        , DimensionValue "Card Sleeve" (Dimension "Product Style")
        , DimensionValue "Wallet" (Dimension "Product Type")
        , DimensionValue "small" (Dimension "Shipping Sizes")
        , DimensionValue "default" (Dimension "Size")
        , DimensionValue "WCSA" (Dimension "Style")
        ]
    , Product
        (ProductSku "WCSA-RAG-101")
        (ProductName "Card Sleeve - Racing Green")
        [ ProductPrice 430 0 HKD
        , ProductPrice 75 0 AUD
        , ProductPrice 69 0 CAD
        , ProductPrice 55 0 EUR
        , ProductPrice 79 0 SGD
        , ProductPrice 55 0 USD
        , ProductPrice 7500 0 JPY
        , ProductPrice 45 0 GBP
        , ProductPrice 209 0 AED
        , ProductPrice 79 0 NZD
        ]
        [ DimensionValue "racing_green" (Dimension "Color")
        , DimensionValue "facebook" (Dimension "Product Feed")
        , DimensionValue "google_shopping" (Dimension "Product Feed")
        , DimensionValue "instagram" (Dimension "Product Feed")
        , DimensionValue "rakuten_affiliate" (Dimension "Product Feed")
        , DimensionValue "Unisex Wallet" (Dimension "Product Range")
        , DimensionValue "Card Sleeve" (Dimension "Product Style")
        , DimensionValue "Wallet" (Dimension "Product Type")
        , DimensionValue "small" (Dimension "Shipping Sizes")
        , DimensionValue "default" (Dimension "Size")
        , DimensionValue "WCSA" (Dimension "Style")
        ]
    , Product
        (ProductSku "WCSA-TAN-101")
        (ProductName "Card Sleeve - Tan")
        [ ProductPrice 430 0 HKD
        , ProductPrice 75 0 AUD
        , ProductPrice 69 0 CAD
        , ProductPrice 55 0 EUR
        , ProductPrice 79 0 SGD
        , ProductPrice 55 0 USD
        , ProductPrice 45 0 GBP
        , ProductPrice 7500 0 JPY
        , ProductPrice 209 0 AED
        , ProductPrice 79 0 NZD
        ]
        [ DimensionValue "tan" (Dimension "Color")
        , DimensionValue "facebook" (Dimension "Product Feed")
        , DimensionValue "google_shopping" (Dimension "Product Feed")
        , DimensionValue "instagram" (Dimension "Product Feed")
        , DimensionValue "rakuten_affiliate" (Dimension "Product Feed")
        , DimensionValue "Unisex Wallet" (Dimension "Product Range")
        , DimensionValue "Card Sleeve" (Dimension "Product Style")
        , DimensionValue "Wallet" (Dimension "Product Type")
        , DimensionValue "small" (Dimension "Shipping Sizes")
        , DimensionValue "default" (Dimension "Size")
        , DimensionValue "WCSA" (Dimension "Style")
        ]
    , Product
        (ProductSku "WFWB-BLK-301")
        (ProductName "Folio - Black")
        [ ProductPrice 249 0 AUD
        , ProductPrice 219 0 CAD
        , ProductPrice 179 0 EUR
        , ProductPrice 145 0 GBP
        , ProductPrice 23000 0 JPY
        , ProductPrice 259 0 SGD
        , ProductPrice 179 0 USD
        , ProductPrice 1400 0 HKD
        , ProductPrice 679 0 AED
        , ProductPrice 290 0 NZD
        ]
        [ DimensionValue "black" (Dimension "Color")
        , DimensionValue "leather_rfid" (Dimension "Material")
        , DimensionValue "facebook" (Dimension "Product Feed")
        , DimensionValue "google_shopping" (Dimension "Product Feed")
        , DimensionValue "instagram" (Dimension "Product Feed")
        , DimensionValue "rakuten_affiliate" (Dimension "Product Feed")
        , DimensionValue "Unisex Wallet" (Dimension "Product Range")
        , DimensionValue "Folio Wallet" (Dimension "Product Style")
        , DimensionValue "Wallet" (Dimension "Product Type")
        , DimensionValue "small" (Dimension "Shipping Sizes")
        , DimensionValue "WFWB" (Dimension "Style")
        ]
    , Product
        (ProductSku "WFWB-CAR-301")
        (ProductName "Folio - Caramel")
        [ ProductPrice 249 0 AUD
        , ProductPrice 219 0 CAD
        , ProductPrice 179 0 EUR
        , ProductPrice 145 0 GBP
        , ProductPrice 23000 0 JPY
        , ProductPrice 259 0 SGD
        , ProductPrice 179 0 USD
        , ProductPrice 1400 0 HKD
        , ProductPrice 679 0 AED
        , ProductPrice 290 0 NZD
        ]
        [ DimensionValue "caramel" (Dimension "Color")
        , DimensionValue "leather_rfid" (Dimension "Material")
        , DimensionValue "facebook" (Dimension "Product Feed")
        , DimensionValue "google_shopping" (Dimension "Product Feed")
        , DimensionValue "instagram" (Dimension "Product Feed")
        , DimensionValue "rakuten_affiliate" (Dimension "Product Feed")
        , DimensionValue "Unisex Wallet" (Dimension "Product Range")
        , DimensionValue "Folio Wallet" (Dimension "Product Style")
        , DimensionValue "Wallet" (Dimension "Product Type")
        , DimensionValue "small" (Dimension "Shipping Sizes")
        , DimensionValue "WFWB" (Dimension "Style")
        ]
    , Product
        (ProductSku "WFWB-NAV-301")
        (ProductName "Folio - Navy")
        [ ProductPrice 249 0 AUD
        , ProductPrice 219 0 CAD
        , ProductPrice 179 0 EUR
        , ProductPrice 145 0 GBP
        , ProductPrice 23000 0 JPY
        , ProductPrice 259 0 SGD
        , ProductPrice 179 0 USD
        , ProductPrice 1400 0 HKD
        , ProductPrice 679 0 AED
        , ProductPrice 290 0 NZD
        ]
        [ DimensionValue "navy" (Dimension "Color")
        , DimensionValue "leather_rfid" (Dimension "Material")
        , DimensionValue "facebook" (Dimension "Product Feed")
        , DimensionValue "google_shopping" (Dimension "Product Feed")
        , DimensionValue "instagram" (Dimension "Product Feed")
        , DimensionValue "rakuten_affiliate" (Dimension "Product Feed")
        , DimensionValue "Unisex Wallet" (Dimension "Product Range")
        , DimensionValue "Folio Wallet" (Dimension "Product Style")
        , DimensionValue "Wallet" (Dimension "Product Type")
        , DimensionValue "small" (Dimension "Shipping Sizes")
        , DimensionValue "WFWB" (Dimension "Style")
        ]
    , Product
        (ProductSku "WFWB-RAG-301")
        (ProductName "Folio - Racing Green")
        [ ProductPrice 249 0 AUD
        , ProductPrice 219 0 CAD
        , ProductPrice 179 0 EUR
        , ProductPrice 145 0 GBP
        , ProductPrice 23000 0 JPY
        , ProductPrice 259 0 SGD
        , ProductPrice 179 0 USD
        , ProductPrice 1400 0 HKD
        , ProductPrice 679 0 AED
        , ProductPrice 290 0 NZD
        ]
        [ DimensionValue "racing_green" (Dimension "Color")
        , DimensionValue "leather_rfid" (Dimension "Material")
        , DimensionValue "facebook" (Dimension "Product Feed")
        , DimensionValue "google_shopping" (Dimension "Product Feed")
        , DimensionValue "instagram" (Dimension "Product Feed")
        , DimensionValue "rakuten_affiliate" (Dimension "Product Feed")
        , DimensionValue "Unisex Wallet" (Dimension "Product Range")
        , DimensionValue "Folio Wallet" (Dimension "Product Style")
        , DimensionValue "Wallet" (Dimension "Product Type")
        , DimensionValue "small" (Dimension "Shipping Sizes")
        , DimensionValue "WFWB" (Dimension "Style")
        ]
    , Product
        (ProductSku "WFWB-TAN-301")
        (ProductName "Folio - Tan")
        [ ProductPrice 249 0 AUD
        , ProductPrice 219 0 CAD
        , ProductPrice 179 0 EUR
        , ProductPrice 145 0 GBP
        , ProductPrice 23000 0 JPY
        , ProductPrice 259 0 SGD
        , ProductPrice 179 0 USD
        , ProductPrice 1400 0 HKD
        , ProductPrice 679 0 AED
        , ProductPrice 290 0 NZD
        ]
        [ DimensionValue "tan" (Dimension "Color")
        , DimensionValue "leather_rfid" (Dimension "Material")
        , DimensionValue "facebook" (Dimension "Product Feed")
        , DimensionValue "google_shopping" (Dimension "Product Feed")
        , DimensionValue "instagram" (Dimension "Product Feed")
        , DimensionValue "rakuten_affiliate" (Dimension "Product Feed")
        , DimensionValue "Unisex Wallet" (Dimension "Product Range")
        , DimensionValue "Folio Wallet" (Dimension "Product Style")
        , DimensionValue "Wallet" (Dimension "Product Type")
        , DimensionValue "small" (Dimension "Shipping Sizes")
        , DimensionValue "WFWB" (Dimension "Style")
        ]
    , Product
        (ProductSku "WHSD-BLK-301")
        (ProductName "Hide & Seek - Black")
        [ ProductPrice 700 0 HKD
        , ProductPrice 115 0 AUD
        , ProductPrice 109 0 CAD
        , ProductPrice 89 0 EUR
        , ProductPrice 129 0 SGD
        , ProductPrice 89 0 USD
        , ProductPrice 12200 0 JPY
        , ProductPrice 75 0 GBP
        , ProductPrice 339 0 AED
        , ProductPrice 129 0 NZD
        ]
        [ DimensionValue "black" (Dimension "Color")
        , DimensionValue "leather_rfid" (Dimension "Material")
        , DimensionValue "facebook" (Dimension "Product Feed")
        , DimensionValue "google_shopping" (Dimension "Product Feed")
        , DimensionValue "instagram" (Dimension "Product Feed")
        , DimensionValue "rakuten_affiliate" (Dimension "Product Feed")
        , DimensionValue "Men's Wallet" (Dimension "Product Range")
        , DimensionValue "Hide & Seek" (Dimension "Product Style")
        , DimensionValue "Wallet" (Dimension "Product Type")
        , DimensionValue "small" (Dimension "Shipping Sizes")
        , DimensionValue "lo" (Dimension "Size")
        , DimensionValue "WHSD" (Dimension "Style")
        ]
    , Product
        (ProductSku "WHSD-CAR-301")
        (ProductName "Hide & Seek - Caramel")
        [ ProductPrice 700 0 HKD
        , ProductPrice 115 0 AUD
        , ProductPrice 109 0 CAD
        , ProductPrice 89 0 EUR
        , ProductPrice 129 0 SGD
        , ProductPrice 89 0 USD
        , ProductPrice 12200 0 JPY
        , ProductPrice 75 0 GBP
        , ProductPrice 339 0 AED
        , ProductPrice 129 0 NZD
        ]
        [ DimensionValue "caramel" (Dimension "Color")
        , DimensionValue "leather_rfid" (Dimension "Material")
        , DimensionValue "facebook" (Dimension "Product Feed")
        , DimensionValue "google_shopping" (Dimension "Product Feed")
        , DimensionValue "instagram" (Dimension "Product Feed")
        , DimensionValue "rakuten_affiliate" (Dimension "Product Feed")
        , DimensionValue "Men's Wallet" (Dimension "Product Range")
        , DimensionValue "Hide & Seek" (Dimension "Product Style")
        , DimensionValue "Wallet" (Dimension "Product Type")
        , DimensionValue "small" (Dimension "Shipping Sizes")
        , DimensionValue "lo" (Dimension "Size")
        , DimensionValue "WHSD" (Dimension "Style")
        ]
    , Product
        (ProductSku "WHSD-CHA-301")
        (ProductName "Hide & Seek - Charcoal")
        [ ProductPrice 700 0 HKD
        , ProductPrice 115 0 AUD
        , ProductPrice 109 0 CAD
        , ProductPrice 89 0 EUR
        , ProductPrice 129 0 SGD
        , ProductPrice 89 0 USD
        , ProductPrice 12200 0 JPY
        , ProductPrice 75 0 GBP
        , ProductPrice 339 0 AED
        , ProductPrice 129 0 NZD
        ]
        [ DimensionValue "charcoal" (Dimension "Color")
        , DimensionValue "leather_rfid" (Dimension "Material")
        , DimensionValue "facebook" (Dimension "Product Feed")
        , DimensionValue "google_shopping" (Dimension "Product Feed")
        , DimensionValue "instagram" (Dimension "Product Feed")
        , DimensionValue "rakuten_affiliate" (Dimension "Product Feed")
        , DimensionValue "Men's Wallet" (Dimension "Product Range")
        , DimensionValue "Hide & Seek" (Dimension "Product Style")
        , DimensionValue "Wallet" (Dimension "Product Type")
        , DimensionValue "small" (Dimension "Shipping Sizes")
        , DimensionValue "lo" (Dimension "Size")
        , DimensionValue "WHSD" (Dimension "Style")
        ]
    , Product
        (ProductSku "WHSD-JAV-301")
        (ProductName "Hide & Seek - Java")
        [ ProductPrice 700 0 HKD
        , ProductPrice 115 0 AUD
        , ProductPrice 109 0 CAD
        , ProductPrice 89 0 EUR
        , ProductPrice 129 0 SGD
        , ProductPrice 89 0 USD
        , ProductPrice 75 0 GBP
        , ProductPrice 12200 0 JPY
        , ProductPrice 339 0 AED
        , ProductPrice 129 0 NZD
        ]
        [ DimensionValue "java" (Dimension "Color")
        , DimensionValue "leather_rfid" (Dimension "Material")
        , DimensionValue "facebook" (Dimension "Product Feed")
        , DimensionValue "google_shopping" (Dimension "Product Feed")
        , DimensionValue "instagram" (Dimension "Product Feed")
        , DimensionValue "rakuten_affiliate" (Dimension "Product Feed")
        , DimensionValue "Men's Wallet" (Dimension "Product Range")
        , DimensionValue "Hide & Seek" (Dimension "Product Style")
        , DimensionValue "Wallet" (Dimension "Product Type")
        , DimensionValue "small" (Dimension "Shipping Sizes")
        , DimensionValue "lo" (Dimension "Size")
        , DimensionValue "WHSD" (Dimension "Style")
        ]
    , Product
        (ProductSku "WHSD-NAV-301")
        (ProductName "Hide & Seek - Navy")
        [ ProductPrice 700 0 HKD
        , ProductPrice 115 0 AUD
        , ProductPrice 109 0 CAD
        , ProductPrice 89 0 EUR
        , ProductPrice 129 0 SGD
        , ProductPrice 89 0 USD
        , ProductPrice 12200 0 JPY
        , ProductPrice 75 0 GBP
        , ProductPrice 339 0 AED
        , ProductPrice 129 0 NZD
        ]
        [ DimensionValue "navy" (Dimension "Color")
        , DimensionValue "leather_rfid" (Dimension "Material")
        , DimensionValue "facebook" (Dimension "Product Feed")
        , DimensionValue "google_shopping" (Dimension "Product Feed")
        , DimensionValue "instagram" (Dimension "Product Feed")
        , DimensionValue "rakuten_affiliate" (Dimension "Product Feed")
        , DimensionValue "Men's Wallet" (Dimension "Product Range")
        , DimensionValue "Hide & Seek" (Dimension "Product Style")
        , DimensionValue "Wallet" (Dimension "Product Type")
        , DimensionValue "small" (Dimension "Shipping Sizes")
        , DimensionValue "lo" (Dimension "Size")
        , DimensionValue "WHSD" (Dimension "Style")
        ]
    , Product
        (ProductSku "WHSD-RAG-301")
        (ProductName "Hide & Seek - Racing Green")
        [ ProductPrice 700 0 HKD
        , ProductPrice 115 0 AUD
        , ProductPrice 109 0 CAD
        , ProductPrice 89 0 EUR
        , ProductPrice 12200 0 JPY
        , ProductPrice 129 0 SGD
        , ProductPrice 89 0 USD
        , ProductPrice 75 0 GBP
        , ProductPrice 339 0 AED
        , ProductPrice 129 0 NZD
        ]
        [ DimensionValue "racing_green" (Dimension "Color")
        , DimensionValue "leather_rfid" (Dimension "Material")
        , DimensionValue "facebook" (Dimension "Product Feed")
        , DimensionValue "google_shopping" (Dimension "Product Feed")
        , DimensionValue "instagram" (Dimension "Product Feed")
        , DimensionValue "rakuten_affiliate" (Dimension "Product Feed")
        , DimensionValue "Men's Wallet" (Dimension "Product Range")
        , DimensionValue "Hide & Seek" (Dimension "Product Style")
        , DimensionValue "Wallet" (Dimension "Product Type")
        , DimensionValue "small" (Dimension "Shipping Sizes")
        , DimensionValue "lo" (Dimension "Size")
        , DimensionValue "WHSD" (Dimension "Style")
        ]
    , Product
        (ProductSku "WHSD-WIN-301")
        (ProductName "Hide & Seek - Wine")
        [ ProductPrice 700 0 HKD
        , ProductPrice 115 0 AUD
        , ProductPrice 109 0 CAD
        , ProductPrice 89 0 EUR
        , ProductPrice 12200 0 JPY
        , ProductPrice 129 0 SGD
        , ProductPrice 89 0 USD
        , ProductPrice 75 0 GBP
        , ProductPrice 339 0 AED
        , ProductPrice 129 0 NZD
        ]
        [ DimensionValue "wine" (Dimension "Color")
        , DimensionValue "leather_rfid" (Dimension "Material")
        , DimensionValue "facebook" (Dimension "Product Feed")
        , DimensionValue "google_shopping" (Dimension "Product Feed")
        , DimensionValue "instagram" (Dimension "Product Feed")
        , DimensionValue "rakuten_affiliate" (Dimension "Product Feed")
        , DimensionValue "Men's Wallet" (Dimension "Product Range")
        , DimensionValue "Hide & Seek" (Dimension "Product Style")
        , DimensionValue "Wallet" (Dimension "Product Type")
        , DimensionValue "small" (Dimension "Shipping Sizes")
        , DimensionValue "lo" (Dimension "Size")
        , DimensionValue "WHSD" (Dimension "Style")
        ]
    , Product
        (ProductSku "WHSE-BCH-301")
        (ProductName "Hide & Seek - Black Charcoal")
        [ ProductPrice 700 0 HKD
        , ProductPrice 115 0 AUD
        , ProductPrice 109 0 CAD
        , ProductPrice 89 0 EUR
        , ProductPrice 12200 0 JPY
        , ProductPrice 129 0 SGD
        , ProductPrice 89 0 USD
        , ProductPrice 75 0 GBP
        , ProductPrice 339 0 AED
        , ProductPrice 129 0 NZD
        ]
        [ DimensionValue "black-charcoal" (Dimension "Color")
        , DimensionValue "leather_rfid" (Dimension "Material")
        , DimensionValue "facebook" (Dimension "Product Feed")
        , DimensionValue "google_shopping" (Dimension "Product Feed")
        , DimensionValue "instagram" (Dimension "Product Feed")
        , DimensionValue "rakuten_affiliate" (Dimension "Product Feed")
        , DimensionValue "Men's Wallet" (Dimension "Product Range")
        , DimensionValue "Hide & Seek" (Dimension "Product Style")
        , DimensionValue "Wallet" (Dimension "Product Type")
        , DimensionValue "small" (Dimension "Shipping Sizes")
        , DimensionValue "hi" (Dimension "Size")
        , DimensionValue "WHSD" (Dimension "Style")
        ]
    , Product
        (ProductSku "WHSE-BLK-301")
        (ProductName "Hide & Seek - Black")
        [ ProductPrice 700 0 HKD
        , ProductPrice 115 0 AUD
        , ProductPrice 109 0 CAD
        , ProductPrice 89 0 EUR
        , ProductPrice 129 0 SGD
        , ProductPrice 89 0 USD
        , ProductPrice 12200 0 JPY
        , ProductPrice 75 0 GBP
        , ProductPrice 339 0 AED
        , ProductPrice 129 0 NZD
        ]
        [ DimensionValue "black" (Dimension "Color")
        , DimensionValue "leather_rfid" (Dimension "Material")
        , DimensionValue "facebook" (Dimension "Product Feed")
        , DimensionValue "google_shopping" (Dimension "Product Feed")
        , DimensionValue "instagram" (Dimension "Product Feed")
        , DimensionValue "rakuten_affiliate" (Dimension "Product Feed")
        , DimensionValue "Men's Wallet" (Dimension "Product Range")
        , DimensionValue "Hide & Seek" (Dimension "Product Style")
        , DimensionValue "Wallet" (Dimension "Product Type")
        , DimensionValue "small" (Dimension "Shipping Sizes")
        , DimensionValue "hi" (Dimension "Size")
        , DimensionValue "WHSD" (Dimension "Style")
        ]
    , Product
        (ProductSku "WHSE-CAR-301")
        (ProductName "Hide & Seek - Caramel")
        [ ProductPrice 700 0 HKD
        , ProductPrice 115 0 AUD
        , ProductPrice 109 0 CAD
        , ProductPrice 89 0 EUR
        , ProductPrice 129 0 SGD
        , ProductPrice 89 0 USD
        , ProductPrice 12200 0 JPY
        , ProductPrice 75 0 GBP
        , ProductPrice 339 0 AED
        , ProductPrice 129 0 NZD
        ]
        [ DimensionValue "caramel" (Dimension "Color")
        , DimensionValue "leather_rfid" (Dimension "Material")
        , DimensionValue "facebook" (Dimension "Product Feed")
        , DimensionValue "google_shopping" (Dimension "Product Feed")
        , DimensionValue "instagram" (Dimension "Product Feed")
        , DimensionValue "rakuten_affiliate" (Dimension "Product Feed")
        , DimensionValue "Men's Wallet" (Dimension "Product Range")
        , DimensionValue "Hide & Seek" (Dimension "Product Style")
        , DimensionValue "Wallet" (Dimension "Product Type")
        , DimensionValue "small" (Dimension "Shipping Sizes")
        , DimensionValue "hi" (Dimension "Size")
        , DimensionValue "WHSD" (Dimension "Style")
        ]
    , Product
        (ProductSku "WHSE-CHA-301")
        (ProductName "Hide & Seek - Charcoal")
        [ ProductPrice 700 0 HKD
        , ProductPrice 115 0 AUD
        , ProductPrice 109 0 CAD
        , ProductPrice 89 0 EUR
        , ProductPrice 129 0 SGD
        , ProductPrice 12200 0 JPY
        , ProductPrice 75 0 GBP
        , ProductPrice 89 0 USD
        , ProductPrice 339 0 AED
        , ProductPrice 129 0 NZD
        ]
        [ DimensionValue "charcoal" (Dimension "Color")
        , DimensionValue "leather_rfid" (Dimension "Material")
        , DimensionValue "facebook" (Dimension "Product Feed")
        , DimensionValue "google_shopping" (Dimension "Product Feed")
        , DimensionValue "instagram" (Dimension "Product Feed")
        , DimensionValue "rakuten_affiliate" (Dimension "Product Feed")
        , DimensionValue "Men's Wallet" (Dimension "Product Range")
        , DimensionValue "Hide & Seek" (Dimension "Product Style")
        , DimensionValue "Wallet" (Dimension "Product Type")
        , DimensionValue "small" (Dimension "Shipping Sizes")
        , DimensionValue "hi" (Dimension "Size")
        , DimensionValue "WHSD" (Dimension "Style")
        ]
    , Product
        (ProductSku "WHSE-COA-301")
        (ProductName "Hide & Seek - Cocoa")
        [ ProductPrice 700 0 HKD
        , ProductPrice 115 0 AUD
        , ProductPrice 109 0 CAD
        , ProductPrice 89 0 EUR
        , ProductPrice 129 0 SGD
        , ProductPrice 89 0 USD
        , ProductPrice 12200 0 JPY
        , ProductPrice 75 0 GBP
        , ProductPrice 339 0 AED
        , ProductPrice 129 0 NZD
        ]
        [ DimensionValue "cocoa" (Dimension "Color")
        , DimensionValue "leather_rfid" (Dimension "Material")
        , DimensionValue "facebook" (Dimension "Product Feed")
        , DimensionValue "google_shopping" (Dimension "Product Feed")
        , DimensionValue "instagram" (Dimension "Product Feed")
        , DimensionValue "rakuten_affiliate" (Dimension "Product Feed")
        , DimensionValue "Men's Wallet" (Dimension "Product Range")
        , DimensionValue "Hide & Seek" (Dimension "Product Style")
        , DimensionValue "Wallet" (Dimension "Product Type")
        , DimensionValue "small" (Dimension "Shipping Sizes")
        , DimensionValue "hi" (Dimension "Size")
        , DimensionValue "WHSD" (Dimension "Style")
        ]
    , Product
        (ProductSku "WHSE-JAV-301")
        (ProductName "Hide & Seek - Java")
        [ ProductPrice 700 0 HKD
        , ProductPrice 115 0 AUD
        , ProductPrice 109 0 CAD
        , ProductPrice 89 0 EUR
        , ProductPrice 129 0 SGD
        , ProductPrice 89 0 USD
        , ProductPrice 75 0 GBP
        , ProductPrice 12200 0 JPY
        , ProductPrice 339 0 AED
        , ProductPrice 129 0 NZD
        ]
        [ DimensionValue "java" (Dimension "Color")
        , DimensionValue "leather_rfid" (Dimension "Material")
        , DimensionValue "facebook" (Dimension "Product Feed")
        , DimensionValue "google_shopping" (Dimension "Product Feed")
        , DimensionValue "instagram" (Dimension "Product Feed")
        , DimensionValue "rakuten_affiliate" (Dimension "Product Feed")
        , DimensionValue "Men's Wallet" (Dimension "Product Range")
        , DimensionValue "Hide & Seek" (Dimension "Product Style")
        , DimensionValue "Wallet" (Dimension "Product Type")
        , DimensionValue "small" (Dimension "Shipping Sizes")
        , DimensionValue "hi" (Dimension "Size")
        , DimensionValue "WHSD" (Dimension "Style")
        ]
    , Product
        (ProductSku "WHSE-NAV-301")
        (ProductName "Hide & Seek - Navy")
        [ ProductPrice 700 0 HKD
        , ProductPrice 115 0 AUD
        , ProductPrice 109 0 CAD
        , ProductPrice 89 0 EUR
        , ProductPrice 129 0 SGD
        , ProductPrice 89 0 USD
        , ProductPrice 12200 0 JPY
        , ProductPrice 75 0 GBP
        , ProductPrice 339 0 AED
        , ProductPrice 129 0 NZD
        ]
        [ DimensionValue "navy" (Dimension "Color")
        , DimensionValue "leather_rfid" (Dimension "Material")
        , DimensionValue "facebook" (Dimension "Product Feed")
        , DimensionValue "google_shopping" (Dimension "Product Feed")
        , DimensionValue "instagram" (Dimension "Product Feed")
        , DimensionValue "rakuten_affiliate" (Dimension "Product Feed")
        , DimensionValue "Men's Wallet" (Dimension "Product Range")
        , DimensionValue "Hide & Seek" (Dimension "Product Style")
        , DimensionValue "Wallet" (Dimension "Product Type")
        , DimensionValue "small" (Dimension "Shipping Sizes")
        , DimensionValue "hi" (Dimension "Size")
        , DimensionValue "WHSD" (Dimension "Style")
        ]
    , Product
        (ProductSku "WHSE-RAG-301")
        (ProductName "Hide & Seek - Racing Green")
        [ ProductPrice 700 0 HKD
        , ProductPrice 115 0 AUD
        , ProductPrice 109 0 CAD
        , ProductPrice 89 0 EUR
        , ProductPrice 12200 0 JPY
        , ProductPrice 129 0 SGD
        , ProductPrice 89 0 USD
        , ProductPrice 75 0 GBP
        , ProductPrice 339 0 AED
        , ProductPrice 129 0 NZD
        ]
        [ DimensionValue "racing_green" (Dimension "Color")
        , DimensionValue "leather_rfid" (Dimension "Material")
        , DimensionValue "facebook" (Dimension "Product Feed")
        , DimensionValue "google_shopping" (Dimension "Product Feed")
        , DimensionValue "instagram" (Dimension "Product Feed")
        , DimensionValue "rakuten_affiliate" (Dimension "Product Feed")
        , DimensionValue "Men's Wallet" (Dimension "Product Range")
        , DimensionValue "Hide & Seek" (Dimension "Product Style")
        , DimensionValue "Wallet" (Dimension "Product Type")
        , DimensionValue "small" (Dimension "Shipping Sizes")
        , DimensionValue "hi" (Dimension "Size")
        , DimensionValue "WHSD" (Dimension "Style")
        ]
    , Product
        (ProductSku "WHSE-WIN-301")
        (ProductName "Hide & Seek - Wine")
        [ ProductPrice 700 0 HKD
        , ProductPrice 115 0 AUD
        , ProductPrice 109 0 CAD
        , ProductPrice 89 0 EUR
        , ProductPrice 12200 0 JPY
        , ProductPrice 129 0 SGD
        , ProductPrice 89 0 USD
        , ProductPrice 75 0 GBP
        , ProductPrice 339 0 AED
        , ProductPrice 129 0 NZD
        ]
        [ DimensionValue "wine" (Dimension "Color")
        , DimensionValue "leather_rfid" (Dimension "Material")
        , DimensionValue "facebook" (Dimension "Product Feed")
        , DimensionValue "google_shopping" (Dimension "Product Feed")
        , DimensionValue "instagram" (Dimension "Product Feed")
        , DimensionValue "rakuten_affiliate" (Dimension "Product Feed")
        , DimensionValue "Men's Wallet" (Dimension "Product Range")
        , DimensionValue "Hide & Seek" (Dimension "Product Style")
        , DimensionValue "Wallet" (Dimension "Product Type")
        , DimensionValue "small" (Dimension "Shipping Sizes")
        , DimensionValue "hi" (Dimension "Size")
        , DimensionValue "WHSD" (Dimension "Style")
        ]
    , Product
        (ProductSku "WMSB-BLACK")
        (ProductName "Micro Sleeve - Black")
        [ ProductPrice 85 0 AUD
        , ProductPrice 79 0 CAD
        , ProductPrice 65 0 EUR
        , ProductPrice 99 0 SGD
        , ProductPrice 65 0 USD
        , ProductPrice 510 0 HKD
        , ProductPrice 8900 0 JPY
        , ProductPrice 55 0 GBP
        , ProductPrice 249 0 AED
        , ProductPrice 89 0 NZD
        ]
        [ DimensionValue "black" (Dimension "Color")
        , DimensionValue "facebook" (Dimension "Product Feed")
        , DimensionValue "google_shopping" (Dimension "Product Feed")
        , DimensionValue "instagram" (Dimension "Product Feed")
        , DimensionValue "rakuten_affiliate" (Dimension "Product Feed")
        , DimensionValue "Men's Wallet" (Dimension "Product Range")
        , DimensionValue "Micro Sleeve" (Dimension "Product Style")
        , DimensionValue "Wallet" (Dimension "Product Type")
        , DimensionValue "small" (Dimension "Shipping Sizes")
        , DimensionValue "default" (Dimension "Size")
        , DimensionValue "6 or less cards" (Dimension "Storage")
        , DimensionValue "Cards" (Dimension "Storage")
        , DimensionValue "WMSB" (Dimension "Style")
        ]
    , Product
        (ProductSku "WMSB-CARAMEL")
        (ProductName "Micro Sleeve - Caramel")
        [ ProductPrice 85 0 AUD
        , ProductPrice 79 0 CAD
        , ProductPrice 65 0 EUR
        , ProductPrice 99 0 SGD
        , ProductPrice 65 0 USD
        , ProductPrice 55 0 GBP
        , ProductPrice 510 0 HKD
        , ProductPrice 8900 0 JPY
        , ProductPrice 249 0 AED
        , ProductPrice 89 0 NZD
        ]
        [ DimensionValue "caramel" (Dimension "Color")
        , DimensionValue "facebook" (Dimension "Product Feed")
        , DimensionValue "google_shopping" (Dimension "Product Feed")
        , DimensionValue "instagram" (Dimension "Product Feed")
        , DimensionValue "rakuten_affiliate" (Dimension "Product Feed")
        , DimensionValue "Men's Wallet" (Dimension "Product Range")
        , DimensionValue "Micro Sleeve" (Dimension "Product Style")
        , DimensionValue "Wallet" (Dimension "Product Type")
        , DimensionValue "small" (Dimension "Shipping Sizes")
        , DimensionValue "default" (Dimension "Size")
        , DimensionValue "6 or less cards" (Dimension "Storage")
        , DimensionValue "Cards" (Dimension "Storage")
        , DimensionValue "WMSB" (Dimension "Style")
        ]
    , Product
        (ProductSku "WMSB-NAT-101")
        (ProductName "Micro Sleeve - Navy Tan")
        [ ProductPrice 510 0 HKD
        , ProductPrice 85 0 AUD
        , ProductPrice 79 0 CAD
        , ProductPrice 65 0 EUR
        , ProductPrice 49 0 GBP
        , ProductPrice 8900 0 JPY
        , ProductPrice 99 0 SGD
        , ProductPrice 65 0 USD
        , ProductPrice 249 0 AED
        , ProductPrice 89 0 NZD
        ]
        [ DimensionValue "navy-tan" (Dimension "Color")
        , DimensionValue "facebook" (Dimension "Product Feed")
        , DimensionValue "google_shopping" (Dimension "Product Feed")
        , DimensionValue "instagram" (Dimension "Product Feed")
        , DimensionValue "rakuten_affiliate" (Dimension "Product Feed")
        , DimensionValue "Men's Wallet" (Dimension "Product Range")
        , DimensionValue "Micro Sleeve" (Dimension "Product Style")
        , DimensionValue "Wallet" (Dimension "Product Type")
        , DimensionValue "small" (Dimension "Shipping Sizes")
        , DimensionValue "default" (Dimension "Size")
        , DimensionValue "WMSB" (Dimension "Style")
        ]
    , Product
        (ProductSku "WNSC-ARCTICBLUE")
        (ProductName "Note Sleeve - Arctic Blue")
        [ ProductPrice 109 0 AUD
        , ProductPrice 105 0 CAD
        , ProductPrice 85 0 EUR
        , ProductPrice 125 0 SGD
        , ProductPrice 85 0 USD
        , ProductPrice 660 0 HKD
        , ProductPrice 11600 0 JPY
        , ProductPrice 69 0 GBP
        , ProductPrice 339 0 AED
        , ProductPrice 99 0 NZD
        ]
        [ DimensionValue "arctic_blue" (Dimension "Color")
        , DimensionValue "leather" (Dimension "Material")
        , DimensionValue "facebook" (Dimension "Product Feed")
        , DimensionValue "google_shopping" (Dimension "Product Feed")
        , DimensionValue "instagram" (Dimension "Product Feed")
        , DimensionValue "rakuten_affiliate" (Dimension "Product Feed")
        , DimensionValue "Men's Wallet" (Dimension "Product Range")
        , DimensionValue "Note Sleeve" (Dimension "Product Style")
        , DimensionValue "Wallet" (Dimension "Product Type")
        , DimensionValue "small" (Dimension "Shipping Sizes")
        , DimensionValue "12 or less cards" (Dimension "Storage")
        , DimensionValue "12+ cards" (Dimension "Storage")
        , DimensionValue "Bills" (Dimension "Storage")
        , DimensionValue "Cards" (Dimension "Storage")
        , DimensionValue "Coins" (Dimension "Storage")
        , DimensionValue "WNSC" (Dimension "Style")
        ]
    , Product
        (ProductSku "WNSC-BLK-301")
        (ProductName "Note Sleeve - Black")
        [ ProductPrice 700 0 HKD
        , ProductPrice 115 0 AUD
        , ProductPrice 109 0 CAD
        , ProductPrice 89 0 EUR
        , ProductPrice 129 0 SGD
        , ProductPrice 75 0 GBP
        , ProductPrice 89 0 USD
        , ProductPrice 12200 0 JPY
        , ProductPrice 359 0 AED
        , ProductPrice 129 0 NZD
        ]
        [ DimensionValue "black" (Dimension "Color")
        , DimensionValue "leather_rfid" (Dimension "Material")
        , DimensionValue "facebook" (Dimension "Product Feed")
        , DimensionValue "google_shopping" (Dimension "Product Feed")
        , DimensionValue "instagram" (Dimension "Product Feed")
        , DimensionValue "rakuten_affiliate" (Dimension "Product Feed")
        , DimensionValue "Men's Wallet" (Dimension "Product Range")
        , DimensionValue "Note Sleeve" (Dimension "Product Style")
        , DimensionValue "Wallet" (Dimension "Product Type")
        , DimensionValue "small" (Dimension "Shipping Sizes")
        , DimensionValue "12 or less cards" (Dimension "Storage")
        , DimensionValue "12+ cards" (Dimension "Storage")
        , DimensionValue "Bills" (Dimension "Storage")
        , DimensionValue "Cards" (Dimension "Storage")
        , DimensionValue "Coins" (Dimension "Storage")
        , DimensionValue "WNSC" (Dimension "Style")
        ]
    , Product
        (ProductSku "WNSC-CHA-301")
        (ProductName "Note Sleeve - Charcoal")
        [ ProductPrice 700 0 HKD
        , ProductPrice 115 0 AUD
        , ProductPrice 109 0 CAD
        , ProductPrice 89 0 EUR
        , ProductPrice 129 0 SGD
        , ProductPrice 89 0 USD
        , ProductPrice 12200 0 JPY
        , ProductPrice 75 0 GBP
        , ProductPrice 359 0 AED
        , ProductPrice 129 0 NZD
        ]
        [ DimensionValue "charcoal" (Dimension "Color")
        , DimensionValue "leather_rfid" (Dimension "Material")
        , DimensionValue "facebook" (Dimension "Product Feed")
        , DimensionValue "google_shopping" (Dimension "Product Feed")
        , DimensionValue "instagram" (Dimension "Product Feed")
        , DimensionValue "rakuten_affiliate" (Dimension "Product Feed")
        , DimensionValue "Men's Wallet" (Dimension "Product Range")
        , DimensionValue "Note Sleeve" (Dimension "Product Style")
        , DimensionValue "Wallet" (Dimension "Product Type")
        , DimensionValue "small" (Dimension "Shipping Sizes")
        , DimensionValue "12 or less cards" (Dimension "Storage")
        , DimensionValue "12+ cards" (Dimension "Storage")
        , DimensionValue "Bills" (Dimension "Storage")
        , DimensionValue "Cards" (Dimension "Storage")
        , DimensionValue "Coins" (Dimension "Storage")
        , DimensionValue "WNSC" (Dimension "Style")
        ]
    , Product
        (ProductSku "WNSC-COA-301")
        (ProductName "Note Sleeve - Cocoa")
        [ ProductPrice 700 0 HKD
        , ProductPrice 115 0 AUD
        , ProductPrice 109 0 CAD
        , ProductPrice 89 0 EUR
        , ProductPrice 129 0 SGD
        , ProductPrice 89 0 USD
        , ProductPrice 12200 0 JPY
        , ProductPrice 75 0 GBP
        , ProductPrice 359 0 AED
        , ProductPrice 129 0 NZD
        ]
        [ DimensionValue "cocoa" (Dimension "Color")
        , DimensionValue "leather_rfid" (Dimension "Material")
        , DimensionValue "facebook" (Dimension "Product Feed")
        , DimensionValue "google_shopping" (Dimension "Product Feed")
        , DimensionValue "instagram" (Dimension "Product Feed")
        , DimensionValue "rakuten_affiliate" (Dimension "Product Feed")
        , DimensionValue "Men's Wallet" (Dimension "Product Range")
        , DimensionValue "Note Sleeve" (Dimension "Product Style")
        , DimensionValue "Wallet" (Dimension "Product Type")
        , DimensionValue "small" (Dimension "Shipping Sizes")
        , DimensionValue "12 or less cards" (Dimension "Storage")
        , DimensionValue "12+ cards" (Dimension "Storage")
        , DimensionValue "Bills" (Dimension "Storage")
        , DimensionValue "Cards" (Dimension "Storage")
        , DimensionValue "Coins" (Dimension "Storage")
        , DimensionValue "WNSC" (Dimension "Style")
        ]
    , Product
        (ProductSku "WNSC-JAC-301")
        (ProductName "Note Sleeve - Java")
        [ ProductPrice 700 0 HKD
        , ProductPrice 115 0 AUD
        , ProductPrice 109 0 CAD
        , ProductPrice 89 0 EUR
        , ProductPrice 129 0 SGD
        , ProductPrice 89 0 USD
        , ProductPrice 12200 0 JPY
        , ProductPrice 75 0 GBP
        , ProductPrice 359 0 AED
        , ProductPrice 129 0 NZD
        ]
        [ DimensionValue "java" (Dimension "Color")
        , DimensionValue "leather_rfid" (Dimension "Material")
        , DimensionValue "facebook" (Dimension "Product Feed")
        , DimensionValue "google_shopping" (Dimension "Product Feed")
        , DimensionValue "instagram" (Dimension "Product Feed")
        , DimensionValue "rakuten_affiliate" (Dimension "Product Feed")
        , DimensionValue "Men's Wallet" (Dimension "Product Range")
        , DimensionValue "Note Sleeve" (Dimension "Product Style")
        , DimensionValue "Wallet" (Dimension "Product Type")
        , DimensionValue "small" (Dimension "Shipping Sizes")
        , DimensionValue "12 or less cards" (Dimension "Storage")
        , DimensionValue "12+ cards" (Dimension "Storage")
        , DimensionValue "Bills" (Dimension "Storage")
        , DimensionValue "Cards" (Dimension "Storage")
        , DimensionValue "Coins" (Dimension "Storage")
        , DimensionValue "WNSC" (Dimension "Style")
        ]
    , Product
        (ProductSku "WNSC-NAT-301")
        (ProductName "Note Sleeve - Navy")
        [ ProductPrice 700 0 HKD
        , ProductPrice 75 0 GBP
        , ProductPrice 115 0 AUD
        , ProductPrice 109 0 CAD
        , ProductPrice 89 0 EUR
        , ProductPrice 129 0 SGD
        , ProductPrice 89 0 USD
        , ProductPrice 12200 0 JPY
        , ProductPrice 359 0 AED
        , ProductPrice 129 0 NZD
        ]
        [ DimensionValue "navy" (Dimension "Color")
        , DimensionValue "leather_rfid" (Dimension "Material")
        , DimensionValue "facebook" (Dimension "Product Feed")
        , DimensionValue "google_shopping" (Dimension "Product Feed")
        , DimensionValue "instagram" (Dimension "Product Feed")
        , DimensionValue "rakuten_affiliate" (Dimension "Product Feed")
        , DimensionValue "Men's Wallet" (Dimension "Product Range")
        , DimensionValue "Note Sleeve" (Dimension "Product Style")
        , DimensionValue "Wallet" (Dimension "Product Type")
        , DimensionValue "small" (Dimension "Shipping Sizes")
        , DimensionValue "12 or less cards" (Dimension "Storage")
        , DimensionValue "12+ cards" (Dimension "Storage")
        , DimensionValue "Bills" (Dimension "Storage")
        , DimensionValue "Cards" (Dimension "Storage")
        , DimensionValue "Coins" (Dimension "Storage")
        , DimensionValue "WNSC" (Dimension "Style")
        ]
    , Product
        (ProductSku "WNSC-RAG-301")
        (ProductName "Note Sleeve - Racing Green")
        [ ProductPrice 700 0 HKD
        , ProductPrice 115 0 AUD
        , ProductPrice 109 0 CAD
        , ProductPrice 89 0 EUR
        , ProductPrice 129 0 SGD
        , ProductPrice 89 0 USD
        , ProductPrice 12200 0 JPY
        , ProductPrice 75 0 GBP
        , ProductPrice 359 0 AED
        , ProductPrice 129 0 NZD
        ]
        [ DimensionValue "racing_green" (Dimension "Color")
        , DimensionValue "leather_rfid" (Dimension "Material")
        , DimensionValue "facebook" (Dimension "Product Feed")
        , DimensionValue "google_shopping" (Dimension "Product Feed")
        , DimensionValue "instagram" (Dimension "Product Feed")
        , DimensionValue "rakuten_affiliate" (Dimension "Product Feed")
        , DimensionValue "Men's Wallet" (Dimension "Product Range")
        , DimensionValue "Note Sleeve" (Dimension "Product Style")
        , DimensionValue "Wallet" (Dimension "Product Type")
        , DimensionValue "small" (Dimension "Shipping Sizes")
        , DimensionValue "12 or less cards" (Dimension "Storage")
        , DimensionValue "12+ cards" (Dimension "Storage")
        , DimensionValue "Bills" (Dimension "Storage")
        , DimensionValue "Cards" (Dimension "Storage")
        , DimensionValue "Coins" (Dimension "Storage")
        , DimensionValue "WNSC" (Dimension "Style")
        ]
    , Product
        (ProductSku "WNSC-TAN-301")
        (ProductName "Note Sleeve - Tan")
        [ ProductPrice 700 0 HKD
        , ProductPrice 115 0 AUD
        , ProductPrice 109 0 CAD
        , ProductPrice 89 0 EUR
        , ProductPrice 129 0 SGD
        , ProductPrice 89 0 USD
        , ProductPrice 12200 0 JPY
        , ProductPrice 75 0 GBP
        , ProductPrice 359 0 AED
        , ProductPrice 129 0 NZD
        ]
        [ DimensionValue "tan" (Dimension "Color")
        , DimensionValue "leather_rfid" (Dimension "Material")
        , DimensionValue "facebook" (Dimension "Product Feed")
        , DimensionValue "google_shopping" (Dimension "Product Feed")
        , DimensionValue "instagram" (Dimension "Product Feed")
        , DimensionValue "rakuten_affiliate" (Dimension "Product Feed")
        , DimensionValue "Men's Wallet" (Dimension "Product Range")
        , DimensionValue "Note Sleeve" (Dimension "Product Style")
        , DimensionValue "Wallet" (Dimension "Product Type")
        , DimensionValue "small" (Dimension "Shipping Sizes")
        , DimensionValue "12 or less cards" (Dimension "Storage")
        , DimensionValue "12+ cards" (Dimension "Storage")
        , DimensionValue "Bills" (Dimension "Storage")
        , DimensionValue "Cards" (Dimension "Storage")
        , DimensionValue "Coins" (Dimension "Storage")
        , DimensionValue "WNSC" (Dimension "Style")
        ]
    , Product
        (ProductSku "WNSC-TEL-301")
        (ProductName "Note Sleeve - Teal")
        [ ProductPrice 700 0 HKD
        , ProductPrice 115 0 AUD
        , ProductPrice 109 0 CAD
        , ProductPrice 89 0 EUR
        , ProductPrice 129 0 SGD
        , ProductPrice 89 0 USD
        , ProductPrice 12200 0 JPY
        , ProductPrice 75 0 GBP
        , ProductPrice 359 0 AED
        , ProductPrice 129 0 NZD
        ]
        [ DimensionValue "teal" (Dimension "Color")
        , DimensionValue "leather_rfid" (Dimension "Material")
        , DimensionValue "facebook" (Dimension "Product Feed")
        , DimensionValue "google_shopping" (Dimension "Product Feed")
        , DimensionValue "instagram" (Dimension "Product Feed")
        , DimensionValue "rakuten_affiliate" (Dimension "Product Feed")
        , DimensionValue "Men's Wallet" (Dimension "Product Range")
        , DimensionValue "Note Sleeve" (Dimension "Product Style")
        , DimensionValue "Wallet" (Dimension "Product Type")
        , DimensionValue "small" (Dimension "Shipping Sizes")
        , DimensionValue "12 or less cards" (Dimension "Storage")
        , DimensionValue "12+ cards" (Dimension "Storage")
        , DimensionValue "Bills" (Dimension "Storage")
        , DimensionValue "Cards" (Dimension "Storage")
        , DimensionValue "Coins" (Dimension "Storage")
        , DimensionValue "WNSC" (Dimension "Style")
        ]
    , Product
        (ProductSku "WNSC-WIN-301")
        (ProductName "Note Sleeve - Wine")
        [ ProductPrice 700 0 HKD
        , ProductPrice 115 0 AUD
        , ProductPrice 109 0 CAD
        , ProductPrice 89 0 EUR
        , ProductPrice 129 0 SGD
        , ProductPrice 89 0 USD
        , ProductPrice 12200 0 JPY
        , ProductPrice 75 0 GBP
        , ProductPrice 359 0 AED
        , ProductPrice 129 0 NZD
        ]
        [ DimensionValue "wine" (Dimension "Color")
        , DimensionValue "leather_rfid" (Dimension "Material")
        , DimensionValue "facebook" (Dimension "Product Feed")
        , DimensionValue "google_shopping" (Dimension "Product Feed")
        , DimensionValue "instagram" (Dimension "Product Feed")
        , DimensionValue "rakuten_affiliate" (Dimension "Product Feed")
        , DimensionValue "Men's Wallet" (Dimension "Product Range")
        , DimensionValue "Note Sleeve" (Dimension "Product Style")
        , DimensionValue "Wallet" (Dimension "Product Type")
        , DimensionValue "small" (Dimension "Shipping Sizes")
        , DimensionValue "12 or less cards" (Dimension "Storage")
        , DimensionValue "12+ cards" (Dimension "Storage")
        , DimensionValue "Bills" (Dimension "Storage")
        , DimensionValue "Cards" (Dimension "Storage")
        , DimensionValue "Coins" (Dimension "Storage")
        , DimensionValue "WNSC" (Dimension "Style")
        ]
    , Product
        (ProductSku "WPSA-BLACK")
        (ProductName "Passport Sleeve - Black")
        [ ProductPrice 129 0 AUD
        , ProductPrice 119 0 CAD
        , ProductPrice 99 0 EUR
        , ProductPrice 139 0 SGD
        , ProductPrice 99 0 USD
        , ProductPrice 85 0 GBP
        , ProductPrice 780 0 HKD
        , ProductPrice 13600 0 JPY
        , ProductPrice 379 0 AED
        , ProductPrice 139 0 NZD
        ]
        [ DimensionValue "black" (Dimension "Color")
        , DimensionValue "facebook" (Dimension "Product Feed")
        , DimensionValue "google_shopping" (Dimension "Product Feed")
        , DimensionValue "instagram" (Dimension "Product Feed")
        , DimensionValue "rakuten_affiliate" (Dimension "Product Feed")
        , DimensionValue "Travel Wallet" (Dimension "Product Range")
        , DimensionValue "Passport Sleeve" (Dimension "Product Style")
        , DimensionValue "Wallet" (Dimension "Product Type")
        , DimensionValue "small" (Dimension "Shipping Sizes")
        , DimensionValue "lo" (Dimension "Size")
        , DimensionValue "1 Passport" (Dimension "Storage")
        , DimensionValue "6 or less cards" (Dimension "Storage")
        , DimensionValue "Passport" (Dimension "Storage")
        , DimensionValue "Pen" (Dimension "Storage")
        , DimensionValue "Travel documents" (Dimension "Storage")
        , DimensionValue "WPSA" (Dimension "Style")
        ]
    , Product
        (ProductSku "WPSB-MOCHA")
        (ProductName "Passport Sleeve - Mocha")
        [ ProductPrice 780 0 HKD
        , ProductPrice 129 0 AUD
        , ProductPrice 119 0 CAD
        , ProductPrice 99 0 EUR
        , ProductPrice 139 0 SGD
        , ProductPrice 99 0 USD
        , ProductPrice 13600 0 JPY
        , ProductPrice 85 0 GBP
        , ProductPrice 379 0 AED
        , ProductPrice 139 0 NZD
        ]
        [ DimensionValue "mocha" (Dimension "Color")
        , DimensionValue "facebook" (Dimension "Product Feed")
        , DimensionValue "google_shopping" (Dimension "Product Feed")
        , DimensionValue "instagram" (Dimension "Product Feed")
        , DimensionValue "rakuten_affiliate" (Dimension "Product Feed")
        , DimensionValue "Travel Wallet" (Dimension "Product Range")
        , DimensionValue "Passport Sleeve" (Dimension "Product Style")
        , DimensionValue "Wallet" (Dimension "Product Type")
        , DimensionValue "small" (Dimension "Shipping Sizes")
        , DimensionValue "hi" (Dimension "Size")
        , DimensionValue "WPSA" (Dimension "Style")
        ]
    , Product
        (ProductSku "WSSB-BLACK")
        (ProductName "Slim Sleeve - Black")
        [ ProductPrice 99 0 AUD
        , ProductPrice 65 0 GBP
        , ProductPrice 99 0 CAD
        , ProductPrice 79 0 EUR
        , ProductPrice 10800 0 JPY
        , ProductPrice 119 0 SGD
        , ProductPrice 79 0 USD
        , ProductPrice 620 0 HKD
        , ProductPrice 299 0 AED
        , ProductPrice 115 0 NZD
        ]
        [ DimensionValue "black" (Dimension "Color")
        , DimensionValue "facebook" (Dimension "Product Feed")
        , DimensionValue "google_shopping" (Dimension "Product Feed")
        , DimensionValue "instagram" (Dimension "Product Feed")
        , DimensionValue "rakuten_affiliate" (Dimension "Product Feed")
        , DimensionValue "Men's Wallet" (Dimension "Product Range")
        , DimensionValue "Slim Sleeve" (Dimension "Product Style")
        , DimensionValue "Wallet" (Dimension "Product Type")
        , DimensionValue "small" (Dimension "Shipping Sizes")
        , DimensionValue "default" (Dimension "Size")
        , DimensionValue "12 or less cards" (Dimension "Storage")
        , DimensionValue "6 or less cards" (Dimension "Storage")
        , DimensionValue "Bills" (Dimension "Storage")
        , DimensionValue "Cards" (Dimension "Storage")
        , DimensionValue "WSSB" (Dimension "Style")
        ]
    , Product
        (ProductSku "WSSB-CHG-101")
        (ProductName "Slim Sleeve - Charcoal")
        [ ProductPrice 620 0 HKD
        , ProductPrice 99 0 AUD
        , ProductPrice 99 0 CAD
        , ProductPrice 79 0 EUR
        , ProductPrice 10800 0 JPY
        , ProductPrice 119 0 SGD
        , ProductPrice 79 0 USD
        , ProductPrice 65 0 GBP
        , ProductPrice 115 0 NZD
        , ProductPrice 299 0 AED
        ]
        [ DimensionValue "charcoal" (Dimension "Color")
        , DimensionValue "facebook" (Dimension "Product Feed")
        , DimensionValue "google_shopping" (Dimension "Product Feed")
        , DimensionValue "instagram" (Dimension "Product Feed")
        , DimensionValue "rakuten_affiliate" (Dimension "Product Feed")
        , DimensionValue "Men's Wallet" (Dimension "Product Range")
        , DimensionValue "Slim Sleeve" (Dimension "Product Style")
        , DimensionValue "Wallet" (Dimension "Product Type")
        , DimensionValue "small" (Dimension "Shipping Sizes")
        , DimensionValue "default" (Dimension "Size")
        , DimensionValue "WSSB" (Dimension "Style")
        ]
    , Product
        (ProductSku "WSSB-CJA-101")
        (ProductName "Slim Sleeve - Cocoa")
        [ ProductPrice 620 0 HKD
        , ProductPrice 99 0 AUD
        , ProductPrice 99 0 CAD
        , ProductPrice 79 0 EUR
        , ProductPrice 10800 0 JPY
        , ProductPrice 119 0 SGD
        , ProductPrice 79 0 USD
        , ProductPrice 65 0 GBP
        , ProductPrice 299 0 AED
        , ProductPrice 115 0 NZD
        ]
        [ DimensionValue "cocoa" (Dimension "Color")
        , DimensionValue "facebook" (Dimension "Product Feed")
        , DimensionValue "google_shopping" (Dimension "Product Feed")
        , DimensionValue "instagram" (Dimension "Product Feed")
        , DimensionValue "rakuten_affiliate" (Dimension "Product Feed")
        , DimensionValue "Men's Wallet" (Dimension "Product Range")
        , DimensionValue "Slim Sleeve" (Dimension "Product Style")
        , DimensionValue "Wallet" (Dimension "Product Type")
        , DimensionValue "small" (Dimension "Shipping Sizes")
        , DimensionValue "default" (Dimension "Size")
        , DimensionValue "WSSB" (Dimension "Style")
        ]
    , Product
        (ProductSku "WSSB-JAC-101")
        (ProductName "Slim Sleeve - Java")
        [ ProductPrice 620 0 HKD
        , ProductPrice 99 0 AUD
        , ProductPrice 99 0 CAD
        , ProductPrice 79 0 EUR
        , ProductPrice 10800 0 JPY
        , ProductPrice 119 0 SGD
        , ProductPrice 79 0 USD
        , ProductPrice 65 0 GBP
        , ProductPrice 299 0 AED
        , ProductPrice 115 0 NZD
        ]
        [ DimensionValue "java" (Dimension "Color")
        , DimensionValue "facebook" (Dimension "Product Feed")
        , DimensionValue "google_shopping" (Dimension "Product Feed")
        , DimensionValue "instagram" (Dimension "Product Feed")
        , DimensionValue "rakuten_affiliate" (Dimension "Product Feed")
        , DimensionValue "Men's Wallet" (Dimension "Product Range")
        , DimensionValue "Slim Sleeve" (Dimension "Product Style")
        , DimensionValue "Wallet" (Dimension "Product Type")
        , DimensionValue "small" (Dimension "Shipping Sizes")
        , DimensionValue "default" (Dimension "Size")
        , DimensionValue "WSSB" (Dimension "Style")
        ]
    , Product
        (ProductSku "WSSB-NAT-101")
        (ProductName "Slim Sleeve - Navy")
        [ ProductPrice 620 0 HKD
        , ProductPrice 99 0 AUD
        , ProductPrice 99 0 CAD
        , ProductPrice 79 0 EUR
        , ProductPrice 10800 0 JPY
        , ProductPrice 119 0 SGD
        , ProductPrice 79 0 USD
        , ProductPrice 65 0 GBP
        , ProductPrice 299 0 AED
        , ProductPrice 115 0 NZD
        ]
        [ DimensionValue "navy" (Dimension "Color")
        , DimensionValue "facebook" (Dimension "Product Feed")
        , DimensionValue "google_shopping" (Dimension "Product Feed")
        , DimensionValue "instagram" (Dimension "Product Feed")
        , DimensionValue "rakuten_affiliate" (Dimension "Product Feed")
        , DimensionValue "Men's Wallet" (Dimension "Product Range")
        , DimensionValue "Slim Sleeve" (Dimension "Product Style")
        , DimensionValue "Wallet" (Dimension "Product Type")
        , DimensionValue "small" (Dimension "Shipping Sizes")
        , DimensionValue "default" (Dimension "Size")
        , DimensionValue "WSSB" (Dimension "Style")
        ]
    , Product
        (ProductSku "WSSB-RAG-101")
        (ProductName "Slim Sleeve - Racing Green")
        [ ProductPrice 620 0 HKD
        , ProductPrice 99 0 AUD
        , ProductPrice 99 0 CAD
        , ProductPrice 79 0 EUR
        , ProductPrice 10800 0 JPY
        , ProductPrice 119 0 SGD
        , ProductPrice 79 0 USD
        , ProductPrice 65 0 GBP
        , ProductPrice 299 0 AED
        , ProductPrice 115 0 NZD
        ]
        [ DimensionValue "racing_green" (Dimension "Color")
        , DimensionValue "facebook" (Dimension "Product Feed")
        , DimensionValue "google_shopping" (Dimension "Product Feed")
        , DimensionValue "instagram" (Dimension "Product Feed")
        , DimensionValue "rakuten_affiliate" (Dimension "Product Feed")
        , DimensionValue "Men's Wallet" (Dimension "Product Range")
        , DimensionValue "Slim Sleeve" (Dimension "Product Style")
        , DimensionValue "Wallet" (Dimension "Product Type")
        , DimensionValue "small" (Dimension "Shipping Sizes")
        , DimensionValue "default" (Dimension "Size")
        , DimensionValue "WSSB" (Dimension "Style")
        ]
    , Product
        (ProductSku "WSSB-TAG-101")
        (ProductName "Slim Sleeve - Tangelo")
        [ ProductPrice 620 0 HKD
        , ProductPrice 99 0 AUD
        , ProductPrice 99 0 CAD
        , ProductPrice 79 0 EUR
        , ProductPrice 10800 0 JPY
        , ProductPrice 119 0 SGD
        , ProductPrice 79 0 USD
        , ProductPrice 65 0 GBP
        , ProductPrice 299 0 AED
        , ProductPrice 115 0 NZD
        ]
        [ DimensionValue "tangelo" (Dimension "Color")
        , DimensionValue "facebook" (Dimension "Product Feed")
        , DimensionValue "google_shopping" (Dimension "Product Feed")
        , DimensionValue "instagram" (Dimension "Product Feed")
        , DimensionValue "rakuten_affiliate" (Dimension "Product Feed")
        , DimensionValue "Men's Wallet" (Dimension "Product Range")
        , DimensionValue "Slim Sleeve" (Dimension "Product Style")
        , DimensionValue "Wallet" (Dimension "Product Type")
        , DimensionValue "small" (Dimension "Shipping Sizes")
        , DimensionValue "default" (Dimension "Size")
        , DimensionValue "WSSB" (Dimension "Style")
        ]
    , Product
        (ProductSku "WSSB-TAN-101")
        (ProductName "Slim Sleeve - Tan")
        [ ProductPrice 99 0 AUD
        , ProductPrice 99 0 CAD
        , ProductPrice 79 0 EUR
        , ProductPrice 10800 0 JPY
        , ProductPrice 119 0 SGD
        , ProductPrice 79 0 USD
        , ProductPrice 65 0 GBP
        , ProductPrice 620 0 HKD
        , ProductPrice 299 0 AED
        , ProductPrice 115 0 NZD
        ]
        [ DimensionValue "tan" (Dimension "Color")
        , DimensionValue "facebook" (Dimension "Product Feed")
        , DimensionValue "google_shopping" (Dimension "Product Feed")
        , DimensionValue "instagram" (Dimension "Product Feed")
        , DimensionValue "rakuten_affiliate" (Dimension "Product Feed")
        , DimensionValue "Men's Wallet" (Dimension "Product Range")
        , DimensionValue "Slim Sleeve" (Dimension "Product Style")
        , DimensionValue "Wallet" (Dimension "Product Type")
        , DimensionValue "small" (Dimension "Shipping Sizes")
        , DimensionValue "default" (Dimension "Size")
        , DimensionValue "WSSB" (Dimension "Style")
        ]
    , Product
        (ProductSku "WSSB-WIN-101")
        (ProductName "Slim Sleeve - Wine")
        [ ProductPrice 620 0 HKD
        , ProductPrice 99 0 AUD
        , ProductPrice 99 0 CAD
        , ProductPrice 79 0 EUR
        , ProductPrice 10800 0 JPY
        , ProductPrice 119 0 SGD
        , ProductPrice 79 0 USD
        , ProductPrice 65 0 GBP
        , ProductPrice 299 0 AED
        , ProductPrice 115 0 NZD
        ]
        [ DimensionValue "wine" (Dimension "Color")
        , DimensionValue "facebook" (Dimension "Product Feed")
        , DimensionValue "google_shopping" (Dimension "Product Feed")
        , DimensionValue "instagram" (Dimension "Product Feed")
        , DimensionValue "rakuten_affiliate" (Dimension "Product Feed")
        , DimensionValue "Men's Wallet" (Dimension "Product Range")
        , DimensionValue "Slim Sleeve" (Dimension "Product Style")
        , DimensionValue "Wallet" (Dimension "Product Type")
        , DimensionValue "small" (Dimension "Shipping Sizes")
        , DimensionValue "default" (Dimension "Size")
        , DimensionValue "WSSB" (Dimension "Style")
        ]
    , Product
        (ProductSku "WTFA-BLK-301")
        (ProductName "Travel Folio - Black")
        [ ProductPrice 179 0 AUD
        , ProductPrice 169 0 CAD
        , ProductPrice 139 0 EUR
        , ProductPrice 119 0 GBP
        , ProductPrice 18900 0 JPY
        , ProductPrice 199 0 SGD
        , ProductPrice 139 0 USD
        , ProductPrice 1090 0 HKD
        , ProductPrice 529 0 AED
        , ProductPrice 199 0 NZD
        ]
        [ DimensionValue "black" (Dimension "Color")
        , DimensionValue "leather_rfid" (Dimension "Material")
        , DimensionValue "facebook" (Dimension "Product Feed")
        , DimensionValue "google_shopping" (Dimension "Product Feed")
        , DimensionValue "instagram" (Dimension "Product Feed")
        , DimensionValue "rakuten_affiliate" (Dimension "Product Feed")
        , DimensionValue "Travel Wallet" (Dimension "Product Range")
        , DimensionValue "Travel Folio" (Dimension "Product Style")
        , DimensionValue "Wallet" (Dimension "Product Type")
        , DimensionValue "small" (Dimension "Shipping Sizes")
        , DimensionValue "WTFA" (Dimension "Style")
        ]
    , Product
        (ProductSku "WTFA-CAR-301")
        (ProductName "Travel Folio - Caramel")
        [ ProductPrice 179 0 AUD
        , ProductPrice 169 0 CAD
        , ProductPrice 139 0 EUR
        , ProductPrice 119 0 GBP
        , ProductPrice 18900 0 JPY
        , ProductPrice 199 0 SGD
        , ProductPrice 139 0 USD
        , ProductPrice 1090 0 HKD
        , ProductPrice 529 0 AED
        , ProductPrice 199 0 NZD
        ]
        [ DimensionValue "caramel" (Dimension "Color")
        , DimensionValue "leather_rfid" (Dimension "Material")
        , DimensionValue "facebook" (Dimension "Product Feed")
        , DimensionValue "google_shopping" (Dimension "Product Feed")
        , DimensionValue "instagram" (Dimension "Product Feed")
        , DimensionValue "rakuten_affiliate" (Dimension "Product Feed")
        , DimensionValue "Travel Wallet" (Dimension "Product Range")
        , DimensionValue "Travel Folio" (Dimension "Product Style")
        , DimensionValue "Wallet" (Dimension "Product Type")
        , DimensionValue "small" (Dimension "Shipping Sizes")
        , DimensionValue "WTFA" (Dimension "Style")
        ]
    , Product
        (ProductSku "WTFA-NAV-301")
        (ProductName "Travel Folio - Navy")
        [ ProductPrice 179 0 AUD
        , ProductPrice 169 0 CAD
        , ProductPrice 139 0 EUR
        , ProductPrice 119 0 GBP
        , ProductPrice 18900 0 JPY
        , ProductPrice 199 0 SGD
        , ProductPrice 139 0 USD
        , ProductPrice 1090 0 HKD
        , ProductPrice 529 0 AED
        , ProductPrice 199 0 NZD
        ]
        [ DimensionValue "navy" (Dimension "Color")
        , DimensionValue "leather_rfid" (Dimension "Material")
        , DimensionValue "facebook" (Dimension "Product Feed")
        , DimensionValue "google_shopping" (Dimension "Product Feed")
        , DimensionValue "instagram" (Dimension "Product Feed")
        , DimensionValue "rakuten_affiliate" (Dimension "Product Feed")
        , DimensionValue "Travel Wallet" (Dimension "Product Range")
        , DimensionValue "Travel Folio" (Dimension "Product Style")
        , DimensionValue "Wallet" (Dimension "Product Type")
        , DimensionValue "small" (Dimension "Shipping Sizes")
        , DimensionValue "WTFA" (Dimension "Style")
        ]
    , Product
        (ProductSku "WTFA-TAG-301")
        (ProductName "Travel Folio - Tangelo")
        [ ProductPrice 179 0 AUD
        , ProductPrice 169 0 CAD
        , ProductPrice 139 0 EUR
        , ProductPrice 119 0 GBP
        , ProductPrice 18900 0 JPY
        , ProductPrice 199 0 SGD
        , ProductPrice 139 0 USD
        , ProductPrice 1090 0 HKD
        , ProductPrice 529 0 AED
        , ProductPrice 199 0 NZD
        ]
        [ DimensionValue "tangelo" (Dimension "Color")
        , DimensionValue "leather_rfid" (Dimension "Material")
        , DimensionValue "facebook" (Dimension "Product Feed")
        , DimensionValue "google_shopping" (Dimension "Product Feed")
        , DimensionValue "instagram" (Dimension "Product Feed")
        , DimensionValue "rakuten_affiliate" (Dimension "Product Feed")
        , DimensionValue "Travel Wallet" (Dimension "Product Range")
        , DimensionValue "Travel Folio" (Dimension "Product Style")
        , DimensionValue "Wallet" (Dimension "Product Type")
        , DimensionValue "small" (Dimension "Shipping Sizes")
        , DimensionValue "WTFA" (Dimension "Style")
        ]
    , Product
        (ProductSku "WTLA-BLK-101")
        (ProductName "The Low - Black")
        [ ProductPrice 580 0 HKD
        , ProductPrice 95 0 AUD
        , ProductPrice 95 0 CAD
        , ProductPrice 75 0 EUR
        , ProductPrice 65 0 GBP
        , ProductPrice 110 0 SGD
        , ProductPrice 75 0 USD
        , ProductPrice 10300 0 JPY
        , ProductPrice 289 0 AED
        , ProductPrice 109 0 NZD
        ]
        [ DimensionValue "black" (Dimension "Color")
        , DimensionValue "leather" (Dimension "Material")
        , DimensionValue "facebook" (Dimension "Product Feed")
        , DimensionValue "google_shopping" (Dimension "Product Feed")
        , DimensionValue "instagram" (Dimension "Product Feed")
        , DimensionValue "rakuten_affiliate" (Dimension "Product Feed")
        , DimensionValue "Men's Wallet" (Dimension "Product Range")
        , DimensionValue "The Low" (Dimension "Product Style")
        , DimensionValue "Wallet" (Dimension "Product Type")
        , DimensionValue "small" (Dimension "Shipping Sizes")
        , DimensionValue "WTLA" (Dimension "Style")
        ]
    , Product
        (ProductSku "WTLA-CAR-101")
        (ProductName "The Low - Caramel")
        [ ProductPrice 580 0 HKD
        , ProductPrice 95 0 AUD
        , ProductPrice 95 0 CAD
        , ProductPrice 75 0 EUR
        , ProductPrice 65 0 GBP
        , ProductPrice 110 0 SGD
        , ProductPrice 75 0 USD
        , ProductPrice 10300 0 JPY
        , ProductPrice 289 0 AED
        , ProductPrice 109 0 NZD
        ]
        [ DimensionValue "caramel" (Dimension "Color")
        , DimensionValue "leather" (Dimension "Material")
        , DimensionValue "facebook" (Dimension "Product Feed")
        , DimensionValue "google_shopping" (Dimension "Product Feed")
        , DimensionValue "instagram" (Dimension "Product Feed")
        , DimensionValue "rakuten_affiliate" (Dimension "Product Feed")
        , DimensionValue "Men's Wallet" (Dimension "Product Range")
        , DimensionValue "The Low" (Dimension "Product Style")
        , DimensionValue "Wallet" (Dimension "Product Type")
        , DimensionValue "small" (Dimension "Shipping Sizes")
        , DimensionValue "WTLA" (Dimension "Style")
        ]
    , Product
        (ProductSku "WTLA-JAV-101")
        (ProductName "The Low - Java")
        [ ProductPrice 580 0 HKD
        , ProductPrice 95 0 AUD
        , ProductPrice 95 0 CAD
        , ProductPrice 75 0 EUR
        , ProductPrice 65 0 GBP
        , ProductPrice 110 0 SGD
        , ProductPrice 75 0 USD
        , ProductPrice 10300 0 JPY
        , ProductPrice 289 0 AED
        , ProductPrice 109 0 NZD
        ]
        [ DimensionValue "java" (Dimension "Color")
        , DimensionValue "leather" (Dimension "Material")
        , DimensionValue "facebook" (Dimension "Product Feed")
        , DimensionValue "google_shopping" (Dimension "Product Feed")
        , DimensionValue "instagram" (Dimension "Product Feed")
        , DimensionValue "rakuten_affiliate" (Dimension "Product Feed")
        , DimensionValue "Men's Wallet" (Dimension "Product Range")
        , DimensionValue "The Low" (Dimension "Product Style")
        , DimensionValue "Wallet" (Dimension "Product Type")
        , DimensionValue "small" (Dimension "Shipping Sizes")
        , DimensionValue "WTLA" (Dimension "Style")
        ]
    , Product
        (ProductSku "WTLA-TAN-101")
        (ProductName "The Low - Tan")
        [ ProductPrice 580 0 HKD
        , ProductPrice 95 0 AUD
        , ProductPrice 95 0 CAD
        , ProductPrice 75 0 EUR
        , ProductPrice 65 0 GBP
        , ProductPrice 10300 0 JPY
        , ProductPrice 110 0 SGD
        , ProductPrice 75 0 USD
        , ProductPrice 289 0 AED
        , ProductPrice 109 0 NZD
        ]
        [ DimensionValue "tan" (Dimension "Color")
        , DimensionValue "leather" (Dimension "Material")
        , DimensionValue "facebook" (Dimension "Product Feed")
        , DimensionValue "google_shopping" (Dimension "Product Feed")
        , DimensionValue "instagram" (Dimension "Product Feed")
        , DimensionValue "rakuten_affiliate" (Dimension "Product Feed")
        , DimensionValue "Men's Wallet" (Dimension "Product Range")
        , DimensionValue "The Low" (Dimension "Product Style")
        , DimensionValue "Wallet" (Dimension "Product Type")
        , DimensionValue "small" (Dimension "Shipping Sizes")
        , DimensionValue "WTLA" (Dimension "Style")
        ]
    , Product
        (ProductSku "WTRA-BLACK-RFID")
        (ProductName "Travel Wallet - Previous Design - Black")
        [ ProductPrice 59 0 GBP
        , ProductPrice 89 0 AUD
        , ProductPrice 79 0 CAD
        , ProductPrice 69 0 EUR
        , ProductPrice 9500 0 JPY
        , ProductPrice 95 0 SGD
        , ProductPrice 69 0 USD
        , ProductPrice 550 0 HKD
        , ProductPrice 259 0 AED
        , ProductPrice 89 0 NZD
        ]
        [ DimensionValue "black" (Dimension "Color")
        , DimensionValue "leather_rfid" (Dimension "Material")
        , DimensionValue "facebook" (Dimension "Product Feed")
        , DimensionValue "google_shopping" (Dimension "Product Feed")
        , DimensionValue "instagram" (Dimension "Product Feed")
        , DimensionValue "rakuten_affiliate" (Dimension "Product Feed")
        , DimensionValue "Travel Wallet" (Dimension "Product Range")
        , DimensionValue "Travel Wallet" (Dimension "Product Style")
        , DimensionValue "Wallet" (Dimension "Product Type")
        , DimensionValue "small" (Dimension "Shipping Sizes")
        , DimensionValue "1 Passport" (Dimension "Storage")
        , DimensionValue "12 or less cards" (Dimension "Storage")
        , DimensionValue "2 — 3 Passports" (Dimension "Storage")
        , DimensionValue "6 or less cards" (Dimension "Storage")
        , DimensionValue "Bills" (Dimension "Storage")
        , DimensionValue "Cards" (Dimension "Storage")
        , DimensionValue "Passport" (Dimension "Storage")
        , DimensionValue "Pen" (Dimension "Storage")
        , DimensionValue "Travel documents" (Dimension "Storage")
        , DimensionValue "WTRA" (Dimension "Style")
        ]
    , Product
        (ProductSku "WTRA-CHARCOAL")
        (ProductName "Travel Wallet - Previous Design - Charcoal")
        [ ProductPrice 550 0 HKD
        , ProductPrice 79 0 CAD
        , ProductPrice 95 0 SGD
        , ProductPrice 89 0 AUD
        , ProductPrice 69 0 EUR
        , ProductPrice 59 0 GBP
        , ProductPrice 9500 0 JPY
        , ProductPrice 69 0 USD
        , ProductPrice 259 0 AED
        , ProductPrice 89 0 NZD
        ]
        [ DimensionValue "charcoal" (Dimension "Color")
        , DimensionValue "leather" (Dimension "Material")
        , DimensionValue "facebook" (Dimension "Product Feed")
        , DimensionValue "google_shopping" (Dimension "Product Feed")
        , DimensionValue "instagram" (Dimension "Product Feed")
        , DimensionValue "rakuten_affiliate" (Dimension "Product Feed")
        , DimensionValue "Travel Wallet" (Dimension "Product Range")
        , DimensionValue "Travel Wallet" (Dimension "Product Style")
        , DimensionValue "Wallet" (Dimension "Product Type")
        , DimensionValue "small" (Dimension "Shipping Sizes")
        , DimensionValue "1 Passport" (Dimension "Storage")
        , DimensionValue "12 or less cards" (Dimension "Storage")
        , DimensionValue "2 — 3 Passports" (Dimension "Storage")
        , DimensionValue "6 or less cards" (Dimension "Storage")
        , DimensionValue "Bills" (Dimension "Storage")
        , DimensionValue "Cards" (Dimension "Storage")
        , DimensionValue "Passport" (Dimension "Storage")
        , DimensionValue "Pen" (Dimension "Storage")
        , DimensionValue "Travel documents" (Dimension "Storage")
        , DimensionValue "WTRA" (Dimension "Style")
        ]
    , Product
        (ProductSku "WTRB-BLK-301")
        (ProductName "Travel Wallet - Black")
        [ ProductPrice 930 0 HKD
        , ProductPrice 159 0 AUD
        , ProductPrice 145 0 CAD
        , ProductPrice 119 0 EUR
        , ProductPrice 16200 0 JPY
        , ProductPrice 99 0 GBP
        , ProductPrice 169 0 SGD
        , ProductPrice 119 0 USD
        , ProductPrice 459 0 AED
        , ProductPrice 169 0 NZD
        ]
        [ DimensionValue "black" (Dimension "Color")
        , DimensionValue "leather_rfid" (Dimension "Material")
        , DimensionValue "facebook" (Dimension "Product Feed")
        , DimensionValue "google_shopping" (Dimension "Product Feed")
        , DimensionValue "instagram" (Dimension "Product Feed")
        , DimensionValue "rakuten_affiliate" (Dimension "Product Feed")
        , DimensionValue "Travel Wallet" (Dimension "Product Range")
        , DimensionValue "Travel Wallet" (Dimension "Product Style")
        , DimensionValue "Wallet" (Dimension "Product Type")
        , DimensionValue "small" (Dimension "Shipping Sizes")
        , DimensionValue "WTRB" (Dimension "Style")
        ]
    , Product
        (ProductSku "WTRB-CAR-301")
        (ProductName "Travel Wallet - Caramel")
        [ ProductPrice 930 0 HKD
        , ProductPrice 159 0 AUD
        , ProductPrice 145 0 CAD
        , ProductPrice 119 0 EUR
        , ProductPrice 16200 0 JPY
        , ProductPrice 169 0 SGD
        , ProductPrice 119 0 USD
        , ProductPrice 99 0 GBP
        , ProductPrice 459 0 AED
        , ProductPrice 169 0 NZD
        ]
        [ DimensionValue "caramel" (Dimension "Color")
        , DimensionValue "leather_rfid" (Dimension "Material")
        , DimensionValue "facebook" (Dimension "Product Feed")
        , DimensionValue "google_shopping" (Dimension "Product Feed")
        , DimensionValue "instagram" (Dimension "Product Feed")
        , DimensionValue "rakuten_affiliate" (Dimension "Product Feed")
        , DimensionValue "Travel Wallet" (Dimension "Product Range")
        , DimensionValue "Travel Wallet" (Dimension "Product Style")
        , DimensionValue "Wallet" (Dimension "Product Type")
        , DimensionValue "small" (Dimension "Shipping Sizes")
        , DimensionValue "WTRB" (Dimension "Style")
        ]
    , Product
        (ProductSku "WTRB-COA-301")
        (ProductName "Travel Wallet - Cocoa")
        [ ProductPrice 930 0 HKD
        , ProductPrice 159 0 AUD
        , ProductPrice 145 0 CAD
        , ProductPrice 119 0 EUR
        , ProductPrice 16200 0 JPY
        , ProductPrice 169 0 SGD
        , ProductPrice 119 0 USD
        , ProductPrice 99 0 GBP
        , ProductPrice 459 0 AED
        , ProductPrice 169 0 NZD
        ]
        [ DimensionValue "cocoa" (Dimension "Color")
        , DimensionValue "leather_rfid" (Dimension "Material")
        , DimensionValue "facebook" (Dimension "Product Feed")
        , DimensionValue "google_shopping" (Dimension "Product Feed")
        , DimensionValue "instagram" (Dimension "Product Feed")
        , DimensionValue "rakuten_affiliate" (Dimension "Product Feed")
        , DimensionValue "Travel Wallet" (Dimension "Product Range")
        , DimensionValue "Travel Wallet" (Dimension "Product Style")
        , DimensionValue "Wallet" (Dimension "Product Type")
        , DimensionValue "small" (Dimension "Shipping Sizes")
        , DimensionValue "WTRB" (Dimension "Style")
        ]
    , Product
        (ProductSku "WTRB-NAV-301")
        (ProductName "Travel Wallet - Navy")
        [ ProductPrice 930 0 HKD
        , ProductPrice 159 0 AUD
        , ProductPrice 145 0 CAD
        , ProductPrice 119 0 EUR
        , ProductPrice 16200 0 JPY
        , ProductPrice 169 0 SGD
        , ProductPrice 119 0 USD
        , ProductPrice 99 0 GBP
        , ProductPrice 459 0 AED
        , ProductPrice 169 0 NZD
        ]
        [ DimensionValue "navy" (Dimension "Color")
        , DimensionValue "leather_rfid" (Dimension "Material")
        , DimensionValue "facebook" (Dimension "Product Feed")
        , DimensionValue "google_shopping" (Dimension "Product Feed")
        , DimensionValue "instagram" (Dimension "Product Feed")
        , DimensionValue "rakuten_affiliate" (Dimension "Product Feed")
        , DimensionValue "Travel Wallet" (Dimension "Product Range")
        , DimensionValue "Travel Wallet" (Dimension "Product Style")
        , DimensionValue "Wallet" (Dimension "Product Type")
        , DimensionValue "small" (Dimension "Shipping Sizes")
        , DimensionValue "WTRB" (Dimension "Style")
        ]
    , Product
        (ProductSku "WTSA-BLK-101")
        (ProductName "The Square - Black")
        [ ProductPrice 99 0 AUD
        , ProductPrice 95 0 CAD
        , ProductPrice 79 0 EUR
        , ProductPrice 65 0 GBP
        , ProductPrice 10800 0 JPY
        , ProductPrice 109 0 SGD
        , ProductPrice 79 0 USD
        , ProductPrice 620 0 HKD
        , ProductPrice 299 0 AED
        , ProductPrice 115 0 NZD
        ]
        [ DimensionValue "black" (Dimension "Color")
        , DimensionValue "leather" (Dimension "Material")
        , DimensionValue "facebook" (Dimension "Product Feed")
        , DimensionValue "google_shopping" (Dimension "Product Feed")
        , DimensionValue "instagram" (Dimension "Product Feed")
        , DimensionValue "rakuten_affiliate" (Dimension "Product Feed")
        , DimensionValue "Men's Wallet" (Dimension "Product Range")
        , DimensionValue "The Square" (Dimension "Product Style")
        , DimensionValue "Wallet" (Dimension "Product Type")
        , DimensionValue "small" (Dimension "Shipping Sizes")
        , DimensionValue "WTSA" (Dimension "Style")
        ]
    , Product
        (ProductSku "WTSA-CAR-101")
        (ProductName "The Square - Caramel")
        [ ProductPrice 99 0 AUD
        , ProductPrice 95 0 CAD
        , ProductPrice 79 0 EUR
        , ProductPrice 65 0 GBP
        , ProductPrice 10800 0 JPY
        , ProductPrice 109 0 SGD
        , ProductPrice 79 0 USD
        , ProductPrice 620 0 HKD
        , ProductPrice 299 0 AED
        , ProductPrice 115 0 NZD
        ]
        [ DimensionValue "caramel" (Dimension "Color")
        , DimensionValue "leather" (Dimension "Material")
        , DimensionValue "facebook" (Dimension "Product Feed")
        , DimensionValue "google_shopping" (Dimension "Product Feed")
        , DimensionValue "instagram" (Dimension "Product Feed")
        , DimensionValue "rakuten_affiliate" (Dimension "Product Feed")
        , DimensionValue "Men's Wallet" (Dimension "Product Range")
        , DimensionValue "The Square" (Dimension "Product Style")
        , DimensionValue "Wallet" (Dimension "Product Type")
        , DimensionValue "small" (Dimension "Shipping Sizes")
        , DimensionValue "WTSA" (Dimension "Style")
        ]
    , Product
        (ProductSku "WTSA-JAV-101")
        (ProductName "The Square - Java")
        [ ProductPrice 620 0 HKD
        , ProductPrice 99 0 AUD
        , ProductPrice 95 0 CAD
        , ProductPrice 79 0 EUR
        , ProductPrice 65 0 GBP
        , ProductPrice 10800 0 JPY
        , ProductPrice 109 0 SGD
        , ProductPrice 79 0 USD
        , ProductPrice 299 0 AED
        , ProductPrice 115 0 NZD
        ]
        [ DimensionValue "java" (Dimension "Color")
        , DimensionValue "leather" (Dimension "Material")
        , DimensionValue "facebook" (Dimension "Product Feed")
        , DimensionValue "google_shopping" (Dimension "Product Feed")
        , DimensionValue "instagram" (Dimension "Product Feed")
        , DimensionValue "rakuten_affiliate" (Dimension "Product Feed")
        , DimensionValue "Men's Wallet" (Dimension "Product Range")
        , DimensionValue "The Square" (Dimension "Product Style")
        , DimensionValue "Wallet" (Dimension "Product Type")
        , DimensionValue "small" (Dimension "Shipping Sizes")
        , DimensionValue "WTSA" (Dimension "Style")
        ]
    , Product
        (ProductSku "WTSA-NAV-101")
        (ProductName "The Square - Navy")
        [ ProductPrice 99 0 AUD
        , ProductPrice 95 0 CAD
        , ProductPrice 79 0 EUR
        , ProductPrice 65 0 GBP
        , ProductPrice 10800 0 JPY
        , ProductPrice 109 0 SGD
        , ProductPrice 79 0 USD
        , ProductPrice 620 0 HKD
        , ProductPrice 299 0 AED
        , ProductPrice 115 0 NZD
        ]
        [ DimensionValue "navy" (Dimension "Color")
        , DimensionValue "leather" (Dimension "Material")
        , DimensionValue "facebook" (Dimension "Product Feed")
        , DimensionValue "google_shopping" (Dimension "Product Feed")
        , DimensionValue "instagram" (Dimension "Product Feed")
        , DimensionValue "rakuten_affiliate" (Dimension "Product Feed")
        , DimensionValue "Men's Wallet" (Dimension "Product Range")
        , DimensionValue "The Square" (Dimension "Product Style")
        , DimensionValue "Wallet" (Dimension "Product Type")
        , DimensionValue "small" (Dimension "Shipping Sizes")
        , DimensionValue "WTSA" (Dimension "Style")
        ]
    , Product
        (ProductSku "WTSA-TAN-101")
        (ProductName "The Square - Tan")
        [ ProductPrice 79 0 AUD
        , ProductPrice 75 0 CAD
        , ProductPrice 65 0 EUR
        , ProductPrice 50 0 GBP
        , ProductPrice 8600 0 JPY
        , ProductPrice 85 0 SGD
        , ProductPrice 59 0 USD
        , ProductPrice 490 0 HKD
        , ProductPrice 239 0 AED
        , ProductPrice 89 0 NZD
        ]
        [ DimensionValue "tan" (Dimension "Color")
        , DimensionValue "leather" (Dimension "Material")
        , DimensionValue "facebook" (Dimension "Product Feed")
        , DimensionValue "google_shopping" (Dimension "Product Feed")
        , DimensionValue "instagram" (Dimension "Product Feed")
        , DimensionValue "rakuten_affiliate" (Dimension "Product Feed")
        , DimensionValue "Men's Wallet" (Dimension "Product Range")
        , DimensionValue "The Square" (Dimension "Product Style")
        , DimensionValue "Wallet" (Dimension "Product Type")
        , DimensionValue "small" (Dimension "Shipping Sizes")
        , DimensionValue "WTSA" (Dimension "Style")
        ]
    , Product
        (ProductSku "WTTA-BLK-101")
        (ProductName "The Tall - Black")
        [ ProductPrice 620 0 HKD
        , ProductPrice 99 0 AUD
        , ProductPrice 95 0 CAD
        , ProductPrice 79 0 EUR
        , ProductPrice 65 0 GBP
        , ProductPrice 10800 0 JPY
        , ProductPrice 109 0 SGD
        , ProductPrice 79 0 USD
        , ProductPrice 299 0 AED
        , ProductPrice 115 0 NZD
        ]
        [ DimensionValue "black" (Dimension "Color")
        , DimensionValue "leather" (Dimension "Material")
        , DimensionValue "facebook" (Dimension "Product Feed")
        , DimensionValue "google_shopping" (Dimension "Product Feed")
        , DimensionValue "instagram" (Dimension "Product Feed")
        , DimensionValue "rakuten_affiliate" (Dimension "Product Feed")
        , DimensionValue "Men's Wallet" (Dimension "Product Range")
        , DimensionValue "The Tall" (Dimension "Product Style")
        , DimensionValue "Wallet" (Dimension "Product Type")
        , DimensionValue "small" (Dimension "Shipping Sizes")
        , DimensionValue "WTTA" (Dimension "Style")
        ]
    , Product
        (ProductSku "WZWA-BLK-301")
        (ProductName "Zip Wallet - Black")
        [ ProductPrice 149 0 AUD
        , ProductPrice 139 0 CAD
        , ProductPrice 109 0 EUR
        , ProductPrice 95 0 GBP
        , ProductPrice 14900 0 JPY
        , ProductPrice 149 0 SGD
        , ProductPrice 109 0 USD
        , ProductPrice 850 0 HKD
        , ProductPrice 419 0 AED
        , ProductPrice 169 0 NZD
        ]
        [ DimensionValue "black" (Dimension "Color")
        , DimensionValue "leather_rfid" (Dimension "Material")
        , DimensionValue "facebook" (Dimension "Product Feed")
        , DimensionValue "google_shopping" (Dimension "Product Feed")
        , DimensionValue "instagram" (Dimension "Product Feed")
        , DimensionValue "rakuten_affiliate" (Dimension "Product Feed")
        , DimensionValue "Unisex Wallet" (Dimension "Product Range")
        , DimensionValue "Zip Wallet" (Dimension "Product Style")
        , DimensionValue "Wallet" (Dimension "Product Type")
        , DimensionValue "small" (Dimension "Shipping Sizes")
        , DimensionValue "WZWA" (Dimension "Style")
        ]
    , Product
        (ProductSku "WZWA-CAR-301")
        (ProductName "Zip Wallet - Caramel")
        [ ProductPrice 149 0 AUD
        , ProductPrice 139 0 CAD
        , ProductPrice 109 0 EUR
        , ProductPrice 95 0 GBP
        , ProductPrice 14900 0 JPY
        , ProductPrice 149 0 SGD
        , ProductPrice 109 0 USD
        , ProductPrice 850 0 HKD
        , ProductPrice 419 0 AED
        , ProductPrice 169 0 NZD
        ]
        [ DimensionValue "caramel" (Dimension "Color")
        , DimensionValue "leather_rfid" (Dimension "Material")
        , DimensionValue "facebook" (Dimension "Product Feed")
        , DimensionValue "google_shopping" (Dimension "Product Feed")
        , DimensionValue "instagram" (Dimension "Product Feed")
        , DimensionValue "rakuten_affiliate" (Dimension "Product Feed")
        , DimensionValue "Unisex Wallet" (Dimension "Product Range")
        , DimensionValue "Zip Wallet" (Dimension "Product Style")
        , DimensionValue "Wallet" (Dimension "Product Type")
        , DimensionValue "small" (Dimension "Shipping Sizes")
        , DimensionValue "WZWA" (Dimension "Style")
        ]
    , Product
        (ProductSku "WZWA-NAV-301")
        (ProductName "Zip Wallet - Navy")
        [ ProductPrice 149 0 AUD
        , ProductPrice 139 0 CAD
        , ProductPrice 109 0 EUR
        , ProductPrice 95 0 GBP
        , ProductPrice 14900 0 JPY
        , ProductPrice 149 0 SGD
        , ProductPrice 109 0 USD
        , ProductPrice 850 0 HKD
        , ProductPrice 419 0 AED
        , ProductPrice 169 0 NZD
        ]
        [ DimensionValue "navy" (Dimension "Color")
        , DimensionValue "leather_rfid" (Dimension "Material")
        , DimensionValue "facebook" (Dimension "Product Feed")
        , DimensionValue "google_shopping" (Dimension "Product Feed")
        , DimensionValue "instagram" (Dimension "Product Feed")
        , DimensionValue "rakuten_affiliate" (Dimension "Product Feed")
        , DimensionValue "Unisex Wallet" (Dimension "Product Range")
        , DimensionValue "Zip Wallet" (Dimension "Product Style")
        , DimensionValue "Wallet" (Dimension "Product Type")
        , DimensionValue "small" (Dimension "Shipping Sizes")
        , DimensionValue "WZWA" (Dimension "Style")
        ]
    , Product
        (ProductSku "WZWA-RAG-301")
        (ProductName "Zip Wallet - Racing Green")
        [ ProductPrice 149 0 AUD
        , ProductPrice 139 0 CAD
        , ProductPrice 109 0 EUR
        , ProductPrice 95 0 GBP
        , ProductPrice 14900 0 JPY
        , ProductPrice 149 0 SGD
        , ProductPrice 109 0 USD
        , ProductPrice 850 0 HKD
        , ProductPrice 419 0 AED
        , ProductPrice 169 0 NZD
        ]
        [ DimensionValue "racing_green" (Dimension "Color")
        , DimensionValue "leather_rfid" (Dimension "Material")
        , DimensionValue "facebook" (Dimension "Product Feed")
        , DimensionValue "google_shopping" (Dimension "Product Feed")
        , DimensionValue "instagram" (Dimension "Product Feed")
        , DimensionValue "rakuten_affiliate" (Dimension "Product Feed")
        , DimensionValue "Unisex Wallet" (Dimension "Product Range")
        , DimensionValue "Zip Wallet" (Dimension "Product Style")
        , DimensionValue "Wallet" (Dimension "Product Type")
        , DimensionValue "small" (Dimension "Shipping Sizes")
        , DimensionValue "WZWA" (Dimension "Style")
        ]
    , Product
        (ProductSku "WZWA-TAN-301")
        (ProductName "Zip Wallet - Tan")
        [ ProductPrice 149 0 AUD
        , ProductPrice 139 0 CAD
        , ProductPrice 109 0 EUR
        , ProductPrice 95 0 GBP
        , ProductPrice 14900 0 JPY
        , ProductPrice 149 0 SGD
        , ProductPrice 109 0 USD
        , ProductPrice 850 0 HKD
        , ProductPrice 419 0 AED
        , ProductPrice 169 0 NZD
        ]
        [ DimensionValue "tan" (Dimension "Color")
        , DimensionValue "leather_rfid" (Dimension "Material")
        , DimensionValue "facebook" (Dimension "Product Feed")
        , DimensionValue "google_shopping" (Dimension "Product Feed")
        , DimensionValue "instagram" (Dimension "Product Feed")
        , DimensionValue "rakuten_affiliate" (Dimension "Product Feed")
        , DimensionValue "Unisex Wallet" (Dimension "Product Range")
        , DimensionValue "Zip Wallet" (Dimension "Product Style")
        , DimensionValue "Wallet" (Dimension "Product Type")
        , DimensionValue "small" (Dimension "Shipping Sizes")
        , DimensionValue "WZWA" (Dimension "Style")
        ]
    , Product
        (ProductSku "XFWA-BLACK")
        (ProductName "Folio Wallet – Designers Edition - Black")
        [ ProductPrice 349 0 SGD
        , ProductPrice 249 0 USD
        , ProductPrice 329 0 AUD
        , ProductPrice 329 0 CAD
        , ProductPrice 280 0 EUR
        , ProductPrice 235 0 GBP
        , ProductPrice 33800 0 JPY
        , ProductPrice 1930 0 HKD
        , ProductPrice 939 0 AED
        , ProductPrice 359 0 NZD
        ]
        [ DimensionValue "black" (Dimension "Color")
        , DimensionValue "Designers Edition" (Dimension "Features")
        , DimensionValue "leather" (Dimension "Material")
        , DimensionValue "facebook" (Dimension "Product Feed")
        , DimensionValue "google_shopping" (Dimension "Product Feed")
        , DimensionValue "instagram" (Dimension "Product Feed")
        , DimensionValue "rakuten_affiliate" (Dimension "Product Feed")
        , DimensionValue "Designer Wallet" (Dimension "Product Range")
        , DimensionValue "Folio Wallet" (Dimension "Product Style")
        , DimensionValue "Wallet" (Dimension "Product Type")
        , DimensionValue "small" (Dimension "Shipping Sizes")
        , DimensionValue "12 or less cards" (Dimension "Storage")
        , DimensionValue "12+ cards" (Dimension "Storage")
        , DimensionValue "Bills" (Dimension "Storage")
        , DimensionValue "Cards" (Dimension "Storage")
        , DimensionValue "Coins" (Dimension "Storage")
        , DimensionValue "Phone" (Dimension "Storage")
        , DimensionValue "XFWA" (Dimension "Style")
        ]
    , Product
        (ProductSku "XFWA-BURNTSIENNA")
        (ProductName "Folio Wallet – Designers Edition - Burnt Sienna")
        [ ProductPrice 349 0 SGD
        , ProductPrice 249 0 USD
        , ProductPrice 329 0 AUD
        , ProductPrice 329 0 CAD
        , ProductPrice 280 0 EUR
        , ProductPrice 235 0 GBP
        , ProductPrice 33800 0 JPY
        , ProductPrice 1930 0 HKD
        , ProductPrice 939 0 AED
        , ProductPrice 359 0 NZD
        ]
        [ DimensionValue "burnt_sienna" (Dimension "Color")
        , DimensionValue "Designers Edition" (Dimension "Features")
        , DimensionValue "leather" (Dimension "Material")
        , DimensionValue "facebook" (Dimension "Product Feed")
        , DimensionValue "google_shopping" (Dimension "Product Feed")
        , DimensionValue "instagram" (Dimension "Product Feed")
        , DimensionValue "rakuten_affiliate" (Dimension "Product Feed")
        , DimensionValue "Designer Wallet" (Dimension "Product Range")
        , DimensionValue "Folio Wallet" (Dimension "Product Style")
        , DimensionValue "Wallet" (Dimension "Product Type")
        , DimensionValue "small" (Dimension "Shipping Sizes")
        , DimensionValue "12 or less cards" (Dimension "Storage")
        , DimensionValue "12+ cards" (Dimension "Storage")
        , DimensionValue "Bills" (Dimension "Storage")
        , DimensionValue "Cards" (Dimension "Storage")
        , DimensionValue "Coins" (Dimension "Storage")
        , DimensionValue "Phone" (Dimension "Storage")
        , DimensionValue "XFWA" (Dimension "Style")
        ]
    , Product
        (ProductSku "XFWA-GGR-109")
        (ProductName "Folio Wallet – Designers Edition - Galaxy Grey")
        [ ProductPrice 1930 0 HKD
        , ProductPrice 349 0 SGD
        , ProductPrice 249 0 USD
        , ProductPrice 329 0 AUD
        , ProductPrice 329 0 CAD
        , ProductPrice 280 0 EUR
        , ProductPrice 235 0 GBP
        , ProductPrice 33800 0 JPY
        , ProductPrice 939 0 AED
        , ProductPrice 359 0 NZD
        ]
        [ DimensionValue "galaxy_grey" (Dimension "Color")
        , DimensionValue "Designers Edition" (Dimension "Features")
        , DimensionValue "leather_nubuck" (Dimension "Material")
        , DimensionValue "facebook" (Dimension "Product Feed")
        , DimensionValue "google_shopping" (Dimension "Product Feed")
        , DimensionValue "instagram" (Dimension "Product Feed")
        , DimensionValue "rakuten_affiliate" (Dimension "Product Feed")
        , DimensionValue "Designer Wallet" (Dimension "Product Range")
        , DimensionValue "Folio Wallet" (Dimension "Product Style")
        , DimensionValue "Wallet" (Dimension "Product Type")
        , DimensionValue "small" (Dimension "Shipping Sizes")
        , DimensionValue "12 or less cards" (Dimension "Storage")
        , DimensionValue "12+ cards" (Dimension "Storage")
        , DimensionValue "Bills" (Dimension "Storage")
        , DimensionValue "Cards" (Dimension "Storage")
        , DimensionValue "Coins" (Dimension "Storage")
        , DimensionValue "Phone" (Dimension "Storage")
        , DimensionValue "XFWA" (Dimension "Style")
        ]
    , Product
        (ProductSku "XHSA-BLK-306")
        (ProductName "Hide & Seek - Designers Edition - Black")
        [ ProductPrice 219 0 AUD
        , ProductPrice 199 0 CAD
        , ProductPrice 169 0 EUR
        , ProductPrice 239 0 SGD
        , ProductPrice 169 0 USD
        , ProductPrice 160 0 GBP
        , ProductPrice 1320 0 HKD
        , ProductPrice 23000 0 JPY
        , ProductPrice 639 0 AED
        , ProductPrice 239 0 NZD
        ]
        [ DimensionValue "black" (Dimension "Color")
        , DimensionValue "leather_rfid" (Dimension "Material")
        , DimensionValue "facebook" (Dimension "Product Feed")
        , DimensionValue "google_shopping" (Dimension "Product Feed")
        , DimensionValue "instagram" (Dimension "Product Feed")
        , DimensionValue "rakuten_affiliate" (Dimension "Product Feed")
        , DimensionValue "designers_edition" (Dimension "Product Line")
        , DimensionValue "Designer Wallet" (Dimension "Product Range")
        , DimensionValue "Hide & Seek" (Dimension "Product Style")
        , DimensionValue "Wallet" (Dimension "Product Type")
        , DimensionValue "small" (Dimension "Shipping Sizes")
        , DimensionValue "lo" (Dimension "Size")
        , DimensionValue "XHSA" (Dimension "Style")
        ]
    , Product
        (ProductSku "XHSA-BSI-306")
        (ProductName "Hide & Seek - Designers Edition - Burnt Sienna")
        [ ProductPrice 219 0 AUD
        , ProductPrice 199 0 CAD
        , ProductPrice 169 0 EUR
        , ProductPrice 239 0 SGD
        , ProductPrice 169 0 USD
        , ProductPrice 23000 0 JPY
        , ProductPrice 160 0 GBP
        , ProductPrice 1320 0 HKD
        , ProductPrice 639 0 AED
        , ProductPrice 239 0 NZD
        ]
        [ DimensionValue "burnt_sienna" (Dimension "Color")
        , DimensionValue "leather_rfid" (Dimension "Material")
        , DimensionValue "facebook" (Dimension "Product Feed")
        , DimensionValue "google_shopping" (Dimension "Product Feed")
        , DimensionValue "instagram" (Dimension "Product Feed")
        , DimensionValue "rakuten_affiliate" (Dimension "Product Feed")
        , DimensionValue "designers_edition" (Dimension "Product Line")
        , DimensionValue "Designer Wallet" (Dimension "Product Range")
        , DimensionValue "Hide & Seek" (Dimension "Product Style")
        , DimensionValue "Wallet" (Dimension "Product Type")
        , DimensionValue "small" (Dimension "Shipping Sizes")
        , DimensionValue "lo" (Dimension "Size")
        , DimensionValue "XHSA" (Dimension "Style")
        ]
    , Product
        (ProductSku "XHSA-GGR-309")
        (ProductName "Hide & Seek - Designers Edition - Galaxy Grey")
        [ ProductPrice 1320 0 HKD
        , ProductPrice 219 0 AUD
        , ProductPrice 199 0 CAD
        , ProductPrice 169 0 EUR
        , ProductPrice 239 0 SGD
        , ProductPrice 169 0 USD
        , ProductPrice 23000 0 JPY
        , ProductPrice 160 0 GBP
        , ProductPrice 639 0 AED
        , ProductPrice 239 0 NZD
        ]
        [ DimensionValue "galaxy_grey" (Dimension "Color")
        , DimensionValue "leather_nubuck" (Dimension "Material")
        , DimensionValue "facebook" (Dimension "Product Feed")
        , DimensionValue "google_shopping" (Dimension "Product Feed")
        , DimensionValue "instagram" (Dimension "Product Feed")
        , DimensionValue "rakuten_affiliate" (Dimension "Product Feed")
        , DimensionValue "designers_edition" (Dimension "Product Line")
        , DimensionValue "Designer Wallet" (Dimension "Product Range")
        , DimensionValue "Hide & Seek" (Dimension "Product Style")
        , DimensionValue "Wallet" (Dimension "Product Type")
        , DimensionValue "small" (Dimension "Shipping Sizes")
        , DimensionValue "lo" (Dimension "Size")
        , DimensionValue "XHSA" (Dimension "Style")
        ]
    , Product
        (ProductSku "XHSB-BLK-306")
        (ProductName "Hide & Seek - Designers Edition - Black")
        [ ProductPrice 1320 0 HKD
        , ProductPrice 219 0 AUD
        , ProductPrice 199 0 CAD
        , ProductPrice 169 0 EUR
        , ProductPrice 239 0 SGD
        , ProductPrice 169 0 USD
        , ProductPrice 23000 0 JPY
        , ProductPrice 160 0 GBP
        , ProductPrice 639 0 AED
        , ProductPrice 239 0 NZD
        ]
        [ DimensionValue "black" (Dimension "Color")
        , DimensionValue "leather_rfid" (Dimension "Material")
        , DimensionValue "facebook" (Dimension "Product Feed")
        , DimensionValue "google_shopping" (Dimension "Product Feed")
        , DimensionValue "instagram" (Dimension "Product Feed")
        , DimensionValue "rakuten_affiliate" (Dimension "Product Feed")
        , DimensionValue "designers_edition" (Dimension "Product Line")
        , DimensionValue "Designer Wallet" (Dimension "Product Range")
        , DimensionValue "Hide & Seek" (Dimension "Product Style")
        , DimensionValue "Wallet" (Dimension "Product Type")
        , DimensionValue "small" (Dimension "Shipping Sizes")
        , DimensionValue "hi" (Dimension "Size")
        , DimensionValue "XHSA" (Dimension "Style")
        ]
    , Product
        (ProductSku "XHSB-BSI-306")
        (ProductName "Hide & Seek - Designers Edition - Burnt Sienna")
        [ ProductPrice 1320 0 HKD
        , ProductPrice 219 0 AUD
        , ProductPrice 199 0 CAD
        , ProductPrice 169 0 EUR
        , ProductPrice 239 0 SGD
        , ProductPrice 169 0 USD
        , ProductPrice 23000 0 JPY
        , ProductPrice 160 0 GBP
        , ProductPrice 639 0 AED
        , ProductPrice 239 0 NZD
        ]
        [ DimensionValue "burnt_sienna" (Dimension "Color")
        , DimensionValue "leather_rfid" (Dimension "Material")
        , DimensionValue "facebook" (Dimension "Product Feed")
        , DimensionValue "google_shopping" (Dimension "Product Feed")
        , DimensionValue "instagram" (Dimension "Product Feed")
        , DimensionValue "rakuten_affiliate" (Dimension "Product Feed")
        , DimensionValue "designers_edition" (Dimension "Product Line")
        , DimensionValue "Designer Wallet" (Dimension "Product Range")
        , DimensionValue "Hide & Seek" (Dimension "Product Style")
        , DimensionValue "Wallet" (Dimension "Product Type")
        , DimensionValue "small" (Dimension "Shipping Sizes")
        , DimensionValue "hi" (Dimension "Size")
        , DimensionValue "XHSA" (Dimension "Style")
        ]
    , Product
        (ProductSku "XHSB-GGR-309")
        (ProductName "Hide & Seek - Designers Edition - Galaxy Grey")
        [ ProductPrice 1320 0 HKD
        , ProductPrice 219 0 AUD
        , ProductPrice 199 0 CAD
        , ProductPrice 169 0 EUR
        , ProductPrice 239 0 SGD
        , ProductPrice 169 0 USD
        , ProductPrice 23000 0 JPY
        , ProductPrice 160 0 GBP
        , ProductPrice 639 0 AED
        , ProductPrice 239 0 NZD
        ]
        [ DimensionValue "galaxy_grey" (Dimension "Color")
        , DimensionValue "leather_nubuck" (Dimension "Material")
        , DimensionValue "facebook" (Dimension "Product Feed")
        , DimensionValue "google_shopping" (Dimension "Product Feed")
        , DimensionValue "instagram" (Dimension "Product Feed")
        , DimensionValue "rakuten_affiliate" (Dimension "Product Feed")
        , DimensionValue "designers_edition" (Dimension "Product Line")
        , DimensionValue "Designer Wallet" (Dimension "Product Range")
        , DimensionValue "Hide & Seek" (Dimension "Product Style")
        , DimensionValue "Wallet" (Dimension "Product Type")
        , DimensionValue "small" (Dimension "Shipping Sizes")
        , DimensionValue "hi" (Dimension "Size")
        , DimensionValue "XHSA" (Dimension "Style")
        ]
    , Product
        (ProductSku "XLBA-BLK-101")
        (ProductName "Laptop Brief - Designers Edition - Black")
        [ ProductPrice 4590 0 HKD
        , ProductPrice 86400 0 JPY
        , ProductPrice 699 0 AUD
        , ProductPrice 649 0 CAD
        , ProductPrice 590 0 EUR
        , ProductPrice 520 0 GBP
        , ProductPrice 790 0 SGD
        , ProductPrice 590 0 USD
        , ProductPrice 2239 0 AED
        , ProductPrice 845 0 NZD
        ]
        [ DimensionValue "black" (Dimension "Color")
        , DimensionValue "leather" (Dimension "Material")
        , DimensionValue "facebook" (Dimension "Product Feed")
        , DimensionValue "google_shopping" (Dimension "Product Feed")
        , DimensionValue "instagram" (Dimension "Product Feed")
        , DimensionValue "rakuten_affiliate" (Dimension "Product Feed")
        , DimensionValue "Designer Bag" (Dimension "Product Range")
        , DimensionValue "Laptop Brief" (Dimension "Product Style")
        , DimensionValue "Bag" (Dimension "Product Type")
        , DimensionValue "large" (Dimension "Shipping Sizes")
        , DimensionValue "XLBA" (Dimension "Style")
        ]
    , Product
        (ProductSku "XLBA-BSI-101")
        (ProductName "Laptop Brief - Designers Edition - Burnt Sienna")
        [ ProductPrice 4590 0 HKD
        , ProductPrice 86400 0 JPY
        , ProductPrice 699 0 AUD
        , ProductPrice 649 0 CAD
        , ProductPrice 590 0 EUR
        , ProductPrice 520 0 GBP
        , ProductPrice 790 0 SGD
        , ProductPrice 590 0 USD
        , ProductPrice 2239 0 AED
        , ProductPrice 845 0 NZD
        ]
        [ DimensionValue "burnt_sienna" (Dimension "Color")
        , DimensionValue "leather" (Dimension "Material")
        , DimensionValue "facebook" (Dimension "Product Feed")
        , DimensionValue "google_shopping" (Dimension "Product Feed")
        , DimensionValue "instagram" (Dimension "Product Feed")
        , DimensionValue "rakuten_affiliate" (Dimension "Product Feed")
        , DimensionValue "Designer Bag" (Dimension "Product Range")
        , DimensionValue "Laptop Brief" (Dimension "Product Style")
        , DimensionValue "Bag" (Dimension "Product Type")
        , DimensionValue "large" (Dimension "Shipping Sizes")
        , DimensionValue "XLBA" (Dimension "Style")
        ]
    , Product
        (ProductSku "XMTA-BLK-101")
        (ProductName "Melbourne Tote - Designers Edition - Black")
        [ ProductPrice 599 0 AUD
        , ProductPrice 529 0 CAD
        , ProductPrice 490 0 EUR
        , ProductPrice 440 0 GBP
        , ProductPrice 690 0 SGD
        , ProductPrice 490 0 USD
        , ProductPrice 72000 0 JPY
        , ProductPrice 3890 0 HKD
        , ProductPrice 1859 0 AED
        , ProductPrice 699 0 NZD
        ]
        [ DimensionValue "black" (Dimension "Color")
        , DimensionValue "leather" (Dimension "Material")
        , DimensionValue "facebook" (Dimension "Product Feed")
        , DimensionValue "google_shopping" (Dimension "Product Feed")
        , DimensionValue "instagram" (Dimension "Product Feed")
        , DimensionValue "rakuten_affiliate" (Dimension "Product Feed")
        , DimensionValue "Designer Bag" (Dimension "Product Range")
        , DimensionValue "Melbourne Tote" (Dimension "Product Style")
        , DimensionValue "Bag" (Dimension "Product Type")
        , DimensionValue "large" (Dimension "Shipping Sizes")
        , DimensionValue "XMTA" (Dimension "Style")
        ]
    , Product
        (ProductSku "XMTA-BSI-101")
        (ProductName "Melbourne Tote - Designers Edition - Burnt Sienna")
        [ ProductPrice 599 0 AUD
        , ProductPrice 529 0 CAD
        , ProductPrice 490 0 EUR
        , ProductPrice 440 0 GBP
        , ProductPrice 690 0 SGD
        , ProductPrice 490 0 USD
        , ProductPrice 72000 0 JPY
        , ProductPrice 3890 0 HKD
        , ProductPrice 1859 0 AED
        , ProductPrice 699 0 NZD
        ]
        [ DimensionValue "burnt_sienna" (Dimension "Color")
        , DimensionValue "leather" (Dimension "Material")
        , DimensionValue "facebook" (Dimension "Product Feed")
        , DimensionValue "google_shopping" (Dimension "Product Feed")
        , DimensionValue "instagram" (Dimension "Product Feed")
        , DimensionValue "rakuten_affiliate" (Dimension "Product Feed")
        , DimensionValue "Designer Bag" (Dimension "Product Range")
        , DimensionValue "Melbourne Tote" (Dimension "Product Style")
        , DimensionValue "Bag" (Dimension "Product Type")
        , DimensionValue "large" (Dimension "Shipping Sizes")
        , DimensionValue "XMTA" (Dimension "Style")
        ]
    , Product
        (ProductSku "XNSB-BLK-306")
        (ProductName "Note Sleeve - Designers Edition - Black")
        [ ProductPrice 1320 0 HKD
        , ProductPrice 219 0 AUD
        , ProductPrice 239 0 CAD
        , ProductPrice 190 0 EUR
        , ProductPrice 160 0 GBP
        , ProductPrice 23000 0 JPY
        , ProductPrice 239 0 SGD
        , ProductPrice 169 0 USD
        , ProductPrice 639 0 AED
        , ProductPrice 239 0 NZD
        ]
        [ DimensionValue "black" (Dimension "Color")
        , DimensionValue "leather_rfid" (Dimension "Material")
        , DimensionValue "facebook" (Dimension "Product Feed")
        , DimensionValue "google_shopping" (Dimension "Product Feed")
        , DimensionValue "instagram" (Dimension "Product Feed")
        , DimensionValue "rakuten_affiliate" (Dimension "Product Feed")
        , DimensionValue "Designer Wallet" (Dimension "Product Range")
        , DimensionValue "Note Sleeve" (Dimension "Product Style")
        , DimensionValue "Wallet" (Dimension "Product Type")
        , DimensionValue "small" (Dimension "Shipping Sizes")
        , DimensionValue "XNSB" (Dimension "Style")
        ]
    , Product
        (ProductSku "XNSB-BSI-306")
        (ProductName "Note Sleeve - Designers Edition - Burnt Sienna")
        [ ProductPrice 1320 0 HKD
        , ProductPrice 219 0 AUD
        , ProductPrice 239 0 CAD
        , ProductPrice 190 0 EUR
        , ProductPrice 160 0 GBP
        , ProductPrice 23000 0 JPY
        , ProductPrice 239 0 SGD
        , ProductPrice 169 0 USD
        , ProductPrice 639 0 AED
        , ProductPrice 239 0 NZD
        ]
        [ DimensionValue "burnt_sienna" (Dimension "Color")
        , DimensionValue "leather_rfid" (Dimension "Material")
        , DimensionValue "facebook" (Dimension "Product Feed")
        , DimensionValue "google_shopping" (Dimension "Product Feed")
        , DimensionValue "instagram" (Dimension "Product Feed")
        , DimensionValue "rakuten_affiliate" (Dimension "Product Feed")
        , DimensionValue "Designer Wallet" (Dimension "Product Range")
        , DimensionValue "Note Sleeve" (Dimension "Product Style")
        , DimensionValue "Wallet" (Dimension "Product Type")
        , DimensionValue "small" (Dimension "Shipping Sizes")
        , DimensionValue "XNSB" (Dimension "Style")
        ]
    , Product
        (ProductSku "XNSB-GGR-309")
        (ProductName "Note Sleeve – Designers Edition - Galaxy Grey")
        [ ProductPrice 1320 0 HKD
        , ProductPrice 219 0 AUD
        , ProductPrice 239 0 CAD
        , ProductPrice 190 0 EUR
        , ProductPrice 160 0 GBP
        , ProductPrice 239 0 SGD
        , ProductPrice 169 0 USD
        , ProductPrice 23000 0 JPY
        , ProductPrice 639 0 AED
        , ProductPrice 239 0 NZD
        ]
        [ DimensionValue "galaxy_grey" (Dimension "Color")
        , DimensionValue "Designers Edition" (Dimension "Features")
        , DimensionValue "leather_nubuck" (Dimension "Material")
        , DimensionValue "facebook" (Dimension "Product Feed")
        , DimensionValue "google_shopping" (Dimension "Product Feed")
        , DimensionValue "instagram" (Dimension "Product Feed")
        , DimensionValue "rakuten_affiliate" (Dimension "Product Feed")
        , DimensionValue "Designer Wallet" (Dimension "Product Range")
        , DimensionValue "Note Sleeve" (Dimension "Product Style")
        , DimensionValue "Wallet" (Dimension "Product Type")
        , DimensionValue "small" (Dimension "Shipping Sizes")
        , DimensionValue "12 or less cards" (Dimension "Storage")
        , DimensionValue "12+ cards" (Dimension "Storage")
        , DimensionValue "Bills" (Dimension "Storage")
        , DimensionValue "Cards" (Dimension "Storage")
        , DimensionValue "Coins" (Dimension "Storage")
        , DimensionValue "XNSB" (Dimension "Style")
        ]
    , Product
        (ProductSku "XSSA-BLK-106")
        (ProductName "Slim Sleeve - Designers Edition - Black")
        [ ProductPrice 179 0 AUD
        , ProductPrice 169 0 CAD
        , ProductPrice 139 0 EUR
        , ProductPrice 18900 0 JPY
        , ProductPrice 199 0 SGD
        , ProductPrice 139 0 USD
        , ProductPrice 1090 0 HKD
        , ProductPrice 125 0 GBP
        , ProductPrice 529 0 AED
        , ProductPrice 199 0 NZD
        ]
        [ DimensionValue "black" (Dimension "Color")
        , DimensionValue "leather" (Dimension "Material")
        , DimensionValue "facebook" (Dimension "Product Feed")
        , DimensionValue "google_shopping" (Dimension "Product Feed")
        , DimensionValue "instagram" (Dimension "Product Feed")
        , DimensionValue "rakuten_affiliate" (Dimension "Product Feed")
        , DimensionValue "designers_edition" (Dimension "Product Line")
        , DimensionValue "Designer Wallet" (Dimension "Product Range")
        , DimensionValue "Slim Sleeve" (Dimension "Product Style")
        , DimensionValue "Wallet" (Dimension "Product Type")
        , DimensionValue "small" (Dimension "Shipping Sizes")
        , DimensionValue "XSSA" (Dimension "Style")
        ]
    , Product
        (ProductSku "XSSA-BSI-106")
        (ProductName "Slim Sleeve - Designers Edition - Burnt Sienna")
        [ ProductPrice 179 0 AUD
        , ProductPrice 169 0 CAD
        , ProductPrice 139 0 EUR
        , ProductPrice 18900 0 JPY
        , ProductPrice 199 0 SGD
        , ProductPrice 139 0 USD
        , ProductPrice 125 0 GBP
        , ProductPrice 1090 0 HKD
        , ProductPrice 529 0 AED
        , ProductPrice 199 0 NZD
        ]
        [ DimensionValue "burnt_sienna" (Dimension "Color")
        , DimensionValue "leather" (Dimension "Material")
        , DimensionValue "facebook" (Dimension "Product Feed")
        , DimensionValue "google_shopping" (Dimension "Product Feed")
        , DimensionValue "instagram" (Dimension "Product Feed")
        , DimensionValue "rakuten_affiliate" (Dimension "Product Feed")
        , DimensionValue "designers_edition" (Dimension "Product Line")
        , DimensionValue "Designer Wallet" (Dimension "Product Range")
        , DimensionValue "Slim Sleeve" (Dimension "Product Style")
        , DimensionValue "Wallet" (Dimension "Product Type")
        , DimensionValue "small" (Dimension "Shipping Sizes")
        , DimensionValue "XSSA" (Dimension "Style")
        ]
    , Product
        (ProductSku "XSSA-GGR-109")
        (ProductName "Slim Sleeve - Designers Edition - Galaxy Grey")
        [ ProductPrice 1090 0 HKD
        , ProductPrice 179 0 AUD
        , ProductPrice 169 0 CAD
        , ProductPrice 139 0 EUR
        , ProductPrice 18900 0 JPY
        , ProductPrice 199 0 SGD
        , ProductPrice 139 0 USD
        , ProductPrice 125 0 GBP
        , ProductPrice 529 0 AED
        , ProductPrice 199 0 NZD
        ]
        [ DimensionValue "galaxy_grey" (Dimension "Color")
        , DimensionValue "leather_nubuck" (Dimension "Material")
        , DimensionValue "facebook" (Dimension "Product Feed")
        , DimensionValue "google_shopping" (Dimension "Product Feed")
        , DimensionValue "instagram" (Dimension "Product Feed")
        , DimensionValue "rakuten_affiliate" (Dimension "Product Feed")
        , DimensionValue "designers_edition" (Dimension "Product Line")
        , DimensionValue "Designer Wallet" (Dimension "Product Range")
        , DimensionValue "Slim Sleeve" (Dimension "Product Style")
        , DimensionValue "Wallet" (Dimension "Product Type")
        , DimensionValue "small" (Dimension "Shipping Sizes")
        , DimensionValue "XSSA" (Dimension "Style")
        ]
    , Product
        (ProductSku "XTRB-BLK-306")
        (ProductName "Travel Wallet - Designers Edition - Black")
        [ ProductPrice 1700 0 HKD
        , ProductPrice 289 0 AUD
        , ProductPrice 289 0 CAD
        , ProductPrice 245 0 EUR
        , ProductPrice 200 0 GBP
        , ProductPrice 29700 0 JPY
        , ProductPrice 309 0 SGD
        , ProductPrice 219 0 USD
        , ProductPrice 829 0 AED
        , ProductPrice 309 0 NZD
        ]
        [ DimensionValue "black" (Dimension "Color")
        , DimensionValue "leather_rfid" (Dimension "Material")
        , DimensionValue "facebook" (Dimension "Product Feed")
        , DimensionValue "google_shopping" (Dimension "Product Feed")
        , DimensionValue "instagram" (Dimension "Product Feed")
        , DimensionValue "rakuten_affiliate" (Dimension "Product Feed")
        , DimensionValue "Designer Wallet" (Dimension "Product Range")
        , DimensionValue "Travel Wallet" (Dimension "Product Style")
        , DimensionValue "Wallet" (Dimension "Product Type")
        , DimensionValue "small" (Dimension "Shipping Sizes")
        , DimensionValue "XTRB" (Dimension "Style")
        ]
    , Product
        (ProductSku "XTRB-BSI-306")
        (ProductName "Travel Wallet - Designers Edition - Burnt Sienna")
        [ ProductPrice 1700 0 HKD
        , ProductPrice 289 0 AUD
        , ProductPrice 289 0 CAD
        , ProductPrice 245 0 EUR
        , ProductPrice 200 0 GBP
        , ProductPrice 29700 0 JPY
        , ProductPrice 309 0 SGD
        , ProductPrice 219 0 USD
        , ProductPrice 829 0 AED
        , ProductPrice 309 0 NZD
        ]
        [ DimensionValue "burnt_sienna" (Dimension "Color")
        , DimensionValue "leather_rfid" (Dimension "Material")
        , DimensionValue "facebook" (Dimension "Product Feed")
        , DimensionValue "google_shopping" (Dimension "Product Feed")
        , DimensionValue "instagram" (Dimension "Product Feed")
        , DimensionValue "rakuten_affiliate" (Dimension "Product Feed")
        , DimensionValue "Designer Wallet" (Dimension "Product Range")
        , DimensionValue "Travel Wallet" (Dimension "Product Style")
        , DimensionValue "Wallet" (Dimension "Product Type")
        , DimensionValue "small" (Dimension "Shipping Sizes")
        , DimensionValue "XTRB" (Dimension "Style")
        ]
    , Product
        (ProductSku "XTRB-GGR-309")
        (ProductName "Travel Wallet - Designers Edition - Galaxy Grey")
        [ ProductPrice 1700 0 HKD
        , ProductPrice 289 0 AUD
        , ProductPrice 289 0 CAD
        , ProductPrice 245 0 EUR
        , ProductPrice 200 0 GBP
        , ProductPrice 29700 0 JPY
        , ProductPrice 309 0 SGD
        , ProductPrice 219 0 USD
        , ProductPrice 829 0 AED
        , ProductPrice 309 0 NZD
        ]
        [ DimensionValue "galaxy_grey" (Dimension "Color")
        , DimensionValue "leather_nubuck" (Dimension "Material")
        , DimensionValue "facebook" (Dimension "Product Feed")
        , DimensionValue "google_shopping" (Dimension "Product Feed")
        , DimensionValue "instagram" (Dimension "Product Feed")
        , DimensionValue "rakuten_affiliate" (Dimension "Product Feed")
        , DimensionValue "Designer Wallet" (Dimension "Product Range")
        , DimensionValue "Travel Wallet" (Dimension "Product Style")
        , DimensionValue "Wallet" (Dimension "Product Type")
        , DimensionValue "small" (Dimension "Shipping Sizes")
        , DimensionValue "XTRB" (Dimension "Style")
        ]
    ]
