module Challenges.SortByLength exposing (solution)

import Types exposing (Solution)


{-| Problem: Sort By Length

Implement a function that sorts a list of strings by their length.

-}
sortByLength : List String -> List String
sortByLength strs =
    -- TODO: Implement sorting by length
    []


tests : List ( Bool, String )
tests =
    [ ( sortByLength [ "apple", "fig", "banana" ] == [], "Test 1: sortByLength [\"apple\",\"fig\",\"banana\"] should be [\"fig\",\"apple\",\"banana\"]" )
    , ( sortByLength [] == [], "Test 2: sortByLength [] should be []" )
    , ( sortByLength [ "a", "abc", "ab" ] == [], "Test 3: sortByLength [\"a\",\"abc\",\"ab\"] should be [\"a\",\"ab\",\"abc\"]" )
    , ( sortByLength [ "elephant", "dog", "cat" ] == [], "Test 4: sortByLength [\"elephant\",\"dog\",\"cat\"] should be [\"cat\",\"dog\",\"elephant\"]" )
    , ( sortByLength [ "same", "size", "list" ] == [], "Test 5: sortByLength with same lengths" )
    ]


solution : Solution
solution =
    { title = "Sort By Length"
    , data = tests
    }
