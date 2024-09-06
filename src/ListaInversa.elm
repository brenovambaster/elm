module ListaInversa exposing (..)

import Html exposing (text)


reverseList : List Int -> List Int -> List Int
reverseList originalList reversedList =
    case originalList of
       
        [] ->
            reversedList

        -- Caso recursivo: pegamos o primeiro elemento da lista original (`x`) e
        -- o adicionamos à lista invertida. Continuamos a recursão com a cauda da lista (`xs`).
        x :: xs ->
            reverseList xs (x :: reversedList)

-- Função auxiliar para simplificar a chamada: apenas passamos a lista original
-- e chamamos a função recursiva `reverseList` com uma lista vazia como a lista invertida inicial.
invert : List Int -> List Int
invert list =
    reverseList list []

-- Função principal que exibe o resultado da inversão da lista
main =
    let
        -- Definimos a lista de números a ser invertida
        numbers = [1, 2, 3, 4, 5]

        -- Chamamos a função `invert` para inverter a lista
        result = invert numbers

        -- Convertendo a lista de inteiros resultante em uma string separada por vírgulas
        resultString = String.join ", " (List.map String.fromInt result)
    in
    -- Exibimos a string resultante na tela
    text resultString
