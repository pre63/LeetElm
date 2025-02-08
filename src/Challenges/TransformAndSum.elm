module Challenges.TransformAndSum exposing (solution)

import Types exposing (Solution)


{-| Problem: Transform and Sum

Given a list of integers, create a new list where each even number is replaced with its square
and each odd number is replaced with its cube, then compute the sum of the new list.
Example: [1, 2, 3, 4] should yield 48.

-}
transformAndSum : List Int -> Int
transformAndSum nums =
    0


tests : List ( Bool, String )
tests =
    [ ( transformAndSum [ 1, 2, 3, 4 ] == 48, "Test 1: [1,2,3,4] => 48" )
    , ( transformAndSum [] == 0, "Test 2: [] => 0" )
    , ( transformAndSum [ 0, 5, -2 ] == 129, "Test 3: [0,5,-2] => 129" )
    , ( transformAndSum [ 1, 1, 1, 1 ] == 4, "Test 4: [1,1,1,1] => 4" )
    , ( transformAndSum [ 2, 2, 2, 2 ] == 16, "Test 5: [2,2,2,2] => 16" )
    , ( transformAndSum [ -3, -4 ] == (-3 ^ 3 + -4 ^ 2), "Test 6: [-3,-4] => -27 + 16 = -11" )
    ]


solution : Solution
solution =
    { title = "Transform and Sum"
    , data = tests
    }
