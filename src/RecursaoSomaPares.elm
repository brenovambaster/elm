module RecursaoSomaPares exposing (..)

import Html exposing (text)

-- Função recursiva para somar pares consecutivos de uma lista de inteiros
-- Ela retorna uma nova lista com as somas dos pares consecutivos.
sumPairs : List Int -> List Int
sumPairs list =
   
    case list of
    
        [] ->
            []

        [x] ->
            [x]

        -- Caso recursivo: A lista tem pelo menos dois elementos.
        -- Pegamos os dois primeiros elementos `x` e `y`, somamos eles,
        -- e então chamamos `sumPairs` recursivamente para processar o restante da lista `xs`.
        x :: y :: xs ->
            -- A soma de `x + y` é adicionada no início da nova lista,
            -- e a recursão continua com a lista `xs`.
            (x + y) :: sumPairs xs


main =
    let
        -- Definimos a lista de números a ser processada.
        numbers = [1, 2, 3, 4, 5, 6]

        -- Chamamos a função `sumPairs` para somar os pares consecutivos da lista.
        result = sumPairs numbers

        -- Convertendo a lista de inteiros resultante em uma string separada por vírgulas,
        -- para que possa ser exibida como texto.
        resultString = String.join ", " (List.map String.fromInt result)
    in
    -- Exibimos a string resultante na tela.
    text resultString
