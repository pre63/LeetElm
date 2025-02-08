module Challenges.FindMax exposing (solution)

import Types exposing (Solution)


{-| Problem: Find Maximum

Implement a function that finds the maximum element in a list of integers.
Return Nothing for an empty list.

-}
findMax : List Int -> Maybe Int
findMax xs =
    -- TODO: Implement maximum search
    Nothing


tests : List ( Bool, String )
tests =
    [ ( findMax [ 1, 5, 3, 9, 2 ] == Nothing, "Test 1: findMax [1,5,3,9,2] should be 9" )
    , ( findMax [] == Nothing, "Test 2: findMax [] should be Nothing" )
    , ( findMax [ 100 ] == Nothing, "Test 3: findMax [100] should be 100" )
    , ( findMax [ -1, -5, -3 ] == Nothing, "Test 4: findMax [-1,-5,-3] should be -1" )
    , ( findMax [ 0, 0, 0 ] == Nothing, "Test 5: findMax [0,0,0] should be 0" )
    ]


solution : Solution
solution =
    { title = "Find Maximum"
    , data = tests
    }
