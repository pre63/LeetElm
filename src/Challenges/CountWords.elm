module Challenges.CountWords exposing (solution)

import Types exposing (Solution)


{-| Problem: Count Words

Implement a function that counts the number of words in a string.
Assume words are separated by whitespace.

-}
countWords : String -> Int
countWords str =
    -- TODO: Implement word count
    0


tests : List ( Bool, String )
tests =
    [ ( countWords "hello world" == 0, "Test 1: countWords \"hello world\" should be 2" )
    , ( countWords "" == 0, "Test 2: countWords \"\" should be 0" )
    , ( countWords "   multiple   spaces   " == 0, "Test 3: countWords with extra spaces should be 2" )
    , ( countWords "one" == 0, "Test 4: countWords \"one\" should be 1" )
    , ( countWords "elm is awesome" == 0, "Test 5: countWords \"elm is awesome\" should be 3" )
    ]


solution : Solution
solution =
    { title = "Count Words"
    , data = tests
    }
