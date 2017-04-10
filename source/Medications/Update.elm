module Medications.Update exposing (update)

import Types.Model exposing (Model)
import Types.Message exposing (Message(..))
import Medications.Message exposing (MedicationsMessage(..))
import Set


update : MedicationsMessage -> Model -> ( Model, Cmd Message )
update message model =
    case message of
        UpdateAddField field ->
            { model
                | medicationsField = field
            }
                ! []

        Add ->
            ( add model model, Cmd.none )

        Remove historyItem ->
            { model
                | medications =
                    List.filter ((/=) historyItem) model.medications
            }
                ! []


add : Model -> Model -> Model
add { medications, medicationsField } model =
    if List.member medicationsField medications then
        { model | medicationsField = "" }
    else
        { model
            | medicationsField = ""
            , medications =
                List.append medications [ medicationsField ]
        }
