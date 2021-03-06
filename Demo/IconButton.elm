module Demo.IconButton exposing (view)

import Html exposing (div, Html)
import Html.Attributes exposing (style, attribute)
import Paper exposing (iconButton)


-- MODEL


type alias Model =
    Bool


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
        [ iconButton [ attribute "icon" "favorite" ] []
        ]
