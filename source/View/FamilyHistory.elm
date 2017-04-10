module View.FamilyHistory exposing (view)

import Html exposing (Html)
import Types.Model exposing (Model)
import Types.Message exposing (Message(..))
import Types.Stage exposing (Stage(..))
import Components.Basics exposing (card, words)
import Components.BottomButtons as Buttons
import Components.List as List


view : Model -> Html Message
view model =
    card
        [ words "" "Family History"
        , List.view
            "Type in conditions in your family's medical history, such as conditions your parents or grand parents had."
            "\"diabetes\", \"heart diseases\", \"alzheimers\", etc"
            model.familyHistoryField
            model.familyHistory
        , Buttons.view (Just previousStage) (Just nextStage)
        ]


nextStage : Message
nextStage =
    SetStage Medications


previousStage : Message
previousStage =
    SetStage PersonalInformation
