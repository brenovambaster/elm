module Main exposing(..)
import Browser
import Html exposing (Html, button, div, text)
import Html.Events exposing (onClick)

-- A função `main` inicializa o programa no navegador.
-- `Browser.sandbox` é usado para programas sem efeitos colaterais.
-- Ele recebe um registro com três campos:
-- 1. `init`: valor inicial do modelo (estado).
-- 2. `update`: função que define como o modelo muda em resposta a eventos.
-- 3. `view`: função que renderiza o HTML baseado no modelo atual.
main =
  Browser.sandbox { init = 0, update = update, view = view }

-- Definimos um tipo customizado chamado `Msg` que representa as ações que podem ocorrer no programa.
-- `Increment` e `Decrement` são as duas possíveis mensagens que o usuário pode enviar.
-- Quando clicamos em um botão, ele dispara uma dessas mensagens.
type Msg = Increment | Decrement

-- A função `update` recebe uma mensagem (que indica uma ação) e o modelo atual (o estado).
-- Com base na mensagem recebida, `update` modifica o estado do modelo.
update : Msg -> Int -> Int
update msg model =
  
  case msg of   
    Increment ->
      model + 1

    Decrement ->
      model - 1

-- A função `view` define a interface gráfica.
-- Ela recebe o estado atual do modelo e retorna uma estrutura HTML.
-- O HTML contém os botões e o valor atual do contador.
view : Int -> Html Msg
view model =
  div []
    [ 
      button [ onClick Decrement ] [ text "-" ]
      , div [] [ text (String.fromInt model) ],
      button [ onClick Increment ] [ text "+" ]
    ]
