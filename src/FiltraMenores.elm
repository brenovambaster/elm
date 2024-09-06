module FiltraMenores exposing (..)
import Html exposing (text)

-- Função recursiva para filtrar os elementos menores que `n` de uma lista
findSmallerThan : Int -> List Int -> List Int
findSmallerThan n list =
    case list of
       
        [] ->
            []

        -- Caso recursivo: Desconstruímos a lista em cabeça (primeiro elemento) e cauda (restante da lista)
        x :: xs ->
           
            if x < n then
                -- Se `x` for menor que `n`, incluímos `x` no início da nova lista
                -- e continuamos a chamada recursiva para o restante da lista (`xs`).
                x :: findSmallerThan n xs
            else
                -- Se `x` não for menor que `n`, apenas continuamos a chamada recursiva com o restante da lista.
                findSmallerThan n xs

-- Função principal que exibe o resultado da filtragem de elementos menores que `n`
main =
    let
       
        numbers = [1, 3, 5, 7, 2, 6, 4]
        n = 5

        -- Chamamos a função `findSmallerThan` para filtrar os números menores que `n`
        result = findSmallerThan n numbers

        -- Convertendo a lista de inteiros resultante em uma string separada por vírgulas
        resultString = String.join ", " (List.map String.fromInt result)
    in
    -- Exibimos a string resultante na tela
    text resultString
