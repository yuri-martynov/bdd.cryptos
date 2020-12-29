module Lambda exposing (..)


add x y =
    x + y


five =
    add 2 3



-- left right = right |> left


five_ =
    3 |> add 2


multiply x y =
    x * y


double x =
    x * 2


get_18 =
    1
        |> add 2
        |> multiply 3
        |> double


get_18_ =
    double (multiply 3 (add 2 1))



---


start car =
    1


accelerate a car =
    car + a


stop car =
    0


race car =
    car
        |> start
        |> accelerate 1
        |> accelerate 2
        |> stop



---


type AbstractClassName
    = ConcreteClassNameNumber Float
    | ConcreteClassNameText String
    | TwoNumbers Int Float
    | Nothing
    | TwoParts AbstractClassName AbstractClassName


print : AbstractClassName -> String
print model =
    case model of
        ConcreteClassNameText t ->
            t

        ConcreteClassNameNumber n ->
            String.fromFloat n

        TwoNumbers a b ->
            String.fromInt a ++ ", " ++ String.fromFloat b

        Nothing ->
            "nothing"

        TwoParts a b ->
            print a ++ ", " ++ print b



---


isLeap : Int -> Bool
isLeap year =
    remainderBy 4 year == 0
