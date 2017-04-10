module View.PersonalInformation exposing (view)

import Html exposing (Html)
import Types.Model exposing (Model)
import Types.Stage exposing (Stage(..))
import Types.Message exposing (Message(..))
import Components.Basics exposing (card, words)
import Components.BottomButtons as Buttons
import View.PersonalInformation.Fields as Fields
import View.PersonalInformation.Proceed as Proceed
import Components.DropDown as DropDown
import UsStates


view : Model -> Html Message
view model =
    card
        [ words "" "Personal Information"
        , Fields.firstName model
        , Fields.lastName model
        , Fields.email model
        , Fields.addressLine0 model
        , Fields.addressLine1 model
        , Fields.city model
        , Fields.state model
        , Fields.zip model
        , Buttons.view (Just previousStage) (Proceed.permit model)
        ]


previousStage : Message
previousStage =
    SetStage Welcome
