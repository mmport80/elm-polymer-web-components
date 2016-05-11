module Demo.IconButton exposing (..)

import Html exposing (div, Html)
import Html.App as Html
import Html.Attributes exposing (style, attribute)

import Paper as Paper exposing (iconButton)

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
    [ iconButton [ attribute "icon" "favorite" ] []
    ]
