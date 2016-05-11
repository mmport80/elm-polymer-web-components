module Demo.Menu exposing (view)

import Html exposing (div, Html, text)
import Html.Attributes exposing (style, attribute, class)

import Paper as Paper exposing (menu, item, subMenu, menuButton)

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
    [ Paper.menu
      []
      [ Paper.item
        []
        [ text "One" ]
      , Paper.item
        []
        [ text "Two" ]
      , Paper.subMenu []
        [ Paper.item
          [ class "menu-trigger" ]
          [ text "A, B..." ]
        , Paper.menu
          [ class "menu-content" ]
          [ Paper.item
            []
            [ text "A" ]
          , Paper.item
            []
            [ text "B" ]
          ]
        ]
      ]
    ]
