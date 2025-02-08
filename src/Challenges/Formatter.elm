module Challenges.Formatter exposing (..)

import Debug
import Dict exposing (Dict)
import Html exposing (Html, div, text)
import Html.Attributes exposing (style)
import Json.Encode as Encode
import List exposing (foldl, map, sort, sortBy)
import String exposing (fromInt, length, toUpper)
import Types exposing (Solution)


{-| Problem: Group and Format Words

Given a list of words, implement a function groupAndFormat that groups the words by their length.
For each group, sort the words alphabetically, transform each word to uppercase,
and then encode the result as a JSON string.
The JSON object should have keys that are the lengths of the words (as strings)
and values that are arrays of words.
Use List.foldl, Dict, List.sortBy, String.toUpper, and Json.Encode.

-}
groupAndFormat : List String -> String
groupAndFormat words =
    let
        grouped : Dict String (List String)
        grouped =
            List.foldl
                (\word dict ->
                    let
                        key =
                            fromInt (length word)
                    in
                    Dict.update key
                        (\maybeList ->
                            Just (word :: Maybe.withDefault [] maybeList)
                        )
                        dict
                )
                Dict.empty
                words

        sortedGroups : List ( String, List String )
        sortedGroups =
            grouped
                |> Dict.toList
                |> List.map (\( k, ws ) -> ( k, sort (List.map toUpper ws) ))
                |> List.sortBy
                    (\( k, _ ) ->
                        case String.toInt k of
                            Just n ->
                                n

                            Nothing ->
                                0
                    )

        jsonValue =
            Encode.object (List.map (\( k, ws ) -> ( k, Encode.list Encode.string ws )) sortedGroups)
    in
    Encode.encode 0 jsonValue


tests : List ( Bool, String )
tests =
    [ ( groupAndFormat [ "apple", "cat", "dog", "banana" ]
            == "{\"3\":[\"CAT\",\"DOG\"],\"5\":[\"APPLE\"],\"6\":[\"BANANA\"]}"
      , "Test 1: input [\"apple\", \"cat\", \"dog\", \"banana\"], expected {\"3\":[\"CAT\",\"DOG\"],\"5\":[\"APPLE\"],\"6\":[\"BANANA\"]}, got " ++ Debug.toString (groupAndFormat [ "apple", "cat", "dog", "banana" ])
      )
    , ( groupAndFormat [] == "{}"
      , "Test 2: input [], expected {}, got " ++ Debug.toString (groupAndFormat [])
      )
    , ( groupAndFormat [ "a", "bb", "ccc", "dd", "eee", "f" ]
            == "{\"1\":[\"A\",\"F\"],\"2\":[\"BB\",\"DD\"],\"3\":[\"CCC\",\"EEE\"]}"
      , "Test 3: input [\"a\", \"bb\", \"ccc\", \"dd\", \"eee\", \"f\"], expected {\"1\":[\"A\",\"F\"],\"2\":[\"BB\",\"DD\"],\"3\":[\"CCC\",\"EEE\"]}, got " ++ Debug.toString (groupAndFormat [ "a", "bb", "ccc", "dd", "eee", "f" ])
      )
    , ( groupAndFormat [ "Hello", "world", "elm", "programming", "is", "fun" ]
            == "{\"2\":[\"IS\"],\"3\":[\"ELM\",\"FUN\"],\"5\":[\"HELLO\",\"WORLD\"],\"11\":[\"PROGRAMMING\"]}"
      , "Test 4: input [\"Hello\", \"world\", \"elm\", \"programming\", \"is\", \"fun\"], expected {\"2\":[\"IS\"],\"3\":[\"ELM\",\"FUN\"],\"5\":[\"HELLO\",\"WORLD\"],\"11\":[\"PROGRAMMING\"]}, got " ++ Debug.toString (groupAndFormat [ "Hello", "world", "elm", "programming", "is", "fun" ])
      )
    , ( groupAndFormat [ "x", "xx", "xxx", "xx", "x" ]
            == "{\"1\":[\"X\",\"X\"],\"2\":[\"XX\",\"XX\"],\"3\":[\"XXX\"]}"
      , "Test 5: input [\"x\", \"xx\", \"xxx\", \"xx\", \"x\"], expected {\"1\":[\"X\",\"X\"],\"2\":[\"XX\",\"XX\"],\"3\":[\"XXX\"]}, got " ++ Debug.toString (groupAndFormat [ "x", "xx", "xxx", "xx", "x" ])
      )
    ]


solution : Solution
solution =
    { title = "Group and Format Words"
    , data = tests
    }
