module View.Welcome exposing (view)

import Html exposing (Html, div)
import Html.Attributes exposing (class)
import Types.Message exposing (Message(..))
import Types.Stage exposing (Stage(..))
import Components.Basics exposing (card, words)
import Components.BottomButtons as Buttons


view : Html Message
view =
    card
        [ div
            [ class "welcome-container" ]
            [ words
                "big vector center"
                "New Patient Form"
            , words
                "center"
                "Please complete all fields, and press 'Next' to proceed."
            ]
        , Buttons.view Nothing (Just nextPage)
        ]


nextPage : Message
nextPage =
    SetStage PersonalInformation
