module Demo.ScrollHeaderPanel exposing (view)

import Html exposing (div, Html, text)
import Html.Attributes exposing (style, attribute, class)

import Paper as Paper exposing (scrollHeaderPanel)

-- MODEL
type alias Model = Bool

model : Bool
model = False

type Action = Nothing

update : Action -> Model -> Model
update action model = model

-- VIEW
view : Model -> Html a
view model =
  div
  [ class "fullbleed layout vertical" ]
  [ Paper.scrollHeaderPanel
    [ class "flex" ]
    [ Paper.toolbar
      []
      [ div
        []
        [ text "Hello World!" ]
      ]
    ]
  ]
