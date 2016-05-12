module Demo.DrawerPanel exposing (view)

import Html exposing (div, Html, text, h2)
import Html.Attributes exposing (style, attribute, class)
import Paper exposing (drawerPanel, button)


-- MODEL


type alias Model =
    Bool


model : Bool
model =
    False


type Action
    = Nothing


update : Action -> Model -> Model
update action model =
    model



-- VIEW


view : Model -> Html a
view model =
    Paper.drawerPanel
        [ attribute "force-narrow" "true"
        ]
        [ div [ attribute "drawer" "true" ]
            [ text "Options..." ]
        , div [ attribute "main" "true" ]
            [ Paper.button
                [ attribute "paper-drawer-toggle" "true"
                , attribute "raised" "true"
                , style [ ( "display", "inline-block" ), ( "margin", "1em" ) ]
                ]
                [ text "Open Sesame" ]
            ]
        ]
