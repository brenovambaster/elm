module RecursaoFatorial exposing (..)
import Html exposing (Html, button, div, text)
import Html.Events exposing (onClick)

-- Função recursiva para calcular o fatorial de um número
factorial : Int -> Int
factorial n =
    if n <= 1 then
        1
    else
        n * factorial (n - 1)

-- Função principal que exibe o resultado do fatorial de 5
main =
    let
        result = factorial 5
    in
    text (String.fromInt result)
