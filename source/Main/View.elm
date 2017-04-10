module Main.View exposing (view)

import Html exposing (Html)
import Html.Attributes exposing (..)
import Html.Events exposing (onInput)
import Types.Model exposing (Model)
import Types.Stage exposing (Stage(..))
import Types.Message exposing (Message(..))
import Components.Basics exposing (card)
import Welcome.View as Welcome
import PersonalInformation.View as PersonalInformation
import FamilyHistory.View as FamilyHistory
import Medications.View as Medications
import Diseases.View as Diseases
import Allergies.View as Allergies
import Contract.View as Contract
import Complete.View as Complete


view : Model -> Html Message
view model =
    case model.stage of
        Welcome ->
            Welcome.view

        PersonalInformation ->
            PersonalInformation.view model

        FamilyHistory ->
            FamilyHistory.view model

        Medications ->
            Medications.view model

        Diseases ->
            Diseases.view model

        Allergies ->
            Allergies.view model

        Contract ->
            Contract.view model

        Complete ->
            Complete.view
