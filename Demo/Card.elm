module Demo.Card exposing (view)

import Html exposing (div, span, Html, text)
import Html.Attributes exposing (style, attribute, class)
import Paper exposing (card, button)


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
        [ Paper.card
            [ attribute "heading" "Emmental"
            , attribute "image" "http://placehold.it/350x150/FFC107/000000"
            ]
            [ div [ class "card-content" ]
                [ text "Emmentaler or Emmental is a yellow, medium hard cheese" ]
            , div [ class "card-actions" ]
                [ Paper.button [] [ text "Share" ]
                , Paper.button [] [ text "Explore" ]
                ]
            ]
        ]
