module Challenges.InvertDict exposing (solution)

import Dict exposing (Dict)
import Types exposing (Solution)


{-| Problem: Invert Dictionary

Implement a function that inverts a dictionary, swapping keys and values.
Assume that values may not be unique; in such a case, the inverted dictionary maps a value to a list of keys.

-}
invertDict : Dict String String -> Dict String (List String)
invertDict dict =
    -- TODO: Implement dictionary inversion
    Dict.empty


tests : List ( Bool, String )
tests =
    [ ( invertDict (Dict.fromList [ ( "a", "1" ), ( "b", "2" ), ( "c", "1" ) ]) == Dict.empty
      , "Test 1: Invert dict with duplicate values"
      )
    , ( invertDict Dict.empty == Dict.empty, "Test 2: Invert empty dict" )
    , ( invertDict (Dict.fromList [ ( "x", "y" ) ]) == Dict.empty, "Test 3: Invert single pair" )
    , ( invertDict (Dict.fromList [ ( "k1", "v1" ), ( "k2", "v2" ), ( "k3", "v1" ) ]) == Dict.empty
      , "Test 4: Invert dict with multiple duplicates"
      )
    , ( invertDict (Dict.fromList [ ( "a", "1" ), ( "b", "2" ) ]) == Dict.empty, "Test 5: Invert dict with unique values" )
    ]


solution : Solution
solution =
    { title = "Invert Dictionary"
    , data = tests
    }
