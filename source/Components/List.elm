module Components.List exposing (view)

import Html exposing (Html, input, node)
import Html.Attributes exposing (class, value, spellcheck, placeholder)
import Html.Events exposing (onInput)
import Html.Events.Extra exposing (onEnter)
import Types.Message exposing (Message, Handler)
import Components.Basics exposing (words)
import Components.List.Basics as Basics


view : String -> String -> String -> Handler String -> Message -> Handler String -> List String -> Html Message
view explanation placeHolder_ field fieldHandler addHandler removeHandler listItems =
    Basics.container
        [ words "" explanation
        , input
            [ class "field list"
            , placeholder placeHolder_
            , spellcheck False
            , value field
            , onInput fieldHandler
            , onEnter addHandler
            ]
            []
        , Basics.addButton addHandler
        , listItems
            |> List.indexedMap (Basics.listItem removeHandler)
            |> Basics.list
        ]
