module Components.List exposing (view)

import Html exposing (Html, input, node)
import Html.Attributes exposing (class, value, spellcheck, placeholder)
import Html.Events exposing (onInput)
import Html.Events.Extra exposing (onEnter)
import Types.Message exposing (Message(..), Handler)
import Components.Basics exposing (words)
import Components.List.Basics as Basics


view : String -> String -> String -> List String -> Html Message
view explanation placeHolder_ field listItems =
    Basics.container
        [ words "" explanation
        , input
            [ class "field list"
            , placeholder placeHolder_
            , spellcheck False
            , value field
            , onInput UpdateField
            , onEnter AddListItem
            ]
            []
        , Basics.addButton AddListItem
        , listItems
            |> List.indexedMap (Basics.listItem RemoveListItem)
            |> Basics.list
        ]
