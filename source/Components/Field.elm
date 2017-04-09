module Components.Field exposing (view)

import Html exposing (Html, Attribute, input, div, text, node)
import Html.Attributes exposing (class, value, spellcheck, placeholder)
import Html.Events exposing (onInput)
import Types.Message exposing (Message(..), Handler)


view : String -> String -> String -> String -> Handler String -> Html Message
view extraClass labelText content placeholder_ inputHandler =
    (container extraClass labelText << field)
        [ value content
        , onInput inputHandler
        , spellcheck False
        , placeholder placeholder_
        ]


container : String -> String -> Html Message -> Html Message
container extraClass labelText input =
    div
        [ class ("field-container " ++ extraClass) ]
        [ label labelText
        , input
        ]


label : String -> Html Message
label str =
    node "field-label" [] [ text str ]


field : List (Attribute Message) -> Html Message
field attributes =
    Html.input ((class "field") :: attributes) []
