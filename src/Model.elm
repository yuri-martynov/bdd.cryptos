module Model exposing (..)


type Model
    = Empty
    | Number Int
    | Addition Model Model
