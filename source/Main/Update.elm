module Main.Update exposing (update)

import Types.Model exposing (Model)
import Types.Message exposing (Message(..))
import PersonalInformation.Update as PersonalInformation


update : Message -> Model -> ( Model, Cmd Message )
update message model =
    case message of
        SetStage stage ->
            { model
                | stage = stage
            }
                ! []

        PersonalInformationWrapper personalInformationMessage ->
            PersonalInformation.update personalInformationMessage model
