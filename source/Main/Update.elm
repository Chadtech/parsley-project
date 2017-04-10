module Main.Update exposing (update)

import Types.Model exposing (Model)
import Types.Message exposing (Message(..))
import Types.Stage exposing (Stage(..))
import Update.PersonalInformation as PersonalInformation
import Update.Log exposing (consoleLog)
import Update.Add as Add
import Update.Remove as Remove
import Update.Field as Field


update : Message -> Model -> ( Model, Cmd Message )
update message model =
    case message of
        SetStage stage ->
            { model
                | stage = stage
            }
                ! isComplete stage model

        PersonalInformationWrapper personalInformationMessage ->
            PersonalInformation.update personalInformationMessage model

        Agree ->
            { model
                | contractAccepted = not model.contractAccepted
            }
                ! []

        AddListItem ->
            ( Add.handle model, Cmd.none )

        RemoveListItem item ->
            ( Remove.handle item model, Cmd.none )

        UpdateField field ->
            ( Field.handle field model, Cmd.none )


isComplete : Stage -> Model -> List (Cmd Message)
isComplete stage model =
    if stage == Complete then
        [ consoleLog model ]
    else
        []
