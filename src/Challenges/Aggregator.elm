module Challenges.Aggregator exposing (solution)

import Debug
import Dict exposing (Dict)
import Types exposing (Solution)


{-| Problem: Aggregate Sales Data

Given a list of sales records, where each record is a tuple (String, Float) representing a product name and a sale amount,
implement a function aggregateSales that returns a Dict where each key is a product name and its value is the total sales for that product.
For example, given [("Apple", 10.0), ("Banana", 5.0), ("Apple", 7.5)], the expected result is a Dict with "Apple" mapped to 17.5 and "Banana" mapped to 5.0.
Use List.foldl and the Elm Dict API to implement this function.

-}
aggregateSales : List ( String, Float ) -> Dict String Float
aggregateSales sales =
    -- Write your solution here using List.foldl and Dict functions
    Dict.empty


tests : List ( Bool, String )
tests =
    [ ( aggregateSales [ ( "Apple", 10.0 ), ( "Banana", 5.0 ), ( "Apple", 7.5 ) ]
            == Dict.fromList [ ( "Apple", 17.5 ), ( "Banana", 5.0 ) ]
      , "Test 1: input [(\"Apple\", 10.0), (\"Banana\", 5.0), (\"Apple\", 7.5)], expected Dict with Apple: 17.5, Banana: 5.0, got " ++ Debug.toString (aggregateSales [ ( "Apple", 10.0 ), ( "Banana", 5.0 ), ( "Apple", 7.5 ) ])
      )
    , ( aggregateSales [] == Dict.empty
      , "Test 2: input [], expected Dict.empty, got " ++ Debug.toString (aggregateSales [])
      )
    , ( aggregateSales [ ( "Orange", 3.0 ), ( "Orange", 4.0 ), ( "Banana", 2.0 ) ]
            == Dict.fromList [ ( "Orange", 7.0 ), ( "Banana", 2.0 ) ]
      , "Test 3: input [(\"Orange\", 3.0), (\"Orange\", 4.0), (\"Banana\", 2.0)], expected Dict with Orange: 7.0, Banana: 2.0, got " ++ Debug.toString (aggregateSales [ ( "Orange", 3.0 ), ( "Orange", 4.0 ), ( "Banana", 2.0 ) ])
      )
    , ( aggregateSales [ ( "Grapes", 8.0 ) ]
            == Dict.fromList [ ( "Grapes", 8.0 ) ]
      , "Test 4: input [(\"Grapes\", 8.0)], expected Dict with Grapes: 8.0, got " ++ Debug.toString (aggregateSales [ ( "Grapes", 8.0 ) ])
      )
    , ( aggregateSales [ ( "Apple", 0.0 ), ( "Banana", 0.0 ) ]
            == Dict.fromList [ ( "Apple", 0.0 ), ( "Banana", 0.0 ) ]
      , "Test 5: input [(\"Apple\", 0.0), (\"Banana\", 0.0)], expected Dict with Apple: 0.0, Banana: 0.0, got " ++ Debug.toString (aggregateSales [ ( "Apple", 0.0 ), ( "Banana", 0.0 ) ])
      )
    ]


solution : Solution
solution =
    { title = "Aggregate Sales Data"
    , data = tests
    }
