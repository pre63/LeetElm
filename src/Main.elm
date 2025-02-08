module Main exposing (Model, Msg, ToggleSolution, main)

import Browser
import Challenges.AggregateSalesData
import Challenges.Aggregator
import Challenges.AnagramChecker
import Challenges.BinarySearch
import Challenges.ComputeStatistics
import Challenges.CountOccurrences
import Challenges.CountWords
import Challenges.EulerMethodODE
import Challenges.Factorial
import Challenges.FibonacciSequenceGenerator
import Challenges.FindMax
import Challenges.FindMin
import Challenges.FlattenList
import Challenges.Formatter
import Challenges.GCD
import Challenges.GroupAndFormatWords
import Challenges.GroupItemsByCategory
import Challenges.Groups
import Challenges.InvertDict
import Challenges.LCM
import Challenges.MazeSolver
import Challenges.MergeSortedLists
import Challenges.ODE
import Challenges.PalindromeChecker
import Challenges.PowerFunction
import Challenges.PrimeNumberSieve
import Challenges.RemoveDuplicates
import Challenges.ReverseString
import Challenges.RotateList
import Challenges.SortByLength
import Challenges.Statistics
import Challenges.SumOfDigits
import Challenges.Sums
import Challenges.TransformAndSum
import Challenges.UnzipList
import Challenges.ZipLists
import Html exposing (Html, div, text)
import Html.Attributes exposing (style)
import Html.Events exposing (onClick)
import Types exposing (Solution)



-- MODEL


type alias ToggleSolution =
    ( Bool, Solution )


type alias Model =
    List ToggleSolution


init : Model
init =
    [ ( False, Challenges.AggregateSalesData.solution )
    , ( False, Challenges.CountWords.solution )
    , ( False, Challenges.FlattenList.solution )
    , ( False, Challenges.InvertDict.solution )
    , ( False, Challenges.PowerFunction.solution )
    , ( False, Challenges.Statistics.solution )
    , ( False, Challenges.Aggregator.solution )
    , ( False, Challenges.EulerMethodODE.solution )
    , ( False, Challenges.Formatter.solution )
    , ( False, Challenges.LCM.solution )
    , ( False, Challenges.PrimeNumberSieve.solution )
    , ( False, Challenges.SumOfDigits.solution )
    , ( False, Challenges.AnagramChecker.solution )
    , ( False, Challenges.Factorial.solution )
    , ( False, Challenges.GCD.solution )
    , ( False, Challenges.MazeSolver.solution )
    , ( False, Challenges.RemoveDuplicates.solution )
    , ( False, Challenges.Sums.solution )
    , ( False, Challenges.BinarySearch.solution )
    , ( False, Challenges.FibonacciSequenceGenerator.solution )
    , ( False, Challenges.GroupAndFormatWords.solution )
    , ( False, Challenges.MergeSortedLists.solution )
    , ( False, Challenges.ReverseString.solution )
    , ( False, Challenges.TransformAndSum.solution )
    , ( False, Challenges.ComputeStatistics.solution )
    , ( False, Challenges.FindMax.solution )
    , ( False, Challenges.GroupItemsByCategory.solution )
    , ( False, Challenges.ODE.solution )
    , ( False, Challenges.RotateList.solution )
    , ( False, Challenges.UnzipList.solution )
    , ( False, Challenges.CountOccurrences.solution )
    , ( False, Challenges.FindMin.solution )
    , ( False, Challenges.Groups.solution )
    , ( False, Challenges.PalindromeChecker.solution )
    , ( False, Challenges.SortByLength.solution )
    , ( False, Challenges.ZipLists.solution )
    ]



-- UPDATE


type Msg
    = NoOp
    | Toggle ToggleSolution


update : Msg -> Model -> Model
update msg model =
    case msg of
        NoOp ->
            model

        Toggle toggle ->
            List.map
                (\current ->
                    if current == toggle then
                        ( not (Tuple.first current), Tuple.second current )

                    else
                        current
                )
                model



-- VIEW


viewTest : ( Bool, String ) -> Html msg
viewTest ( pass, msg ) =
    let
        color =
            if pass then
                "green"

            else
                "red"
    in
    div [ style "padding" "5px", style "color" color ] [ text msg ]


viewTitle : ToggleSolution -> Html Msg
viewTitle toggleSolution =
    let
        solution =
            Tuple.second toggleSolution

        testsList =
            solution.data

        totalTests =
            List.length testsList

        passedCount =
            List.foldl
                (\( pass, _ ) acc ->
                    if pass then
                        acc + 1

                    else
                        acc
                )
                0
                testsList

        passFail =
            passedCount == totalTests
    in
    div
        [ style "padding" "5px"
        , style "cursor" "pointer"
        , style "display" "flex"
        , style "justify-content" "space-between"
        , onClick (Toggle toggleSolution)
        ]
        [ text solution.title
        , text
            (" "
                ++ (if passFail then
                        "✅"

                    else
                        "❌"
                   )
                ++ " ("
                ++ String.fromInt passedCount
                ++ "/"
                ++ String.fromInt totalTests
                ++ ")"
            )
        ]


viewOne : ToggleSolution -> Html Msg
viewOne toggleSolution =
    let
        open =
            Tuple.first toggleSolution

        solution =
            Tuple.second toggleSolution
    in
    div [ style "border" "1px solid #ccc", style "margin-bottom" "10px", style "border-radius" "5px" ]
        [ viewTitle toggleSolution
        , if open then
            div [ style "padding" "10px", style "background-color" "#f9f9f9" ]
                (List.map viewTest solution.data)

          else
            text ""
        ]


viewSummary : Model -> Html msg
viewSummary model =
    let
        totalSolutions =
            List.length model

        correctSolutions =
            model
                |> List.filter (\( _, sol ) -> List.all Tuple.first sol.data)
                |> List.length

        totalTests =
            model
                |> List.foldl (\( _, sol ) acc -> acc + List.length sol.data) 0

        passedTests =
            model
                |> List.foldl (\( _, sol ) acc -> acc + List.length (List.filter Tuple.first sol.data)) 0
    in
    div
        [ style "padding" "10px"
        , style "margin-bottom" "20px"
        , style "border-bottom" "2px solid #333"
        , style "font-weight" "bold"
        , style "font-size" "18px"
        ]
        [ text
            ("Summary: "
                ++ String.fromInt correctSolutions
                ++ " of "
                ++ String.fromInt totalSolutions
                ++ " solutions correct.  "
                ++ "Tests Passed: "
                ++ String.fromInt passedTests
                ++ " of "
                ++ String.fromInt totalTests
            )
        ]


view : Model -> Html Msg
view model =
    div [ style "margin" "20px", style "font-family" "Arial, sans-serif" ]
        [ viewSummary model
        , div [] (List.map viewOne model)
        ]



-- MAIN


main : Program () Model Msg
main =
    Browser.sandbox
        { init = init
        , update = update
        , view = view
        }
