module Challenges.RemoveDuplicates exposing (solution)

import Types exposing (Solution)


{-| Problem: Remove Duplicates

Implement a function that removes duplicate elements from a list.

-}
removeDuplicates : List comparable -> List comparable
removeDuplicates xs =
    -- TODO: Implement duplicate removal
    []


tests : List ( Bool, String )
tests =
    [ ( removeDuplicates [ 1, 2, 2, 3 ] == [ 1, 2, 3 ], "Test 1: removeDuplicates [1,2,2,3] should be [1,2,3]" )
    , ( removeDuplicates [] == [], "Test 2: removeDuplicates [] should be []" )
    , ( removeDuplicates [ "a", "b", "a" ] == [ "a", "b" ], "Test 3: removeDuplicates [\"a\",\"b\",\"a\"] should be [\"a\",\"b\"]" )
    , ( removeDuplicates [ 1, 1, 1, 1 ] == [ 1 ], "Test 4: removeDuplicates [1,1,1,1] should be [1]" )
    ]


solution : Solution
solution =
    { title = "Remove Duplicates"
    , data = tests
    }
