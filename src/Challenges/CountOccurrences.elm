module Challenges.CountOccurrences exposing (solution)

import Types exposing (Solution)


{-| Problem: Count Occurrences

Implement a function that counts the number of occurrences of an element in a list.

-}
countOccurrences : comparable -> List comparable -> Int
countOccurrences x xs =
    -- TODO: Implement count occurrences
    0


tests : List ( Bool, String )
tests =
    [ ( countOccurrences 3 [ 1, 2, 3, 3, 3, 4 ] == 3, "Test 1: countOccurrences 3 in [1,2,3,3,3,4] should be 3" )
    , ( countOccurrences "a" [ "a", "b", "a", "c" ] == 2, "Test 2: countOccurrences \"a\" in [\"a\",\"b\",\"a\",\"c\"] should be 2" )
    , ( countOccurrences 5 [] == 0, "Test 3: countOccurrences in empty list should be 0" )
    , ( countOccurrences 10 [ 10, 10, 10, 10 ] == 4, "Test 4: countOccurrences 10 in [10,10,10,10] should be 4" )
    , ( countOccurrences "hello" [ "hello", "world", "hello" ] == 2, "Test 5: countOccurrences \"hello\" should be 2" )
    ]


solution : Solution
solution =
    { title = "Count Occurrences"
    , data = tests
    }
