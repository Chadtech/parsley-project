module Components.List.Basics exposing (..)

import Html exposing (Html, node)
import Types.Message exposing (Message(..))


body : List (Html Message) -> Html Message
body =
    node "list-body" []


container : List (Html Message) -> Html Message
container =
    node "list-container" []
