module Paper exposing (..)

import Html exposing (Html, Attribute, node)


badge : List (Attribute a) -> List (Html a) -> Html a
badge =
    Html.node "paper-badge"


button : List (Attribute a) -> List (Html a) -> Html a
button =
    Html.node "paper-button"


card : List (Attribute a) -> List (Html a) -> Html a
card =
    Html.node "paper-card"


checkbox : List (Attribute a) -> List (Html a) -> Html a
checkbox =
    Html.node "paper-checkbox"


dialog : List (Attribute a) -> List (Html a) -> Html a
dialog =
    Html.node "paper-dialog"


dialogScrollable : List (Attribute a) -> List (Html a) -> Html a
dialogScrollable =
    Html.node "paper-dialog-scrollable"


drawerPanel : List (Attribute a) -> List (Html a) -> Html a
drawerPanel =
    Html.node "paper-drawer-panel"


dropdownMenu : List (Attribute a) -> List (Html a) -> Html a
dropdownMenu =
    Html.node "paper-dropdown-menu"


fab : List (Attribute a) -> List (Html a) -> Html a
fab =
    Html.node "paper-fab"


headerPanel : List (Attribute a) -> List (Html a) -> Html a
headerPanel =
    Html.node "paper-header-panel"


iconButton : List (Attribute a) -> List (Html a) -> Html a
iconButton =
    Html.node "paper-icon-button"


input : List (Attribute a) -> List (Html a) -> Html a
input =
    Html.node "paper-input"


iconItem : List (Attribute a) -> List (Html a) -> Html a
iconItem =
    Html.node "paper-icon-item"


item : List (Attribute a) -> List (Html a) -> Html a
item =
    Html.node "paper-item"


itemBody : List (Attribute a) -> List (Html a) -> Html a
itemBody =
    Html.node "paper-item-body"


listBox : List (Attribute a) -> List (Html a) -> Html a
listBox =
    Html.node "paper-listbox"


material : List (Attribute a) -> List (Html a) -> Html a
material =
    Html.node "paper-material"


menu : List (Attribute a) -> List (Html a) -> Html a
menu =
    Html.node "paper-menu"


menuButton : List (Attribute a) -> List (Html a) -> Html a
menuButton =
    Html.node "paper-menu-button"


progress : List (Attribute a) -> List (Html a) -> Html a
progress =
    Html.node "paper-progress"


radioButton : List (Attribute a) -> List (Html a) -> Html a
radioButton =
    Html.node "paper-radio-button"


radioGroup : List (Attribute a) -> List (Html a) -> Html a
radioGroup =
    Html.node "paper-radio-group"


ripple : List (Attribute a) -> List (Html a) -> Html a
ripple =
    Html.node "paper-ripple"


scrollHeaderPanel : List (Attribute a) -> List (Html a) -> Html a
scrollHeaderPanel =
    Html.node "paper-scroll-header-panel"


slider : List (Attribute a) -> List (Html a) -> Html a
slider =
    Html.node "paper-slider"


spinner : List (Attribute a) -> List (Html a) -> Html a
spinner =
    Html.node "paper-spinner"


spinnerLite : List (Attribute a) -> List (Html a) -> Html a
spinnerLite =
    Html.node "paper-spinner-lite"


subMenu : List (Attribute a) -> List (Html a) -> Html a
subMenu =
    Html.node "paper-submenu"


tab : List (Attribute a) -> List (Html a) -> Html a
tab =
    Html.node "paper-tab"


tabs : List (Attribute a) -> List (Html a) -> Html a
tabs =
    Html.node "paper-tabs"


textArea : List (Attribute a) -> List (Html a) -> Html a
textArea =
    Html.node "paper-textarea"


toast : List (Attribute a) -> List (Html a) -> Html a
toast =
    Html.node "paper-toast"


toggleButton : List (Attribute a) -> List (Html a) -> Html a
toggleButton =
    Html.node "paper-toggle-button"


toolbar : List (Attribute a) -> List (Html a) -> Html a
toolbar =
    Html.node "paper-toolbar"


tooltip : List (Attribute a) -> List (Html a) -> Html a
tooltip =
    Html.node "paper-tooltip"
