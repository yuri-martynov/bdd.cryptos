module Update exposing (..)

import Model exposing (..)
import Msg exposing (..)


update : Msg -> Model -> Model
update msg model =
    case ( msg, model ) of
        ( Digit digit, Empty ) ->
            Number digit

        ( Digit digit, Number number ) ->
            Number (number * 10 + digit)

        ( Plus, _ ) ->
            Addition model Empty

        ( _, Addition old new ) ->
            Addition old (update msg new)

        _ ->
            model


display model =
    case model of
        Number n ->
            n

        Addition right Empty ->
            result right

        Addition _ new ->
            result new

        Empty ->
            0



--Addition model model ->model


result : Model -> Int
result model =
    case model of
        Number n ->
            n

        Empty ->
            0

        Addition a b ->
            result a + result b
