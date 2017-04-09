module Components.DropDown exposing (view)

import Html exposing (Html, node, div, text)
import Html.Attributes exposing (class)
import Types.Message exposing (Message(..), Handler)
import Components.DropDown.Basics as DropDown


view : Bool -> Message -> Handler a -> a -> List a -> Html Message
view dropped drop optionHandler selectedOption options =
    let
        wrap_ =
            wrap drop selectedOption
    in
        if dropped then
            wrap_ [ DropDown.options optionHandler options ]
        else
            wrap_ []


wrap : Message -> a -> List (Html Message) -> Html Message
wrap dropMessage selectedOption options =
    options
        |> List.append
            [ DropDown.words selectedOption
            , DropDown.button dropMessage
            ]
        |> DropDown.container
        |> List.singleton
        |> List.append [ label "state" ]
        |> div [ class "field-container" ]


label : String -> Html Message
label str =
    node "field-label" [] [ text str ]
