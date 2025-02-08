module Challenges.EulerMethodODE exposing (solution)

import Types exposing (Solution)


{-| Problem: Solve an ODE using Euler's Method

Given a function f(t, y) representing dy/dt, an initial condition (t0, y0),
a target time tFinal, and a step size h, approximate y(tFinal) using Euler's method.
If tFinal < t0, return y0.

-}
eulerMethod : (Float -> Float -> Float) -> Float -> Float -> Float -> Float -> Float
eulerMethod f t0 y0 tFinal h =
    y0


tests : List ( Bool, String )
tests =
    [ ( abs (eulerMethod (\_ y -> y) 0 1 1 0.1 - 2.5937424601) < 0.0001
      , "Test 1: dy/dt = y, t0=0, y0=1, tFinal=1, h=0.1"
      )
    , ( abs (eulerMethod (\t _ -> t) 0 0 1 0.1 - 0.45) < 0.0001
      , "Test 2: dy/dt = t, t0=0, y0=0, tFinal=1, h=0.1"
      )
    , ( eulerMethod (\_ y -> y) 1 2 0 0.1 == 2
      , "Test 3: tFinal < t0 returns y0"
      )
    , ( abs (eulerMethod (\t y -> t + y) 0 1 1 0.05 - 2.1) < 0.1
      , "Test 4: dy/dt = t+y, t0=0, y0=1, tFinal=1, h=0.05 (approx)"
      )
    , ( abs (eulerMethod (\t y -> t - y) 0 0 2 0.1 - -0.95) < 0.1
      , "Test 5: dy/dt = t-y, t0=0, y0=0, tFinal=2, h=0.1 (approx)"
      )
    ]


solution : Solution
solution =
    { title = "Solve an ODE using Euler's Method"
    , data = tests
    }
