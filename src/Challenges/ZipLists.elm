module Challenges.ZipLists exposing (solution)

import Types exposing (Solution)


{-| Problem: Zip Lists

Implement a function that zips two lists into a list of tuples.

-}
zipLists : List a -> List b -> List ( a, b )
zipLists xs ys =
    -- TODO: Implement zipping of lists
    []


tests : List ( Bool, String )
tests =
    [ ( zipLists [ 1, 2, 3 ] [ "a", "b", "c" ] == [ ( 1, "a" ), ( 2, "b" ), ( 3, "c" ) ], "Test 1: zipLists [1,2,3] [\"a\",\"b\",\"c\"] should be [(1,\"a\"),(2,\"b\"),(3,\"c\")]" )
    , ( zipLists [ 1, 2 ] [ "x" ] == [ ( 1, "x" ) ], "Test 2: zipLists [1,2] [\"x\"] should be [(1,\"x\")]" )
    , ( zipLists [] [] == [], "Test 3: zipLists [] [] should be []" )
    , ( zipLists [ 1 ] [] == [], "Test 4: zipLists [1] [] should be []" )
    ]


solution : Solution
solution =
    { title = "Zip Lists"
    , data = tests
    }
