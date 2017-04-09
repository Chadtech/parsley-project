module Components.DropDown.Basics
    exposing
        ( options
        , words
        , button
        , container
        )

import Html exposing (Html, node)
import Html.Events exposing (onClick)
import Html.Attributes exposing (class)
import Types.Message exposing (Message(..), Handler)
import Components.Basics as Components


container : List (Html Message) -> Html Message
container =
    node "drop-down-container" []


words : a -> Html Message
words parameter =
    parameter
        |> toString
        |> Components.words "drop-down"


options : Handler a -> List a -> Html Message
options handler parameters =
    parameters
        |> List.map (option handler)
        |> node
            "drop-down-options-container"
            []


option : Handler a -> a -> Html Message
option handler parameter =
    node "drop-down-option"
        [ onClick (handler parameter) ]
        [ words parameter ]


button : Message -> Html Message
button drop =
    node
        "drop-down-button"
        [ onClick drop ]
        [ node "triangle" [] [] ]
