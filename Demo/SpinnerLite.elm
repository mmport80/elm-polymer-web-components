module Demo.SpinnerLite exposing (view)

import Html exposing (div, Html, text)
import Html.Attributes exposing (style, attribute)
import Paper exposing (spinnerLite)


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
    Paper.spinnerLite [ attribute "active" "true" ]
        []
