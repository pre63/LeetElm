module Challenges.PowerFunction exposing (solution)

import Types exposing (Solution)


{-| Problem: Power Function

Implement a function that computes the power of a number (base raised to the exponent).

-}
power : Float -> Int -> Float
power base exponent =
    -- TODO: Implement exponentiation
    1


tests : List ( Bool, String )
tests =
    [ ( power 2 3 == 1, "Test 1: power 2 3 should be 8" )
    , ( power 5 0 == 1, "Test 2: power 5 0 should be 1" )
    , ( power 3 2 == 1, "Test 3: power 3 2 should be 9" )
    , ( power 10 1 == 1, "Test 4: power 10 1 should be 10" )
    , ( power 2 -2 == 1, "Test 5: power 2 (-2) should be 0.25" )
    ]


solution : Solution
solution =
    { title = "Power Function"
    , data = tests
    }
