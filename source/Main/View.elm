module Main.View exposing (view)

import Html exposing (Html)
import Html.Attributes exposing (..)
import Html.Events exposing (onInput)
import Types.Model exposing (Model)
import Types.Stage exposing (Stage(..))
import Types.Message exposing (Message(..))
import Components.Basics exposing (card)
import View.Welcome as Welcome
import View.PersonalInformation as PersonalInformation
import View.FamilyHistory as FamilyHistory
import View.Medications as Medications
import View.Diseases as Diseases
import View.Allergies as Allergies
import View.Contract as Contract
import View.Complete as Complete


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
