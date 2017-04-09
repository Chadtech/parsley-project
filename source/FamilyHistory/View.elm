module FamilyHistory.View exposing (view)

import Html exposing (Html)
import Types.Model exposing (Model)
import Types.Message exposing (Message(..))
import Types.Stage exposing (Stage(..))
import Components.Basics exposing (card)
import Components.BottomButtons as Buttons


view : Model -> Html Message
view model =
    card
        [ Buttons.view (Just previousStage) Nothing ]


previousStage : Message
previousStage =
    SetStage PersonalInformation
