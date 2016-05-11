module Demo.ListBox exposing (view)

import Html exposing (div, Html, text)
import Html.Attributes exposing (style, attribute)

import Paper as Paper exposing (listBox, item)

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
    [ style [ ( "display", "inline-block" ), ("margin", "1em") ]
    ]
    [ Paper.listBox
      [ attribute "selected" "0"]
      [ Paper.item [] [text "First"]
      , Paper.item [] [text "Second"]
      , Paper.item
        [ attribute "disabled" "true" ]
        [ text "Third" ]
      ]
    ]
