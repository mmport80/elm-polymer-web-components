module Main exposing (..)

import Html.App as Html
import Html exposing (div, span, Html, text, h2)
import Html.Attributes exposing (..)
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

model =
  { dummy = True
  , currentPage = Item
  }

--Update
type Action = Badge | Button | Card | Checkbox | Dialog | DrawerPanel | DropdownMenu | Fab | HeaderPanel | IconButton
  | Input | Item

update : Action -> Model -> Model
update action model =
  {model | currentPage = action}

-- VIEW
view : Model -> Html a
view model =
  let
    v =
      case model.currentPage of
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
    in
      lazy v model.dummy
