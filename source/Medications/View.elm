module Medications.View exposing (view)

import Html exposing (Html)
import Types.Model exposing (Model)
import Types.Message exposing (Message(..))
import Types.Stage exposing (Stage(..))
import Components.Basics exposing (card, words)
import Components.BottomButtons as Buttons
import Components.List as List
import Medications.Message exposing (MedicationsMessage(..))


view : Model -> Html Message
view model =
    card
        [ words "" "Medications"
        , List.view
            "Type in the medications you take on a regular basis."
            "\"aspirin\", \"lipitor\", \"prozac\", etc"
            model.medicationsField
            (MedicationsWrapper << UpdateAddField)
            (MedicationsWrapper Add)
            (MedicationsWrapper << Remove)
            model.medications
        , Buttons.view (Just previousStage) (Just nextStage)
        ]


nextStage : Message
nextStage =
    SetStage Diseases


previousStage : Message
previousStage =
    SetStage FamilyHistory
