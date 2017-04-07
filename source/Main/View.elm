module Main.View exposing (view)

import Html exposing (Html)
import Html.Attributes exposing (..)
import Html.Events exposing (onInput)
import Types.Model exposing (Model, Stage(..))
import Types.Message exposing (Message(..))
import Components.Basics exposing (card)
import Welcome.View as Welcome
import PersonalInformation.View as PersonalInformation


view : Model -> Html Message
view model =
    case model.stage of
        Welcome ->
            Welcome.view

        PersonalInformation ->
            PersonalInformation.view model

        _ ->
            card []
