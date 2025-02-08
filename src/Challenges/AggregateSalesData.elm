module Challenges.AggregateSalesData exposing (solution)

import Dict exposing (Dict)
import Types exposing (Solution)


{-| Problem: Aggregate Sales Data

Given a list of sales records (product, amount), sum up the amounts for each product.
Return a mapping where each key is a product and its value is the total sales amount.

-}
aggregateSales : List ( String, Float ) -> Dict String Float
aggregateSales sales =
    Dict.empty


tests : List ( Bool, String )
tests =
    [ ( aggregateSales [ ( "Apple", 10.0 ), ( "Banana", 5.0 ), ( "Apple", 7.5 ) ]
            == Dict.fromList [ ( "Apple", 17.5 ), ( "Banana", 5.0 ) ]
      , "Test 1: Aggregate sales for Apple and Banana"
      )
    , ( aggregateSales [] == Dict.empty, "Test 2: Empty input yields empty dict" )
    , ( aggregateSales [ ( "Orange", 3.0 ), ( "Orange", 4.0 ), ( "Banana", 2.0 ), ( "Orange", -1.0 ) ]
            == Dict.fromList [ ( "Orange", 6.0 ), ( "Banana", 2.0 ) ]
      , "Test 3: Aggregate with negative amounts"
      )
    , ( aggregateSales [ ( "Grapes", 8.0 ) ]
            == Dict.fromList [ ( "Grapes", 8.0 ) ]
      , "Test 4: Single product"
      )
    , ( aggregateSales [ ( "Apple", 0.0 ), ( "Banana", 0.0 ) ]
            == Dict.fromList [ ( "Apple", 0.0 ), ( "Banana", 0.0 ) ]
      , "Test 5: Zero sales"
      )
    ]


solution : Solution
solution =
    { title = "Aggregate Sales Data"
    , data = tests
    }
