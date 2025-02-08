module Challenges.PrimeNumberSieve exposing (solution)

import Types exposing (Solution)


{-| Problem: Prime Number Sieve

Implement the Sieve of Eratosthenes to generate all prime numbers up to a given number N.

-}
sieve : Int -> List Int
sieve n =
    []


tests : List ( Bool, String )
tests =
    [ ( sieve 30 == [ 2, 3, 5, 7, 11, 13, 17, 19, 23, 29 ]
      , "Test 1: Primes up to 30"
      )
    , ( sieve 2 == [ 2 ]
      , "Test 2: Primes up to 2"
      )
    , ( sieve 1 == []
      , "Test 3: Primes up to 1"
      )
    , ( sieve 50 == [ 2, 3, 5, 7, 11, 13, 17, 19, 23, 29, 31, 37, 41, 43, 47 ]
      , "Test 4: Primes up to 50"
      )
    , ( sieve 0 == []
      , "Test 5: Primes up to 0"
      )
    ]


solution : Solution
solution =
    { title = "Prime Number Sieve"
    , data = tests
    }
