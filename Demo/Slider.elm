module Demo.Slider exposing (view)

import Html exposing (div, Html, text)
import Html.Attributes exposing (style, attribute, class)
import Paper exposing (scrollHeaderPanel)


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
    Paper.slider [ attribute "min" "0", attribute "max" "100", attribute "value" "40" ]
        []
