module Iron exposing (..)

import Html exposing (Html, Attribute, node)

icon : List (Attribute a) -> List (Html a) -> Html a
icon =
  Html.node "iron-icon"
