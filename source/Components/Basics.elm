module Components.Basics exposing (..)

import Html exposing (Html, Attribute, p, input, div, node)
import Html.Attributes exposing (class, value, spellcheck, placeholder, type_)
import Html.Events exposing (onInput, onClick)
import Types.Message exposing (Message(..), Handler)


field : Handler String -> String -> String -> Html Message
field handler placeholder_ value_ =
    input
        [ class "field"
        , value value_
        , onInput handler
        , placeholder placeholder_
        ]
        []


words : String -> String -> Html Message
words class_ words =
    p [ class class_ ] [ Html.text words ]


mainContainer : List (Html Message) -> Html Message
mainContainer =
    div [ class "main" ]


card : List (Html Message) -> Html Message
card =
    node "card" []


button : Maybe Message -> String -> String -> Html Message
button maybeClickHandler label class_ =
    let
        attributes =
            case maybeClickHandler of
                Just clickHandler ->
                    [ class ("button " ++ class_)
                    , onClick clickHandler
                    , type_ "submit"
                    , value label
                    ]

                Nothing ->
                    [ class ("button not-ready " ++ class_)
                    , value label
                    , type_ "submit"
                    ]
    in
        input attributes []
