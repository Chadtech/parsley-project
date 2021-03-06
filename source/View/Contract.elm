module View.Contract exposing (view)

import Html exposing (Html)
import Types.Model exposing (Model)
import Types.Message exposing (Message(..))
import Types.Stage exposing (Stage(..))
import Components.Basics exposing (card, words)
import Components.BottomButtons as Buttons
import View.Contract.Components as Components


view : Model -> Html Message
view model =
    card
        [ words "" "Release of information"
        , Components.contractText
        , Components.agree model
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
