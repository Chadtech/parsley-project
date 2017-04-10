module View.Allergies exposing (view)

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
        [ words "" "Allergies"
        , List.view
            "Type in allergies you have."
            "\"seclor\", \"red wine\", \"peanuts\", etc"
            model.allergiesField
            model.allergies
        , Buttons.view (Just previousStage) (Just nextStage)
        ]


nextStage : Message
nextStage =
    SetStage Contract


previousStage : Message
previousStage =
    SetStage Diseases
