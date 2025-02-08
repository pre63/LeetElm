module Main exposing (main)

import Browser
import Challenges.Aggregator
import Challenges.Formatter
import Challenges.Groups
import Challenges.Sums
import Html exposing (Html, div, text)
import Html.Attributes exposing (style)
import Html.Events exposing (onClick)
import Types exposing (Solution)


update : Msg -> Model -> Model
update msg model =
    case msg of
        NoOp ->
            model

        Toggle toggle ->
            let
                open =
                    Tuple.first toggle

                solution =
                    Tuple.second toggle
            in
            List.map
                (\toggle_ ->
                    if toggle_ == toggle then
                        ( not <| open, solution )

                    else
                        toggle_
                )
                model


type Msg
    = NoOp
    | Toggle ToggleSolution


type alias ToggleSolution =
    ( Bool, Solution )


type alias Model =
    List ToggleSolution


init : Model
init =
    [ ( False, Challenges.Sums.solution )
    , ( False, Challenges.Groups.solution )
    , ( False, Challenges.Formatter.solution )
    , ( False, Challenges.Aggregator.solution )
    ]


viewOne : ToggleSolution -> Html Msg
viewOne solution_ =
    let
        open =
            Tuple.first solution_

        solution =
            Tuple.second solution_
    in
    if open then
        div []
            [ viewTitle solution_
            , solution.data |> List.map viewTest |> div []
            ]

    else
        div []
            [ viewTitle solution_
            ]


viewTitle : ToggleSolution -> Html Msg
viewTitle solution_ =
    let
        solution =
            Tuple.second solution_

        passFail =
            solution.data
                |> List.map Tuple.first
                |> List.all identity
    in
    div
        [ style "padding" "5px"
        , style "cursor" "pointer"
        , onClick (Toggle solution_)
        ]
        [ text solution.title
        , text
            (if passFail then
                "✅"

             else
                "❌"
            )
        ]


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


view : Model -> Html Msg
view model =
    div [ style "margin" "20px" ] (List.map viewOne model)


main =
    Browser.sandbox
        { init = init
        , update = update
        , view = view
        }
