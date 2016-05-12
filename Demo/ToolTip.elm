module Demo.Tooltip exposing (view)

import Html exposing (div, Html, text)
import Html.Attributes exposing (style, attribute, class, width)
import Paper exposing (tooltip, button)


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
    div [ style [ ( "display", "inline-block" ), ( "margin", "1em" ) ] ]
        [ Paper.button [ attribute "raised" "true" ] [ text "Press" ]
        , Paper.tooltip [ attribute "animation-delay" "100" ]
            [ text "A tool tip" ]
        ]
