module FamilyHistory.Update exposing (update)

import Types.Model exposing (Model)
import Types.Message exposing (Message(..))
import FamilyHistory.Message exposing (FamilyHistoryMessage(..))
import Set


update : FamilyHistoryMessage -> Model -> ( Model, Cmd Message )
update message model =
    case message of
        UpdateAddField field ->
            { model
                | familyHistoryField = field
            }
                ! []

        Add ->
            ( add model model, Cmd.none )

        Remove historyItem ->
            { model
                | familyHistory =
                    List.filter ((/=) historyItem) model.familyHistory
            }
                ! []


add : Model -> Model -> Model
add { familyHistory, familyHistoryField } model =
    if List.member familyHistoryField familyHistory then
        { model | familyHistoryField = "" }
    else
        { model
            | familyHistoryField = ""
            , familyHistory =
                List.append familyHistory [ familyHistoryField ]
        }
