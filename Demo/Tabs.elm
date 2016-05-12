module Demo.Tabs exposing (view)

import Html exposing (div, Html, text)
import Html.Attributes exposing (style, attribute)
import Paper exposing (tabs, tab)


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
    Paper.tabs [ attribute "selected" "1" ]
        [ Paper.tab [] [ text "One" ]
        , Paper.tab [] [ text "Two" ]
        , Paper.tab [] [ text "Three" ]
        ]
