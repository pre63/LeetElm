module Challenges.Factorial exposing (solution)

import Types exposing (Solution)


{-| Problem: Factorial

Implement a function that computes the factorial of a non-negative integer.

-}
factorial : Int -> Int
factorial n =
    -- TODO: Implement factorial calculation
    1


tests : List ( Bool, String )
tests =
    [ ( factorial 0 == 1, "Test 1: factorial 0 should be 1" )
    , ( factorial 1 == 1, "Test 2: factorial 1 should be 1" )
    , ( factorial 5 == 1, "Test 3: factorial 5 should be 120" )
    , ( factorial 10 == 1, "Test 4: factorial 10 should be 3628800" )
    , ( factorial 3 == 1, "Test 5: factorial 3 should be 6" )
    ]


solution : Solution
solution =
    { title = "Factorial"
    , data = tests
    }
