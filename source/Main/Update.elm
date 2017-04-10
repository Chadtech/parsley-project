module Main.Update exposing (update)

import Types.Model exposing (Model)
import Types.Message exposing (Message(..))
import Types.Stage exposing (Stage(..))
import PersonalInformation.Update as PersonalInformation
import FamilyHistory.Update as FamilyHistory
import Medications.Update as Medications
import Diseases.Update as Diseases
import Allergies.Update as Allergies
import Main.Log exposing (consoleLog)


update : Message -> Model -> ( Model, Cmd Message )
update message model =
    case message of
        SetStage stage ->
            { model
                | stage = stage
            }
                ! (isComplete stage model)

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

        Agree ->
            { model
                | contractAccepted = not model.contractAccepted
            }
                ! []


isComplete : Stage -> Model -> List (Cmd Message)
isComplete stage model =
    if stage == Complete then
        [ consoleLog model ]
    else
        []
