module Demo.Material exposing (view)

import Html exposing (div, Html, text)
import Html.Attributes exposing (style, attribute)
import Paper exposing (material)


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
    div [ s ]
        [ Paper.material [ attribute "elevated" "3" ]
            [ div [ s ]
                [ text "Three Rings for the Elven-kings under the sky..." ]
            ]
        ]


s : Html.Attribute a
s =
    style [ ( "display", "inline-block" ), ( "margin", "1em" ) ]
