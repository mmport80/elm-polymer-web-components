module Main (..) where

import StartApp.Simple exposing (start)
import Html exposing (div, span, Html, text, h2)
import Html.Attributes exposing (..)
import Html.Events exposing (onClick)
import Paper exposing (..)


main : Signal Html
main =
  StartApp.Simple.start
    { model = False
    , update = update
    , view = view
    }



-- MODEL


type alias Model =
  Bool


type Action
  = Check


update : Action -> Model -> Model
update action model =
  not model



-- VIEW


view : Signal.Address Action -> Model -> Html
view address model =
  div
    []
    [ div
        []
        [ radioGroup
            [ attribute "selected" "large" ]
            [ radioButton [ name "small" ] [ text "small" ]
            , radioButton [ name "medium" ] [ text "medium" ]
            , radioButton [ name "large" ] [ text "large" ]
            ]
        ]
    , div [] [ ripple [] [], text "Riiiiiiiiiiiiiipple" ]
    , div
        []
        [ text "spinner"
        ]
    , div
        []
        [ slider
            [ attribute "value" "21", attribute "editable" "true" ]
            []
        ]
    , div
        []
        [ spinner [ attribute "active" "true" ] []
        ]
    , div [] []
    , div [] []
    , text "textz"
    , checkbox [ checked False, onClick address Check ] []
    , text (toString model)
    , button
        [ onClick address Check
        , attribute "raised" "false"
        , attribute "noink" "false"
        ]
        [ text "xoxo" ]
    , text (toString model)
    , div
        [ style [ ( "width", "15%" ) ] ]
        [ span [] [ text "fofo" ]
        , badge [ attribute "label" "4" ] []
        ]
    , card
        [ attribute "heading" "Card Title"
        ]
        [ div [] [ text "texttextextexte" ] ]
    , dialog
        [ id "dialog", attribute "opened" "true" ]
        [ h2 [] [ text "FOFOFO" ]
        , button [ attribute "dialog-dismiss" "true" ] [ text "dismiss" ]
        , button [ attribute "dialog-confirm" "true" ] [ text "confirm" ]
        ]
      -- , paperDrawerPanel
      --   [ attribute "opened" "true", attribute "peeking" "true" ]
      --   [ div [ attribute "drawer" "true" ] [ text "Drawer panel..." ]
      --   , div [ attribute "main" "true" ]
      --     [ text "Main panel..."
      --     ]
      --   ]
      -- , paperButton [ attribute "paper-drawer-toggle" "true", attribute "raised" "true" ] [ text "Submit" ]
    , div
        []
        [ dropdownMenu
            [ attribute "label" "Your favourite pastry" ]
            [ listBox
                [ class "dropdown-content" ]
                [ item [] [ text "x" ]
                , item [] [ text "y" ]
                , item [] [ text "z" ]
                ]
            ]
        ]
      --<paper-fab icon="favorite" title="heart"></paper-fab>
    , div
        []
        [ fab [ title "Heart", attribute "label" "+" ] []
        ]
    , div
        []
        [ headerPanel
            []
            [ toolbar
                []
                [ div [] [ text "hello bar" ]
                ]
            ]
        ]
    , div
        []
        [ text "xoxo"
        , iconButton
            [ src "star.png"
            , attribute "raised" "true"
            ]
            []
        ]
    , div
        []
        [ text "xoxo"
        , iconButton
            [ attribute "icon" "favorite"
            , attribute "raised" "true"
            ]
            []
        ]
    , div
        []
        [ input
            [ placeholder "soso"
            , attribute "label" "input"
            , attribute "char-counter" "true"
            , attribute "maxlength" "10"
            ]
            []
        ]
    , div
        []
        [ text "test" ]
    , div
        []
        [ textArea [ placeholder "toto", attribute "label" "autoresizing textarea input" ] [ text "gogogogogo" ]
        ]
    , div
        []
        [ material [] [ text "gogogogogo" ]
        ]
    , div
        []
        [ menuButton
            []
            [ iconButton [ attribute "icon" "menu", class "dropdown-trigger" ] []
            , menu
                [ attribute "selected" "1", class "dropdown-content" ]
                [ item [] [ text "gogogogogo" ]
                , item [] [ text "uiuiuiui" ]
                , subMenu
                    []
                    [ item [ class "menu-trigger" ] [ text "Numbers" ]
                    , menu
                        [ class "menu-content" ]
                        [ item [] [ text "1010101010" ]
                        , item [] [ text "29292929" ]
                        ]
                    ]
                ]
            ]
        ]
    , div
        []
        [ progress [ attribute "indeterminate" "true" ] []
        , div
            []
            [ progress [ attribute "value" "800", attribute "min" "100", attribute "max" "1000" ] []
            ]
        ]
    , div [] []
    , div [] []
    , div [] []
    , div [] []
    , div [] []
    , div [] []
    ]
