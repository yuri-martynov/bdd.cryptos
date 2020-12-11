module Tests exposing (..)

import Expect exposing (..)
import Init exposing (..)
import Model exposing (..)
import Msg exposing (..)
import Test exposing (..)
import Update exposing (..)


suite =
    describe "calculator"
        [ test "Is0OnStart" <|
            \_ ->
                init
                    |> equal 0
        , test "After Start Click Button Zero displays Zero" <|
            \_ ->
                init
                    |> update (DigitMsg 0)
                    |> equal 0
        , test "After Start Click Button One displays One" <|
            \_ ->
                init
                    |> update (DigitMsg 1)
                    |> equal 1
        , test "After Click Buttons One Two displays 12" <|
            \_ ->
                init
                    |> update (DigitMsg 1)
                    |> update (DigitMsg 2)
                    |> equal 12
        , test "When 0 After Click Buttons + displays 0" <|
                    \_ ->
                        init
                            |> update (DigitMsg 1)
  
                            |> equal 0
        ]
