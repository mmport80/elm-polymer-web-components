module Main exposing (..)

import Html.App as Html
import Html exposing (div, span, Html, text, h2)
import Html.Attributes exposing (style, attribute, class)
import Html.Events exposing (onClick)
import Html.Lazy exposing (lazy)
import Demo.Badge exposing (view)
import Demo.Button exposing (view)
import Demo.Card exposing (view)
import Demo.Checkbox exposing (view)
import Demo.Dialog exposing (view)
import Demo.DrawerPanel exposing (view)
import Demo.DropdownMenu exposing (view)
import Demo.Fab exposing (view)
import Demo.HeaderPanel exposing (view)
import Demo.IconButton exposing (view)
import Demo.Input exposing (view)
import Demo.Item exposing (view)
import Demo.ListBox exposing (view)
import Demo.Material exposing (view)
import Demo.Menu exposing (view)
import Demo.Progress exposing (view)
import Demo.RadioGroup exposing (view)
import Demo.Ripple exposing (view)
import Demo.ScrollHeaderPanel exposing (view)
import Demo.Slider exposing (view)
import Demo.Spinner exposing (view)
import Demo.SpinnerLite exposing (view)
import Demo.Tabs exposing (view)
import Demo.Toast exposing (view)
import Demo.ToggleButton exposing (view)
import Demo.Toolbar exposing (view)
import Demo.Tooltip exposing (view)
import Paper exposing (dropdownMenu, listBox, item)


main : Program Never
main =
    Html.beginnerProgram
        { model = model
        , update = update
        , view = view
        }



-- MODEL


type alias Model =
    { dummy : Bool
    , currentPage : Action
    }


model : { currentPage : Action, dummy : Bool }
model =
    { dummy = True
    , currentPage = Card
    }



--Update


type Action
    = Badge
    | Button
    | Card
    | Checkbox
    | Dialog
    | DrawerPanel
    | DropdownMenu
    | Fab
    | HeaderPanel
    | IconButton
    | Input
    | Item
    | ListBox
    | Material
    | Menu
    | Progress
    | RadioGroup
    | Ripple
    | ScrollHeaderPanel
    | Slider
    | Spinner
    | SpinnerLite
    | Tabs
    | Toast
    | ToggleButton
    | Toolbar
    | Tooltip


update : Action -> Model -> Model
update action model =
    { model | currentPage = action }



-- VIEW


view : Model -> Html Action
view model =
    let
        v =
            chooseView model.currentPage
    in
        div []
            [ components
            , v model.dummy
            ]


components : Html Action
components =
    div [ style [ ( "margin", "1em" ) ] ]
        [ Paper.dropdownMenu [ attribute "label" "Choose a Component" ]
            [ Paper.listBox [ class "dropdown-content", attribute "selected" "2" ]
                [ Paper.item [ onClick Badge ]
                    [ text "Badge" ]
                , Paper.item [ onClick Button ]
                    [ text "Button" ]
                , Paper.item [ onClick Card ]
                    [ text "Card" ]
                , Paper.item [ onClick Checkbox ]
                    [ text "Checkbox" ]
                , Paper.item [ onClick Dialog ]
                    [ text "Dialog" ]
                , Paper.item [ onClick DrawerPanel ]
                    [ text "DrawerPanel" ]
                , Paper.item [ onClick DropdownMenu ]
                    [ text "DropdownMenu" ]
                , Paper.item [ onClick Fab ]
                    [ text "Fab" ]
                , Paper.item [ onClick HeaderPanel ]
                    [ text "HeaderPanel" ]
                , Paper.item [ onClick IconButton ]
                    [ text "IconButton" ]
                , Paper.item [ onClick Input ]
                    [ text "Input" ]
                , Paper.item [ onClick Badge ]
                    [ text "Item" ]
                , Paper.item [ onClick ListBox ]
                    [ text "ListBox" ]
                , Paper.item [ onClick Material ]
                    [ text "Material" ]
                , Paper.item [ onClick Menu ]
                    [ text "Menu" ]
                , Paper.item [ onClick Progress ]
                    [ text "Progress" ]
                , Paper.item [ onClick RadioGroup ]
                    [ text "RadioGroup" ]
                , Paper.item [ onClick Ripple ]
                    [ text "Ripple" ]
                , Paper.item [ onClick ScrollHeaderPanel ]
                    [ text "ScrollHeaderPanel" ]
                , Paper.item [ onClick Slider ]
                    [ text "Slider" ]
                , Paper.item [ onClick Spinner ]
                    [ text "Spinner" ]
                , Paper.item [ onClick SpinnerLite ]
                    [ text "SpinnerLite" ]
                , Paper.item [ onClick Tabs ]
                    [ text "Tabs" ]
                , Paper.item [ onClick Toast ]
                    [ text "Toast" ]
                , Paper.item [ onClick ToggleButton ]
                    [ text "ToggleButton" ]
                , Paper.item [ onClick Toolbar ]
                    [ text "Toolbar" ]
                , Paper.item [ onClick Tooltip ]
                    [ text "Tooltip" ]
                ]
            ]
        ]


chooseView : Action -> Bool -> Html a
chooseView currentPage =
    case currentPage of
        Badge ->
            Demo.Badge.view

        Button ->
            Demo.Button.view

        Card ->
            Demo.Card.view

        Checkbox ->
            Demo.Checkbox.view

        Dialog ->
            Demo.Dialog.view

        DrawerPanel ->
            Demo.DrawerPanel.view

        DropdownMenu ->
            Demo.DropdownMenu.view

        Fab ->
            Demo.Fab.view

        HeaderPanel ->
            Demo.HeaderPanel.view

        IconButton ->
            Demo.IconButton.view

        Input ->
            Demo.Input.view

        Item ->
            Demo.Item.view

        ListBox ->
            Demo.ListBox.view

        Material ->
            Demo.Material.view

        Menu ->
            Demo.Menu.view

        Progress ->
            Demo.Progress.view

        RadioGroup ->
            Demo.RadioGroup.view

        Ripple ->
            Demo.Ripple.view

        ScrollHeaderPanel ->
            Demo.ScrollHeaderPanel.view

        Slider ->
            Demo.Slider.view

        Spinner ->
            Demo.Spinner.view

        SpinnerLite ->
            Demo.SpinnerLite.view

        Tabs ->
            Demo.Tabs.view

        Toast ->
            Demo.Toast.view

        ToggleButton ->
            Demo.ToggleButton.view

        Toolbar ->
            Demo.Toolbar.view

        Tooltip ->
            Demo.Tooltip.view
