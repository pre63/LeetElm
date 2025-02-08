module Challenges.UnzipList exposing (solution)

import Types exposing (Solution)


{-| Problem: Unzip List

Implement a function that unzips a list of tuples into a tuple of two lists.

-}
unzipList : List ( a, b ) -> ( List a, List b )
unzipList xs =
    -- TODO: Implement unzipping of a list
    ( [], [] )


tests : List ( Bool, String )
tests =
    [ ( unzipList [ ( 1, "a" ), ( 2, "b" ) ] == ( [ 1, 2 ], [ "a", "b" ] ), "Test 1: unzipList [(1,\"a\"),(2,\"b\")] should be ([1,2],[\"a\",\"b\"])" )
    , ( unzipList [] == ( [], [] ), "Test 2: unzipList [] should be ([], [])" )
    , ( unzipList [ ( 3, 4 ) ] == ( [ 3 ], [ 4 ] ), "Test 3: unzipList [(3,4)] should be ([3],[4])" )
    ]


solution : Solution
solution =
    { title = "Unzip List"
    , data = tests
    }
