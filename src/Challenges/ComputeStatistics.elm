module Challenges.ComputeStatistics exposing (solution)

import Types exposing (Solution)


{-| Problem: Compute Statistics

Given a list of integers, compute the mean, median, and mode(s).
Return a tuple (mean, median, modeList). For an empty list, return (0, 0, []).

-}
computeStatistics : List Int -> ( Float, Float, List Int )
computeStatistics nums =
    ( 0, 0, [] )


tests : List ( Bool, String )
tests =
    [ ( computeStatistics [ 1, 2, 3, 4, 5 ] == ( 3.0, 3.0, [ 1, 2, 3, 4, 5 ] )
      , "Test 1: [1,2,3,4,5] => (3.0, 3.0, [1,2,3,4,5])"
      )
    , ( computeStatistics [ 1, 2, 2, 3, 4 ] == ( 2.4, 2.0, [ 2 ] )
      , "Test 2: [1,2,2,3,4] => (2.4, 2.0, [2])"
      )
    , ( computeStatistics [ 5, 3, 5, 3, 1 ] == ( 3.4, 3.0, [ 3, 5 ] )
      , "Test 3: [5,3,5,3,1] => (3.4, 3.0, [3,5])"
      )
    , ( computeStatistics [ 10 ] == ( 10.0, 10.0, [ 10 ] )
      , "Test 4: [10] => (10.0, 10.0, [10])"
      )
    , ( computeStatistics [] == ( 0, 0, [] )
      , "Test 5: [] => (0,0,[])"
      )
    , ( computeStatistics [ 1, 1, 2, 2, 3, 3 ] == ( 2.0, 2.0, [ 1, 2, 3 ] )
      , "Test 6: [1,1,2,2,3,3] => (2.0, 2.0, [1,2,3])"
      )
    , ( computeStatistics [ 2, 2, 2, 3, 4, 4, 4, 5 ] == ( 3.25, 3.5, [ 2, 4 ] )
      , "Test 7: [2,2,2,3,4,4,4,5] => (3.25, 3.5, [2,4])"
      )
    ]


solution : Solution
solution =
    { title = "Compute Statistics"
    , data = tests
    }
