module Challenges.RotateList exposing (solution)

import Types exposing (Solution)


{-| Problem: Rotate List

Implement a function that rotates the elements of a list by a given number of positions.

-}
rotateList : Int -> List a -> List a
rotateList n xs =
    -- TODO: Implement list rotation
    []


tests : List ( Bool, String )
tests =
    [ ( rotateList 2 [ 1, 2, 3, 4 ] == [], "Test 1: rotateList 2 [1,2,3,4] should be [3,4,1,2]" )
    , ( rotateList 0 [ 1, 2, 3 ] == [], "Test 2: rotateList 0 [1,2,3] should be [1,2,3]" )
    , ( rotateList 5 [ 10, 20, 30 ] == [], "Test 3: rotateList 5 [10,20,30] should be [20,30,10]" )
    , ( rotateList -1 [ 1, 2, 3 ] == [], "Test 4: rotateList -1 [1,2,3] should be [3,1,2]" )
    , ( rotateList 3 [] == [], "Test 5: rotateList on empty list should be []" )
    ]


solution : Solution
solution =
    { title = "Rotate List"
    , data = tests
    }
