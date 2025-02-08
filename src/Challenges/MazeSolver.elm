module Challenges.MazeSolver exposing (solution)

import Types exposing (Solution)


{-| Problem: Maze Solver

Given a 2D grid representing a maze (with 0 for open paths and 1 for walls), find a path
from the start position to the finish. Return the sequence of moves or coordinates representing the path.
For testing purposes, assume:

  - The start position is (0,0)
  - The finish position is (rows-1, cols-1)

-}
solveMaze : List (List Int) -> List ( Int, Int )
solveMaze maze =
    -- TODO: Implement maze solving algorithm
    case maze of
        [] ->
            []

        [ [ 0 ] ] ->
            [ ( 0, 0 ) ]

        _ ->
            []



-- Placeholder implementation


tests : List ( Bool, String )
tests =
    [ ( solveMaze
            [ [ 0, 1, 0 ]
            , [ 0, 0, 0 ]
            , [ 1, 0, 0 ]
            ]
            /= []
      , "Test 1: Valid maze returns non-empty path"
      )
    , ( solveMaze
            [ [ 0, 1, 0 ]
            , [ 1, 1, 1 ]
            , [ 0, 1, 0 ]
            ]
            == []
      , "Test 2: Maze with no path returns empty list"
      )
    , ( List.length
            (solveMaze
                [ [ 0, 0, 0 ]
                , [ 1, 1, 0 ]
                , [ 0, 0, 0 ]
                ]
            )
            > 0
      , "Test 3: Larger maze returns a valid path"
      )
    , ( solveMaze [] == []
      , "Test 4: Empty maze returns empty result"
      )
    , ( solveMaze [ [ 0 ] ] == [ ( 0, 0 ) ]
      , "Test 5: Single cell maze returns start position"
      )
    , ( solveMaze
            [ [ 0, 0 ]
            , [ 0, 0 ]
            ]
            /= []
      , "Test 6: 2x2 maze returns a valid path"
      )
    , ( solveMaze
            [ [ 0, 1, 0, 0 ]
            , [ 0, 0, 1, 0 ]
            , [ 1, 0, 0, 0 ]
            , [ 0, 0, 0, 0 ]
            ]
            /= []
      , "Test 7: 4x4 maze returns a valid path"
      )
    ]


solution : Solution
solution =
    { title = "Maze Solver"
    , data = tests
    }
