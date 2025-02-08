module Challenges.ODE exposing (eulerMethod, solution, tests)

import Debug
import Types exposing (Solution)


{-| Problem: Solve an ODE using Euler's Method

Given a function f : Float -> Float -> Float representing the derivative dy/dt = f(t, y),
an initial time t0, an initial value y0, a target time tFinal, and a step size h,
implement a function eulerMethod that approximates the value of y at tFinal using Euler's method.
If tFinal < t0, return y0.
For example, for the ODE dy/dt = y with initial condition y(0) = 1,
using tFinal = 1 and h = 0.1, the expected result is approximately 2.5937424601 (i.e., 1.1^10).

-}
eulerMethod : (Float -> Float -> Float) -> Float -> Float -> Float -> Float -> Float
eulerMethod f t0 y0 tFinal h =
    -- Write your solution here using a recursive or iterative approach
    y0


tests : List ( Bool, String )
tests =
    [ ( eulerMethod (\_ y -> y) 0 1 1 0.1 == 2.5937424601
      , "Test 1: ODE dy/dt = y, t0 = 0, y0 = 1, tFinal = 1, h = 0.1, expected ≈2.5937424601, got " ++ Debug.toString (eulerMethod (\_ y -> y) 0 1 1 0.1)
      )
    , ( eulerMethod (\t _ -> t) 0 0 1 0.1 == 0.45
      , "Test 2: ODE dy/dt = t, t0 = 0, y0 = 0, tFinal = 1, h = 0.1, expected 0.45, got " ++ Debug.toString (eulerMethod (\t _ -> t) 0 0 1 0.1)
      )
    , ( eulerMethod (\_ y -> y) 1 2 0 0.1 == 2
      , "Test 3: tFinal < t0: ODE dy/dt = y, t0 = 1, y0 = 2, tFinal = 0, h = 0.1, expected 2, got " ++ Debug.toString (eulerMethod (\_ y -> y) 1 2 0 0.1)
      )
    ]


solution : Solution
solution =
    { title = "Euler's Method ODE Solver"
    , data = tests
    }
