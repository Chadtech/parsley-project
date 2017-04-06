module Main.View exposing (view)

import Html exposing (Html)
import Html.Attributes exposing (..)
import Html.Events exposing (onInput)
import Types.Model exposing (Model, Stage(..))
import Types.Message exposing (Message(..))
import Components.Basics exposing (card)


view : Model -> Html Message
view model =
    case model.stage of
        _ ->
            card []
