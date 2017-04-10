module Main.Update exposing (update)

import Types.Model exposing (Model)
import Types.Message exposing (Message(..))
import PersonalInformation.Update as PersonalInformation
import FamilyHistory.Update as FamilyHistory
import Medications.Update as Medications
import Diseases.Update as Diseases
import Allergies.Update as Allergies


update : Message -> Model -> ( Model, Cmd Message )
update message model =
    case message of
        SetStage stage ->
            { model
                | stage = stage
            }
                ! []

        PersonalInformationWrapper personalInformationMessage ->
            PersonalInformation.update personalInformationMessage model

        FamilyHistoryWrapper familyHistoryMessage ->
            FamilyHistory.update familyHistoryMessage model

        MedicationsWrapper medicationsMessage ->
            Medications.update medicationsMessage model

        DiseasesWrapper diseaseMessage ->
            Diseases.update diseaseMessage model

        AllergiesWrapper allergiesMessage ->
            Allergies.update allergiesMessage model
