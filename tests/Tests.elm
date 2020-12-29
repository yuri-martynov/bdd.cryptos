module Tests exposing (..)

import Expect exposing (..)
import Init exposing (..)
import Model exposing (..)
import Msg exposing (..)
import Test exposing (..)
import Update exposing (..)


suite =
    describe "calculator"
        [ test "displays 0 on start" <|
            \_ ->
                init
                    |> display
                    |> equal 0
        , test "on start user clicks 0 calculator shows 0" <|
            \_ ->
                init
                    |> update (Digit 0)
                    |> display
                    |> equal 0
        , test "on start user click 1 calculator shows 1" <|
            \_ ->
                init
                    |> update (Digit 1)
                    |> display
                    |> equal 1
        , test "on start user clicks 1 and 2 calculator shows 12" <|
            \_ ->
                init
                    |> update (Digit 1)
                    |> update (Digit 2)
                    |> display
                    |> equal 12
        , test "on start user clicks + calculator shows 0" <|
            \_ ->
                init
                    |> update Plus
                    |> display
                    |> equal 0
        , test "when 5 and user clicks + calculator shows 5" <|
            \_ ->
                init
                    |> update (Digit 5)
                    |> update Plus
                    |> display
                    |> equal 5
        , test "when 5 and user clicks + 7 calculator shows 7" <|
            \_ ->
                init
                    |> update (Digit 5)
                    |> update Plus
                    |> update (Digit 7)
                    |> display
                    |> equal 7
        , test "when 5 and user clicks + 7 and plus calculator shows 12" <|
            \_ ->
                init
                    |> update (Digit 5)
                    |> update Plus
                    |> update (Digit 7)
                    |> update Plus
                    |> display
                    |> equal 12
        ]
