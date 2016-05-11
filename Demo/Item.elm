module Demo.Item exposing (..)

import Html exposing (div, Html, text)
import Html.App as Html
import Html.Attributes exposing (style, attribute)

import Paper as Paper exposing (item, itemBody)
import Iron as Iron exposing (icon)

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
    [ style [ ( "display", "inline-block" ), ("margin", "1em") ]
    ]
    [ Paper.item
      []
      [ Iron.icon [ style [ ("margin", "1em") ], attribute "icon" "warning" ] []
      , Paper.itemBody
        [ attribute "two-line" "true" ]
        [ div
          []
          [ text "Show your status" ]
        , div
          [ attribute "secondary" "true" ]
          [ text "Your status is visible to everyone" ]
        ]
      ]
    ]
