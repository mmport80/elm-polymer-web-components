module Demo.Badge exposing (view)

import Html exposing (div, span, Html, text)
import Html.Attributes exposing (style, attribute)
import Paper exposing (badge)


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
    div []
        [ div [ style [ ( "display", "inline-block" ), ( "margin", "1em" ) ] ]
            [ span [] [ text "Inbox" ]
            , Paper.badge [ attribute "label" "3" ] []
            ]
        ]
