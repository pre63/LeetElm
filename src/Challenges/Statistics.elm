module Challenges.Statistics exposing (solution)

import Debug
import Dict
import List exposing (sort)
import Types exposing (Solution)


{-| Problem: Compute Statistics

Given a list of integers, implement a function computeStatistics that returns a tuple
( mean, median, modeList ), where mean and median are Floats and modeList is a list of integers.

  - The mean is the average of the numbers.
  - The median is the middle number in the sorted list (or the average of the two middle numbers if the list has an even number of elements).
  - The modeList contains the number(s) that occur most frequently in the input list. If multiple numbers are tied for highest frequency, return all of them in ascending order.
    For an empty list, return (0, 0, []).
    Use functions from List, Dict, and other parts of the Elm API as needed.

-}
computeStatistics : List Int -> ( Float, Float, List Int )
computeStatistics nums =
    let
        mean =
            if (List.sum nums == 0) || List.isEmpty nums then
                0

            else
                (toFloat << List.sum) nums
                    / (toFloat << List.length) nums

        median =
            let
                sortedNums =
                    sort nums

                len =
                    List.length sortedNums

                mid =
                    len // 2
            in
            if modBy 2 len == 0 then
                (List.drop (mid - 1) sortedNums
                    |> List.take 2
                    |> List.map toFloat
                    |> List.sum
                )
                    / 2

            else
                List.drop mid sortedNums
                    |> List.head
                    |> Maybe.withDefault 0
                    |> toFloat

        modeList =
            let
                freqDict =
                    List.foldl
                        (\num dict ->
                            Dict.update num
                                (\maybeFreq ->
                                    case maybeFreq of
                                        Just freq ->
                                            Just (freq + 1)

                                        Nothing ->
                                            Just 1
                                )
                                dict
                        )
                        Dict.empty
                        nums

                maxFreq =
                    Dict.foldl
                        (\_ freq maxFreq_ ->
                            if freq > maxFreq_ then
                                freq

                            else
                                maxFreq_
                        )
                        0
                        freqDict

                modeList_ =
                    Dict.toList freqDict
                        |> List.filterMap
                            (\( key, freq ) ->
                                if freq == maxFreq then
                                    Just key

                                else
                                    Nothing
                            )
            in
            List.sort modeList_
    in
    ( mean, median, modeList )


tests : List ( Bool, String )
tests =
    [ ( computeStatistics [ 1, 2, 3, 4, 5 ] == ( 3.0, 3.0, [ 1, 2, 3, 4, 5 ] )
      , "Test 1: input [1,2,3,4,5], expected (3.0, 3.0, [1,2,3,4,5]), got " ++ Debug.toString (computeStatistics [ 1, 2, 3, 4, 5 ])
      )
    , ( computeStatistics [ 1, 2, 2, 3, 4 ] == ( 2.4, 2.0, [ 2 ] )
      , "Test 2: input [1,2,2,3,4], expected (2.4, 2.0, [2]), got " ++ Debug.toString (computeStatistics [ 1, 2, 2, 3, 4 ])
      )
    , ( computeStatistics [ 5, 3, 5, 3, 1 ] == ( 3.4, 3.0, [ 3, 5 ] )
      , "Test 3: input [5,3,5,3,1], expected (3.4, 3.0, [3,5]), got " ++ Debug.toString (computeStatistics [ 5, 3, 5, 3, 1 ])
      )
    , ( computeStatistics [ 10 ] == ( 10.0, 10.0, [ 10 ] )
      , "Test 4: input [10], expected (10.0, 10.0, [10]), got " ++ Debug.toString (computeStatistics [ 10 ])
      )
    , ( computeStatistics [] == ( 0, 0, [] )
      , "Test 5: input [], expected (0,0,[]), got " ++ Debug.toString (computeStatistics [])
      )
    , ( computeStatistics [ 1, 1, 2, 3, 3, 3 ] == ( 13 / 6, 2.5, [ 3 ] )
      , "Test 6: input [1,1,2,3,3,3], expected (" ++ Debug.toString (13 / 6) ++ ",2.5,[3]), got " ++ Debug.toString (computeStatistics [ 1, 1, 2, 3, 3, 3 ])
      )
    ]


solution : Solution
solution =
    { title = "Compute Statistics"
    , data = tests
    }
