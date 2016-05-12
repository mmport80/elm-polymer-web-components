module Demo.Dialog exposing (view)

import Html exposing (div, Html, text, h2)
import Html.Attributes exposing (style, attribute, class)
import Paper exposing (dialogScrollable, dialog)


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
        [ Paper.dialog [ attribute "opened" "true" ]
            [ h2 [] [ text "Header" ]
            , Paper.dialogScrollable []
                [ text "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum." ]
            , div [ class "buttons" ]
                [ Paper.button [ attribute "dialog-dismiss" "true" ] [ text "Cancel" ]
                , Paper.button [ attribute "dialog-confirm" "true" ] [ text "Confirm" ]
                ]
            ]
        ]
