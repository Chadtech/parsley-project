module Components.List.Basics exposing (..)

import Html exposing (Html, node)
import Html.Attributes exposing (class)
import Html.Events exposing (onClick)
import Types.Message exposing (Message(..), Handler)
import Components.Basics exposing (words)


addButton : Message -> Html Message
addButton handler =
    node
        "list-button"
        [ class "add"
        , onClick handler
        ]
        [ words "" "+" ]


list : List (Html Message) -> Html Message
list =
    node "list-body" []


listItem : Handler String -> Int -> String -> Html Message
listItem handler index content =
    let
        class_ =
            if index % 2 == 1 then
                class "odd"
            else
                class ""
    in
        node
            "list-item"
            [ class_ ]
            [ words "" content
            , node
                "list-button"
                [ class "remove"
                , onClick (handler content)
                ]
                [ words "" "x" ]
            ]


container : List (Html Message) -> Html Message
container =
    node "list-container" []
