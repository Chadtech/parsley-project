module Contract.View exposing (view)

import Html exposing (Html)
import Types.Model exposing (Model)
import Types.Message exposing (Message(..))
import Types.Stage exposing (Stage(..))
import Components.Basics exposing (card, words)
import Components.BottomButtons as Buttons
import Contract.Components.Basics as Components


view : Model -> Html Message
view model =
    card
        [ words "" "Release of information"
        , Components.contractText
        , Buttons.view (Just previousStage) (nextStage model)
        ]


nextStage : Model -> Maybe Message
nextStage { contractAccepted } =
    if contractAccepted then
        Just (SetStage Complete)
    else
        Nothing


previousStage : Message
previousStage =
    SetStage Allergies
