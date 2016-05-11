module Demo.Fab exposing (view)

import Html exposing (div, Html, text)
import Html.Attributes exposing (style, attribute)

import Paper as Paper exposing (fab)

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
    [ Paper.fab
      [ attribute "icon" "favorite"
      , attribute "mini" "true"
      ]
      []
    ]
