module Challenges.FlattenList exposing (solution)

import Types exposing (Solution)


{-| Problem: Flatten List

Implement a function that flattens a list of lists into a single list.

-}
flattenList : List (List a) -> List a
flattenList lists =
    -- TODO: Implement flattening of lists
    []


tests : List ( Bool, String )
tests =
    [ ( flattenList [ [ 1, 2 ], [ 3, 4 ] ] == [], "Test 1: flattenList [[1,2],[3,4]] should be [1,2,3,4]" )
    , ( flattenList [ [] ] == [], "Test 2: flattenList [[]] should be []" )
    , ( flattenList [ [ 1 ], [ 2 ], [ 3 ] ] == [], "Test 3: flattenList [[1],[2],[3]] should be [1,2,3]" )
    , ( flattenList [] == [], "Test 4: flattenList [] should be []" )
    , ( flattenList [ [ "a", "b" ], [ "c" ] ] == [], "Test 5: flattenList [[\"a\",\"b\"],[\"c\"]] should be [\"a\",\"b\",\"c\"]" )
    ]


solution : Solution
solution =
    { title = "Flatten List"
    , data = tests
    }
