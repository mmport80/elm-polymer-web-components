module Demo.RadioGroup exposing (view)

import Html exposing (div, Html, text)
import Html.Attributes exposing (style, attribute)

import Paper as Paper exposing (radioButton, radioGroup)

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
    [ style [ ( "display", "inline-block" ), ("margin", "1em") ] ]
    [ Paper.radioGroup
      []
      [ Paper.radioButton [attribute "name" "small"] [text "Small"]
      , Paper.radioButton [attribute "name" "medium"] [text "Medium"]
      , Paper.radioButton [attribute "name" "large"] [text "Large"]
      ]
    ]
