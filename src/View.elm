module View exposing (view)

--import Update exposing (display)

import Html exposing (..)
import Html.Attributes exposing (..)
import Html.Events exposing (..)
import List
import Model exposing (..)
import Msg exposing (..)
import Update exposing (display)


btn msg label =
    button
        [ onClick msg, class "button" ]
        [ text label ]


buttons =
    [ btn Msg.Plus "+"
    , btn Msg.Minus "-"
    , btn Msg.Multiply "*"
    , btn Msg.Equals "="
    ]


digit d =
    btn (Digit d) (String.fromInt d)


digits =
    List.range 0 9
        |> List.map digit


view model =
    css
        :: screen model
        :: buttons
        ++ digits
        |> div [ class "calc-body" ]
        |> List.singleton
        |> div [ class "container" ]


screen model =
    [ typed model
    ]
        |> div [ class "calc-screen" ]


typed model =
    [ model |> display |> String.fromInt |> text
    , "_" |> text |> List.singleton |> span [ class "blink-me" ]
    ]
        |> div [ class "calc-typed" ]


css =
    node "link" [ rel "stylesheet", href "style.css" ] []



-- operation model =
--     model
--         |> String.fromFloat
--         |> text
--         |> List.singleton
--         |> div [ class "calc-operation" ]
