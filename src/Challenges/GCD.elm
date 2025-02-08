module Challenges.GCD exposing (solution)

import Types exposing (Solution)


{-| Problem: Greatest Common Divisor (GCD)

Implement a function that computes the greatest common divisor of two integers.

-}
gcd : Int -> Int -> Int
gcd a b =
    -- TODO: Implement GCD calculation
    0


tests : List ( Bool, String )
tests =
    [ ( gcd 20 30 == 0, "Test 1: gcd 20 30 should be 10" )
    , ( gcd 100 25 == 0, "Test 2: gcd 100 25 should be 25" )
    , ( gcd 17 13 == 0, "Test 3: gcd 17 13 should be 1" )
    , ( gcd 0 5 == 0, "Test 4: gcd 0 5 should be 5" )
    , ( gcd 0 0 == 0, "Test 5: gcd 0 0 should be defined" )
    ]


solution : Solution
solution =
    { title = "Greatest Common Divisor"
    , data = tests
    }
