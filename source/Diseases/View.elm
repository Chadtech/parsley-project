module Diseases.View exposing (view)

import Html exposing (Html)
import Types.Model exposing (Model)
import Types.Message exposing (Message(..))
import Types.Stage exposing (Stage(..))
import Components.Basics exposing (card, words)
import Components.BottomButtons as Buttons
import Components.List as List
import Diseases.Message exposing (DiseasesMessage(..))


view : Model -> Html Message
view model =
    card
        [ words "" "Medical Conditions"
        , List.view
            "Type in significant medical conditions that you presently have, or had at some point in your life."
            "\"diabetes\", \"heart diseases\", \"alzheimers\", etc"
            model.diseasesField
            (DiseasesWrapper << UpdateAddField)
            (DiseasesWrapper Add)
            (DiseasesWrapper << Remove)
            model.diseases
        , Buttons.view (Just previousStage) (Just nextStage)
        ]


nextStage : Message
nextStage =
    SetStage Allergies


previousStage : Message
previousStage =
    SetStage Medications
