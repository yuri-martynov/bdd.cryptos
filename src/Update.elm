module Update exposing (..)

import Model exposing (..)
import Msg exposing (..)



update msg model =
    case ( msg, model ) of
        (DigitMsg digit, _) ->
            model * 10 + digit
            
        _ -> 0
