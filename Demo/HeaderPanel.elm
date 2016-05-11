module Demo.HeaderPanel exposing (..)

import Html exposing (div, Html, text, p)
import Html.App as Html
import Html.Attributes exposing (style, attribute, class)

import Paper as Paper exposing (headerPanel, toolbar)

-- MODEL
type alias Model = Bool

model = False

type Action = Nothing

update : Action -> Model -> Model
update action model = model

-- VIEW
view : Model -> Html a
view model =
  div []
    [ Paper.headerPanel
      [ attribute "mode" "cover" ]
      [ Paper.toolbar
        []
        [ div [] [ text "Hello World!" ]
        ]
      ]
    , div [ style [("width", "50%"), ("margin","0 auto")] ] [ pText, pText, pText, pText ]
    ]


pText = p []
  [ text "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum."
  ]
