module Allergies.View exposing (view)

import Html exposing (Html)
import Types.Model exposing (Model)
import Types.Message exposing (Message(..))
import Types.Stage exposing (Stage(..))
import Components.Basics exposing (card, words)
import Components.BottomButtons as Buttons
import Components.List as List
import Allergies.Message exposing (AllergiesMessage(..))


view : Model -> Html Message
view model =
    card
        [ words "" "Allergies"
        , List.view
            "Type in allergies you have."
            "\"seclor\", \"red wine\", \"peanuts\", etc"
            model.allergiesField
            (AllergiesWrapper << UpdateAddField)
            (AllergiesWrapper Add)
            (AllergiesWrapper << Remove)
            model.allergies
        , Buttons.view (Just previousStage) (Just nextStage)
        ]


nextStage : Message
nextStage =
    SetStage Contract


previousStage : Message
previousStage =
    SetStage Diseases
