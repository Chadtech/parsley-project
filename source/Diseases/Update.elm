module Diseases.Update exposing (update)

import Types.Model exposing (Model)
import Types.Message exposing (Message(..))
import Diseases.Message exposing (DiseasesMessage(..))
import Set


update : DiseasesMessage -> Model -> ( Model, Cmd Message )
update message model =
    case message of
        UpdateAddField field ->
            { model
                | diseasesField = field
            }
                ! []

        Add ->
            ( add model model, Cmd.none )

        Remove disease ->
            { model
                | diseases =
                    List.filter ((/=) disease) model.diseases
            }
                ! []


add : Model -> Model -> Model
add { diseases, diseasesField } model =
    if List.member diseasesField diseases then
        { model | diseasesField = "" }
    else
        { model
            | diseasesField = ""
            , diseases =
                List.append diseases [ diseasesField ]
        }
