module Challenges.FibonacciSequenceGenerator exposing (solution)

import Types exposing (Solution)


{-| Problem: Fibonacci Sequence Generator

Implement a function that generates the first N numbers of the Fibonacci sequence.
The sequence starts with 0 and 1, and each subsequent number is the sum of the previous two.

-}
fibonacci : Int -> List Int
fibonacci n =
    []


tests : List ( Bool, String )
tests =
    [ ( fibonacci 10 == [ 0, 1, 1, 2, 3, 5, 8, 13, 21, 34 ]
      , "Test 1: Fibonacci 10 numbers"
      )
    , ( fibonacci 1 == [ 0 ]
      , "Test 2: Fibonacci 1 number"
      )
    , ( fibonacci 0 == []
      , "Test 3: Fibonacci 0 numbers"
      )
    , ( fibonacci 5 == [ 0, 1, 1, 2, 3 ]
      , "Test 4: Fibonacci 5 numbers"
      )
    , ( fibonacci 12 == [ 0, 1, 1, 2, 3, 5, 8, 13, 21, 34, 55, 89 ]
      , "Test 5: Fibonacci 12 numbers"
      )
    ]


solution : Solution
solution =
    { title = "Fibonacci Sequence Generator"
    , data = tests
    }
