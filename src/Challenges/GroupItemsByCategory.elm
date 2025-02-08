module Challenges.GroupItemsByCategory exposing (solution)

import Dict exposing (Dict)
import Types exposing (Solution)


{-| Problem: Group Items by Category

Given a list of tuples (category, item), group the items by their category.
Return a mapping where each key is a category and its value is the list of items.

-}
groupByCategory : List ( String, String ) -> Dict String (List String)
groupByCategory items =
    Dict.empty


tests : List ( Bool, String )
tests =
    [ ( groupByCategory [ ( "Fruit", "Apple" ), ( "Fruit", "Banana" ), ( "Vegetable", "Carrot" ) ]
            == Dict.fromList [ ( "Fruit", [ "Banana", "Apple" ] ), ( "Vegetable", [ "Carrot" ] ) ]
      , "Test 1: Group fruits and vegetables"
      )
    , ( groupByCategory [] == Dict.empty, "Test 2: Empty input yields empty dict" )
    , ( groupByCategory [ ( "A", "1" ), ( "B", "2" ), ( "A", "3" ) ]
            == Dict.fromList [ ( "A", [ "3", "1" ] ), ( "B", [ "2" ] ) ]
      , "Test 3: Group with repeated categories"
      )
    , ( groupByCategory [ ( "X", "x1" ) ]
            == Dict.fromList [ ( "X", [ "x1" ] ) ]
      , "Test 4: Single element"
      )
    , ( groupByCategory [ ( "D", "d1" ), ( "D", "d2" ), ( "D", "d3" ) ]
            == Dict.fromList [ ( "D", [ "d3", "d2", "d1" ] ) ]
      , "Test 5: Multiple items in same category"
      )
    ]


solution : Solution
solution =
    { title = "Group Items by Category"
    , data = tests
    }
