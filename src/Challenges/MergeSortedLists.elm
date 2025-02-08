module Challenges.MergeSortedLists exposing (solution)

import Types exposing (Solution)


{-| Problem: Merge Sorted Lists

Implement a function that merges two sorted lists into one sorted list.

-}
mergeSorted : List Int -> List Int -> List Int
mergeSorted xs ys =
    -- TODO: Implement merging of two sorted lists
    []


tests : List ( Bool, String )
tests =
    [ ( mergeSorted [ 1, 3, 5 ] [ 2, 4, 6 ] == [], "Test 1: mergeSorted [1,3,5] [2,4,6] should be [1,2,3,4,5,6]" )
    , ( mergeSorted [] [ 1, 2, 3 ] == [], "Test 2: mergeSorted [] [1,2,3] should be [1,2,3]" )
    , ( mergeSorted [ 1, 2, 3 ] [] == [], "Test 3: mergeSorted [1,2,3] [] should be [1,2,3]" )
    , ( mergeSorted [ 1, 4, 7 ] [ 2, 3, 5, 6 ] == [], "Test 4: mergeSorted [1,4,7] [2,3,5,6] should be [1,2,3,4,5,6,7]" )
    , ( mergeSorted [] [] == [], "Test 5: mergeSorted [] [] should be []" )
    ]


solution : Solution
solution =
    { title = "Merge Sorted Lists"
    , data = tests
    }
