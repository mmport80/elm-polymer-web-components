module Demo.DropdownMenu exposing (view)

import Html exposing (div, Html, text)
import Html.Attributes exposing (style, attribute, class)

import Paper as Paper exposing (dropdownMenu, listBox, item)

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
    [ Paper.dropdownMenu
      [ attribute "label" "Your Favourite Pastry" ]
      [ Paper.listBox
        [ class "dropdown-content"]
        [ Paper.item
          []
          [ text "Croissant" ]
        , Paper.item
          []
          [ text "Donut" ]
        , Paper.item
          []
          [ text "Financier" ]
        , Paper.item
          []
          [ text "Madeleine" ]
        ]
      ]

    ]
