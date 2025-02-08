module Challenges.Groups exposing (..)

import Debug
import Dict exposing (Dict)
import Html exposing (Html, div, text)
import Html.Attributes exposing (style)
import Types exposing (Solution)


{-| Problem: Group Items by Category

Given a list of tuples (String, String) where each tuple consists of a category and an item,
implement a function groupByCategory that groups the items by their category.
The function should return a Dict where each key is a category and its value is the
list of items in that category. Use List.foldl and the Elm Dict API to implement this function.

-}
groupByCategory : List ( String, String ) -> Dict String (List String)
groupByCategory items =
    items
        |> List.foldl
            (\( category, item ) dict ->
                Dict.update category
                    (\maybeList ->
                        case maybeList of
                            Just list ->
                                Just (item :: list)

                            Nothing ->
                                Just [ item ]
                    )
                    dict
            )
            Dict.empty


tests : List ( Bool, String )
tests =
    [ ( groupByCategory [ ( "Fruit", "Apple" ), ( "Fruit", "Banana" ), ( "Vegetable", "Carrot" ) ]
            == Dict.fromList [ ( "Fruit", [ "Banana", "Apple" ] ), ( "Vegetable", [ "Carrot" ] ) ]
      , "Test 1: input [(\"Fruit\", \"Apple\"), (\"Fruit\", \"Banana\"), (\"Vegetable\", \"Carrot\")], expected Dict with Fruit: [\"Banana\", \"Apple\"] and Vegetable: [\"Carrot\"], got " ++ Debug.toString (groupByCategory [ ( "Fruit", "Apple" ), ( "Fruit", "Banana" ), ( "Vegetable", "Carrot" ) ])
      )
    , ( groupByCategory [] == Dict.empty
      , "Test 2: input [], expected Dict.empty, got " ++ Debug.toString (groupByCategory [])
      )
    , ( groupByCategory [ ( "A", "1" ), ( "B", "2" ), ( "A", "3" ) ]
            == Dict.fromList [ ( "A", [ "3", "1" ] ), ( "B", [ "2" ] ) ]
      , "Test 3: input [(\"A\", \"1\"), (\"B\", \"2\"), (\"A\", \"3\")], expected Dict with A: [\"3\", \"1\"] and B: [\"2\"], got " ++ Debug.toString (groupByCategory [ ( "A", "1" ), ( "B", "2" ), ( "A", "3" ) ])
      )
    , ( groupByCategory [ ( "X", "x1" ) ]
            == Dict.fromList [ ( "X", [ "x1" ] ) ]
      , "Test 4: input [(\"X\", \"x1\")], expected Dict with X: [\"x1\"], got " ++ Debug.toString (groupByCategory [ ( "X", "x1" ) ])
      )
    , ( groupByCategory [ ( "D", "d1" ), ( "D", "d2" ), ( "D", "d3" ) ]
            == Dict.fromList [ ( "D", [ "d3", "d2", "d1" ] ) ]
      , "Test 5: input [(\"D\", \"d1\"), (\"D\", \"d2\"), (\"D\", \"d3\")], expected Dict with D: [\"d3\", \"d2\", \"d1\"], got " ++ Debug.toString (groupByCategory [ ( "D", "d1" ), ( "D", "d2" ), ( "D", "d3" ) ])
      )
    , ( groupByCategory [ ( "Alpha", "a" ), ( "Beta", "b" ), ( "Alpha", "c" ), ( "Beta", "d" ), ( "Gamma", "e" ) ]
            == Dict.fromList [ ( "Alpha", [ "c", "a" ] ), ( "Beta", [ "d", "b" ] ), ( "Gamma", [ "e" ] ) ]
      , "Test 6: input [(\"Alpha\", \"a\"), (\"Beta\", \"b\"), (\"Alpha\", \"c\"), (\"Beta\", \"d\"), (\"Gamma\", \"e\")], expected Dict with Alpha: [\"c\", \"a\"], Beta: [\"d\", \"b\"] and Gamma: [\"e\"], got " ++ Debug.toString (groupByCategory [ ( "Alpha", "a" ), ( "Beta", "b" ), ( "Alpha", "c" ), ( "Beta", "d" ), ( "Gamma", "e" ) ])
      )
    ]


solution =
    { title = "Group Items by Category"
    , data = tests
    }
