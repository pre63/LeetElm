module Challenges.GroupAndFormatWords exposing (solution)

import Types exposing (Solution)


{-| Problem: Group and Format Words

Given a list of words, group them by their length.
For each group, sort the words alphabetically, convert them to uppercase,
and output the result as a JSON string where keys are the word lengths (as strings)
and values are arrays of words.

-}
groupAndFormat : List String -> String
groupAndFormat words =
    ""


tests : List ( Bool, String )
tests =
    [ ( groupAndFormat [ "apple", "cat", "dog", "banana" ]
            == "{\"3\":[\"CAT\",\"DOG\"],\"5\":[\"APPLE\"],\"6\":[\"BANANA\"]}"
      , "Test 1: [apple, cat, dog, banana]"
      )
    , ( groupAndFormat [] == "{}"
      , "Test 2: Empty input returns {}"
      )
    , ( groupAndFormat [ "a", "bb", "ccc", "dd", "eee", "f" ]
            == "{\"1\":[\"A\",\"F\"],\"2\":[\"BB\",\"DD\"],\"3\":[\"CCC\",\"EEE\"]}"
      , "Test 3: [a, bb, ccc, dd, eee, f]"
      )
    , ( groupAndFormat [ "Hello", "world", "elm", "programming", "is", "fun" ]
            == "{\"2\":[\"IS\"],\"3\":[\"ELM\",\"FUN\"],\"5\":[\"HELLO\",\"WORLD\"],\"11\":[\"PROGRAMMING\"]}"
      , "Test 4: [Hello, world, elm, programming, is, fun]"
      )
    , ( groupAndFormat [ "x", "xx", "xxx", "xx", "x" ]
            == "{\"1\":[\"X\",\"X\"],\"2\":[\"XX\",\"XX\"],\"3\":[\"XXX\"]}"
      , "Test 5: [x, xx, xxx, xx, x]"
      )
    ]


solution : Solution
solution =
    { title = "Group and Format Words"
    , data = tests
    }
