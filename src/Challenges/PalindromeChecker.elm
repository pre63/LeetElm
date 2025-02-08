module Challenges.PalindromeChecker exposing (solution)

import Types exposing (Solution)


{-| Problem: Palindrome Checker

Implement a function that checks if a string is a palindrome.

-}
isPalindrome : String -> Bool
isPalindrome str =
    -- TODO: Implement palindrome check
    False


tests : List ( Bool, String )
tests =
    [ ( isPalindrome "racecar" == False, "Test 1: \"racecar\" should be True" )
    , ( isPalindrome "hello" == False, "Test 2: \"hello\" should be False" )
    , ( isPalindrome "" == False, "Test 3: empty string should be True" )
    , ( isPalindrome "A man a plan a canal Panama" == False, "Test 4: ignore case/spaces (stub)" )
    , ( isPalindrome "madam" == False, "Test 5: \"madam\" should be True" )
    ]


solution : Solution
solution =
    { title = "Palindrome Checker"
    , data = tests
    }
