# Elm Counter Application

This is a simple counter application built using the Elm programming language. The application allows users to increment and decrement a counter by clicking buttons.

# Getting Started

### Prerequisites

To run this application, you need to have Elm installed on your machine. You can install Elm by following the instructions on the [official Elm website](https://guide.elm-lang.org/install/elm.html).

### Running the Application

1. **Clone the repository:**
   ```sh
   git clone https://github.com/brenovambaster/elm.git
   cd elm

# Functional Programming with Elm
Elm is a functional programming language that compiles to JavaScript. It is designed for building reliable web applications with a focus on simplicity and quality tooling. Here are some key concepts of functional programming in Elm:

* Immutability: In Elm, data is immutable, meaning once a value is created, it cannot be changed. This leads to more predictable and easier-to-debug code.
* Pure Functions: Functions in Elm are pure, meaning they always produce the same output given the same input and have no side effects. This makes reasoning about code much simpler.
* Type System: Elm has a strong static type system that catches many errors at compile time, reducing runtime errors.
* Architecture: Elm applications follow a specific architecture pattern known as The Elm Architecture, which consists of three main parts: Model, Update, and View.

# The Elm Architecture
1. Model: Represents the state of the application. In this example, the model is a simple integer representing the counter value.
2. Update: A function that takes a message and the current model, and returns a new model. It defines how the state changes in response to messages.
3. View: A function that takes the model and returns HTML. It defines how the state is presented to the user.

# Example Code
Here is a brief overview of the code in `Main.elm:`
module Main exposing(..)
import Browser
import Html exposing (Html, button, div, text)
import Html.Events exposing (onClick)

```elm

module Main exposing(..)
import Browser
import Html exposing (Html, button, div, text)
import Html.Events exposing (onClick)

main =
  Browser.sandbox { init = 0, update = update, view = view }

type Msg = Increment | Decrement

update msg model =
  case msg of
    Increment ->
      model + 1

    Decrement ->
      model - 1

view model =
  div []
    [ button [ onClick Decrement ] [ text "-" ]
    , div [] [ text (String.fromInt model) ]
    , button [ onClick Increment ] [ text "+" ]
    ]

```

1. **Main Module:** Defines the main entry point of the application.
2. **Messages:** Defines the possible messages (Increment and Decrement) that can be sent to update the model.
3. **Update Function:** Handles the messages and updates the model accordingly.
View Function: Defines the HTML structure and how the model is displayed.