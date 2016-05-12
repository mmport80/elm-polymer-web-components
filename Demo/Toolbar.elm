module Demo.Toolbar exposing (view)

import Html exposing (div, Html, text)
import Html.Attributes exposing (style, attribute, class, width)
import Paper exposing (toolbar, iconButton)


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
    div [ style [ ( "display", "inline-block" ), ( "width", "90%" ) ] ]
        [ Paper.toolbar []
            [ iconButton
                [ attribute "icon" "menu"
                ]
                []
            ]
        ]
