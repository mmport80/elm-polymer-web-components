module Demo.Input exposing (..)

import Html exposing (div, Html, text)
import Html.App as Html
import Html.Attributes exposing (style, attribute)

import Paper as Paper exposing (input)

-- MODEL
type alias Model = Bool

model = False

type Action = Nothing

update : Action -> Model -> Model
update action model = model

-- VIEW
view : Model -> Html a
view model =
  div
    [ style [ ( "display", "inline-block" ), ("margin", "1em") ] ]
    [ input
      [ attribute "label" " Paragraph" ]
      [ div
        [ attribute "prefix" "true" ]
        [ text "§" ]
      ]
    ]