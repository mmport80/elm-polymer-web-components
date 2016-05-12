module Demo.Progress exposing (view)

import Html exposing (div, Html, text)
import Html.Attributes exposing (style, attribute)
import Paper exposing (progress)


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
        [ Paper.progress [ attribute "indeterminate" "true" ]
            []
        ]
