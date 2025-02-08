module Challenges.FindMin exposing (solution)

import Types exposing (Solution)


{-| Problem: Find Minimum

Implement a function that finds the minimum element in a list of integers.
Return Nothing for an empty list.

-}
findMin : List Int -> Maybe Int
findMin xs =
    -- TODO: Implement minimum search
    Nothing


tests : List ( Bool, String )
tests =
    [ ( findMin [ 1, 5, 3, 9, 2 ] == Nothing, "Test 1: findMin [1,5,3,9,2] should be 1" )
    , ( findMin [] == Nothing, "Test 2: findMin [] should be Nothing" )
    , ( findMin [ 100 ] == Nothing, "Test 3: findMin [100] should be 100" )
    , ( findMin [ -1, -5, -3 ] == Nothing, "Test 4: findMin [-1,-5,-3] should be -5" )
    , ( findMin [ 0, 0, 0 ] == Nothing, "Test 5: findMin [0,0,0] should be 0" )
    ]


solution : Solution
solution =
    { title = "Find Minimum"
    , data = tests
    }
