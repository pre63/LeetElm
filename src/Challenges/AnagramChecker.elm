module Challenges.AnagramChecker exposing (solution)

import Types exposing (Solution)


{-| Problem: Anagram Checker

Given two strings, determine whether they are anagrams of each other.
Anagrams are words that contain the same characters in a different order.

-}
areAnagrams : String -> String -> Bool
areAnagrams str1 str2 =
    False


tests : List ( Bool, String )
tests =
    [ ( areAnagrams "listen" "silent", "Test 1: 'listen' and 'silent'" )
    , ( areAnagrams "triangle" "integral", "Test 2: 'triangle' and 'integral'" )
    , ( areAnagrams "apple" "papel", "Test 3: 'apple' and 'papel'" )
    , ( not (areAnagrams "rat" "car"), "Test 4: 'rat' and 'car' are not anagrams" )
    , ( areAnagrams "a gentleman" "elegant man", "Test 5: 'a gentleman' and 'elegant man'" )
    , ( areAnagrams "123" "321", "Test 6: '123' and '321'" )
    , ( not (areAnagrams "123" "3124"), "Test 7: '123' and '3124' are not anagrams" )
    ]


solution : Solution
solution =
    { title = "Anagram Checker"
    , data = tests
    }
