module PersonalInformation.View exposing (view)

import Html exposing (Html, div)
import Html.Attributes exposing (class)
import Types.Model exposing (Model)
import Types.Message exposing (Message(..))
import Components.Basics exposing (card, words, field)
import Components.BottomButtons as Buttons
import PersonalInformation.Proceed as Proceed


view : Model -> Html Message
view model =
    card
        [ field
            UpdateNameField
            "your first and last name"
            model.name
        , Buttons.view Nothing (Proceed.permit model)
        ]
