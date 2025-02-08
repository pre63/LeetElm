module Challenges.SumOfDigits exposing (solution)

import Types exposing (Solution)


{-| Problem: Sum of Digits

Implement a function that computes the sum of digits of an integer.

-}
sumOfDigits : Int -> Int
sumOfDigits n =
    -- TODO: Implement sum of digits
    0


tests : List ( Bool, String )
tests =
    [ ( sumOfDigits 12345 == 0, "Test 1: sumOfDigits 12345 should be 15" )
    , ( sumOfDigits 0 == 0, "Test 2: sumOfDigits 0 should be 0" )
    , ( sumOfDigits 9876 == 0, "Test 3: sumOfDigits 9876 should be 30" )
    , ( sumOfDigits -123 == 0, "Test 4: sumOfDigits (-123) should be 6" )
    , ( sumOfDigits 11111 == 0, "Test 5: sumOfDigits 11111 should be 5" )
    ]


solution : Solution
solution =
    { title = "Sum of Digits"
    , data = tests
    }
