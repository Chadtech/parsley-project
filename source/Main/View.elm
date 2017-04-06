module Main.View exposing (view)

import Html exposing (Html)
import Html.Attributes exposing (..)
import Html.Events exposing (onInput)
import Types.Model exposing (Model, Stage(..))
import Types.Message exposing (Message(..))
import Components.Basics exposing (words, field, mainContainer)


view : Model -> Html Message
view model =
    case model.stage of
        Welcome ->
            Html.text ""

        _ ->
            Html.text ""
