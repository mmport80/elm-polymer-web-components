module Demo.Button exposing (view)

import Html exposing (div, span, Html, text)
import Html.Attributes exposing (style, attribute)
import Paper exposing (button)


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
            [ span [] [ text "Some Message..." ]
            , Paper.button
                [ attribute "active" "true"
                , attribute "raised" "true"
                ]
                [ text "Send" ]
            , div [ style [ ( "display", "inline-block" ), ( "margin", "1em" ) ] ]
                [ Paper.button
                    [ attribute "active" "true"
                    , attribute "raised" "true"
                    , attribute "toggles" "true"
                    ]
                    [ text "On / Off" ]
                ]
            ]
        ]
