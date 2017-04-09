module MedicalHistory.View exposing (view)

import Html exposing (Html)
import Types.Model exposing (Model)
import Types.Message exposing (Message(..))
import Components.Basics exposing (card, words)
import Components.BottomButtons as Buttons
import Components.List as List


view : Model -> Html Message
view model =
    card
        [ words "" "Medical History"
          --, List.view
          --, List.view
          --, List.view
          --, List.view
        , Buttons.view (Just Digress) Nothing
        ]
