import StartApp.Simple exposing (start)
import Html exposing (..)
import Html.Attributes exposing (..)
import Html.Events exposing (onClick)

main: Signal Html
main =
  StartApp.Simple.start
    { model = False
    , update = update
    , view = view
    }

-- MODEL

type alias Model = Bool


type Action = Check

update : Action -> Model -> Model
update action model =
  not model




paperBadge : List Attribute -> List Html -> Html
paperBadge = Html.node "paper-badge"

paperButton : List Attribute -> List Html -> Html
paperButton = Html.node "paper-button"

paperCard : List Attribute -> List Html -> Html
paperCard = Html.node "paper-card"

paperCheckbox : List Attribute -> List Html -> Html
paperCheckbox = Html.node "paper-checkbox"


paperDialog : List Attribute -> List Html -> Html
paperDialog = Html.node "paper-dialog"

paperDrawerPanel : List Attribute -> List Html -> Html
paperDrawerPanel = Html.node "paper-drawer-panel"

paperDropdownMenu : List Attribute -> List Html -> Html
paperDropdownMenu = Html.node "paper-dropdown-menu"

paperFab : List Attribute -> List Html -> Html
paperFab = Html.node "paper-fab"

paperHeaderPanel : List Attribute -> List Html -> Html
paperHeaderPanel = Html.node "paper-header-panel"

paperItem : List Attribute -> List Html -> Html
paperItem = Html.node "paper-item"

paperListBox : List Attribute -> List Html -> Html
paperListBox = Html.node "paper-listbox"

paperToolbar : List Attribute -> List Html -> Html
paperToolbar = Html.node "paper-toolbar"

-- VIEW

view : Signal.Address Action -> Model -> Html
view address model =
  div []
    [ text "textz"
    , paperCheckbox [ checked False, onClick address Check ] []
    , text (toString model)
    , paperButton
      [ onClick address Check
      , attribute "raised" "false"
      , attribute "noink" "false"
      ]
      [ text "xoxo" ]
    , text (toString model)
    , div [ style [("width","15%")] ]
      [ span [] [text "fofo"]
      , paperBadge [ attribute "label" "4" ] []
      ]
    , paperCard
      [ attribute "heading" "Card Title"
      ]
      [ div [] [text "texttextextexte"] ]
    , paperDialog
        [ id "dialog", attribute "opened" "true"]
        [ h2 [] [ text "FOFOFO" ]
        , paperButton [ attribute "dialog-dismiss" "true" ] [ text "dismiss" ]
        , paperButton [ attribute "dialog-confirm" "true" ] [ text "confirm" ]
        ]
    -- , paperDrawerPanel
    --   [ attribute "opened" "true", attribute "peeking" "true" ]
    --   [ div [ attribute "drawer" "true" ] [ text "Drawer panel..." ]
    --   , div [ attribute "main" "true" ]
    --     [ text "Main panel..."
    --     ]
    --   ]
    -- , paperButton [ attribute "paper-drawer-toggle" "true", attribute "raised" "true" ] [ text "Submit" ]
    , div []
        [
        paperDropdownMenu
          [ attribute "label" "Your favourite pastry"]
          [ paperListBox [class "dropdown-content"]
            [ paperItem [] [ text "x" ]
            , paperItem [] [ text "y" ]
            , paperItem [] [ text "z" ]
            ]
          ]
        ]
    --<paper-fab icon="favorite" title="heart"></paper-fab>
    , div []
      [ paperFab [ title "Heart", attribute "label" "+"] []

      ]
    , div [] [
      paperHeaderPanel []
        [ paperToolbar []
          [ div [] [text "hello bar"]
          ]
        ]
      ]
    , div [] []
    , div [] []
    , div [] []
    , div [] []
    ]


    -- <paper-header-panel class="flex">
    --     <paper-toolbar>
    --       <div>Hello World!</div>
    --     </paper-toolbar>
    --   </paper-header-panel>
