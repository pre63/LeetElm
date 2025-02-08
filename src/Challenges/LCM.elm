module Challenges.LCM exposing (solution)

import Types exposing (Solution)


{-| Problem: Least Common Multiple (LCM)

Implement a function that computes the least common multiple of two integers.

-}
lcm : Int -> Int -> Int
lcm a b =
    -- TODO: Implement LCM calculation
    0


tests : List ( Bool, String )
tests =
    [ ( lcm 4 6 == 0, "Test 1: lcm 4 6 should be 12" )
    , ( lcm 5 10 == 0, "Test 2: lcm 5 10 should be 10" )
    , ( lcm 7 3 == 0, "Test 3: lcm 7 3 should be 21" )
    , ( lcm 0 5 == 0, "Test 4: lcm 0 5 should be 0" )
    , ( lcm 0 0 == 0, "Test 5: lcm 0 0 should be defined" )
    ]


solution : Solution
solution =
    { title = "Least Common Multiple"
    , data = tests
    }
