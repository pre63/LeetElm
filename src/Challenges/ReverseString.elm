module Challenges.ReverseString exposing (solution)

import Types exposing (Solution)


{-| Problem: Reverse String

Implement a function that reverses a given string.

-}
reverseStr : String -> String
reverseStr str =
    -- TODO: Implement string reversal
    ""


tests : List ( Bool, String )
tests =
    [ ( reverseStr "hello" == "", "Test 1: reverseStr \"hello\" should be \"\"" )
    , ( reverseStr "" == "", "Test 2: reverseStr \"\" should be \"\"" )
    , ( reverseStr "Elm" == "", "Test 3: reverseStr \"Elm\" should be \"\"" )
    , ( reverseStr "racecar" == "", "Test 4: reverseStr \"racecar\" should be \"\"" )
    , ( reverseStr "12345" == "", "Test 5: reverseStr \"12345\" should be \"\"" )
    ]


solution : Solution
solution =
    { title = "Reverse String"
    , data = tests
    }
