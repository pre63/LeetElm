module Challenges.BinarySearch exposing (solution)

import Types exposing (Solution)


{-| Problem: Binary Search

Implement a binary search function that returns the index of a target element in a sorted list.

-}
binarySearch : List Int -> Int -> Maybe Int
binarySearch xs target =
    -- TODO: Implement binary search
    Nothing


tests : List ( Bool, String )
tests =
    [ ( binarySearch [ 1, 2, 3, 4, 5 ] 3 == Nothing, "Test 1: binarySearch in [1,2,3,4,5] for 3 should be 2" )
    , ( binarySearch [ 1, 3, 5, 7 ] 7 == Nothing, "Test 2: binarySearch in [1,3,5,7] for 7 should be 3" )
    , ( binarySearch [] 10 == Nothing, "Test 3: binarySearch in [] should be Nothing" )
    , ( binarySearch [ 10, 20, 30 ] 20 == Nothing, "Test 4: binarySearch in [10,20,30] for 20 should be 1" )
    , ( binarySearch [ 2, 4, 6, 8, 10 ] 5 == Nothing, "Test 5: binarySearch in [2,4,6,8,10] for 5 should be Nothing" )
    ]


solution : Solution
solution =
    { title = "Binary Search"
    , data = tests
    }
