module Allergies.Update exposing (update)

import Types.Model exposing (Model)
import Types.Message exposing (Message(..))
import Allergies.Message exposing (AllergiesMessage(..))
import Set


update : AllergiesMessage -> Model -> ( Model, Cmd Message )
update message model =
    case message of
        UpdateAddField field ->
            { model
                | allergiesField = field
            }
                ! []

        Add ->
            ( add model model, Cmd.none )

        Remove disease ->
            { model
                | allergies =
                    List.filter ((/=) disease) model.allergies
            }
                ! []


add : Model -> Model -> Model
add { allergies, allergiesField } model =
    if List.member allergiesField allergies then
        { model | allergiesField = "" }
    else
        { model
            | allergiesField = ""
            , allergies =
                List.append allergies [ allergiesField ]
        }
