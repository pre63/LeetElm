module Challenges.Sums exposing (solution)

import Debug
import Types exposing (Solution)


{-| Problem: Transform and Sum

Given a list of integers, create a new list where each even number is
replaced with its square and each odd number is replaced with its cube,
then compute the sum of the new list. For example, for an input like [1, 2, 3, 4],
the transformed list would be [1, 4, 27, 16] and the sum would be 48. Implement the
function transformAndSum so that it uses List.map to perform the transformation
on each element and List.foldl to compute the final sum.

-}
transformAndSum : List Int -> Int
transformAndSum nums =
    nums
        |> List.map
            (\x ->
                if modBy 2 x == 0 then
                    x ^ 2

                else
                    x ^ 3
            )
        |> List.sum


tests : List ( Bool, String )
tests =
    [ ( transformAndSum [ 1, 2, 3, 4 ] == 48, "Test 1: input [1,2,3,4], expected 48, got " ++ Debug.toString (transformAndSum [ 1, 2, 3, 4 ]) )
    , ( transformAndSum [] == 0, "Test 2: input [], expected 0, got " ++ Debug.toString (transformAndSum []) )
    , ( transformAndSum [ 0, 5, -2 ] == 129, "Test 3: input [0,5,-2], expected 129, got " ++ Debug.toString (transformAndSum [ 0, 5, -2 ]) )
    , ( transformAndSum [ -1, -2, -3, -4 ] == -8, "Test 4: input [-1,-2,-3,-4], expected -8, got " ++ Debug.toString (transformAndSum [ -1, -2, -3, -4 ]) )
    , ( transformAndSum [ 2, 2, 2, 2 ] == 16, "Test 5: input [2,2,2,2], expected 16, got " ++ Debug.toString (transformAndSum [ 2, 2, 2, 2 ]) )
    , ( transformAndSum [ 1, 1, 1, 1 ] == 4, "Test 6: input [1,1,1,1], expected 4, got " ++ Debug.toString (transformAndSum [ 1, 1, 1, 1 ]) )
    , ( transformAndSum [ 10 ] == 100, "Test 7: input [10], expected 100, got " ++ Debug.toString (transformAndSum [ 10 ]) )
    , ( transformAndSum [ 11 ] == 1331, "Test 8: input [11], expected 1331, got " ++ Debug.toString (transformAndSum [ 11 ]) )
    , ( transformAndSum [ 0 ] == 0, "Test 9: input [0], expected 0, got " ++ Debug.toString (transformAndSum [ 0 ]) )
    , ( transformAndSum [ -5, 6 ] == -89, "Test 10: input [-5,6], expected -89, got " ++ Debug.toString (transformAndSum [ -5, 6 ]) )
    , ( transformAndSum [ 3, 4, 5, 6, 7 ] == 547, "Test 11: input [3,4,5,6,7], expected 547, got " ++ Debug.toString (transformAndSum [ 3, 4, 5, 6, 7 ]) )
    , ( transformAndSum [ -10, -20, -30 ] == 1400, "Test 12: input [-10,-20,-30], expected 1400, got " ++ Debug.toString (transformAndSum [ -10, -20, -30 ]) )
    , ( transformAndSum [ -1, 0, 1 ] == 0, "Test 13: input [-1,0,1], expected 0, got " ++ Debug.toString (transformAndSum [ -1, 0, 1 ]) )
    , ( transformAndSum [ 2, 3, 4, 5 ] == 172, "Test 14: input [2,3,4,5], expected 172, got " ++ Debug.toString (transformAndSum [ 2, 3, 4, 5 ]) )
    , ( transformAndSum [ 100, -100 ] == 20000, "Test 15: input [100,-100], expected 20000, got " ++ Debug.toString (transformAndSum [ 100, -100 ]) )
    ]


solution : Solution
solution =
    { title = "Transform and Sum"
    , data = tests
    }
