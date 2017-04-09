module Main.Init exposing (model, cmd)

import Types.Model exposing (Model)
import Types.Stage exposing (Stage(..))
import Types.Message exposing (Message(..))
import UsStates exposing (Abbreviation(AL))
import Set


model : Model
model =
    { stage = FamilyHistory
    , firstName = ""
    , lastName = ""
    , email = ""
    , addressLine0 = ""
    , addressLine1 = ""
    , city = ""
    , state = AL
    , stateDropped = False
    , zip = ""
    , familyMedicalHistory = Set.empty
    , allergies = Set.empty
    , medications = Set.empty
    , diseases = Set.empty
    , contractAccepted = False
    }


cmd : Cmd Message
cmd =
    Cmd.none
