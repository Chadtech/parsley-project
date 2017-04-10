module Main.Init exposing (model, cmd)

import Types.Model exposing (Model)
import Types.Stage exposing (Stage(..))
import Types.Message exposing (Message(..))
import UsStates exposing (Abbreviation(AL))
import Set


model : Model
model =
    { stage = Welcome
    , firstName = ""
    , lastName = ""
    , email = ""
    , addressLine0 = ""
    , addressLine1 = ""
    , city = ""
    , state = AL
    , stateDropped = False
    , zip = ""
    , familyHistory = []
    , allergies = []
    , medications = []
    , diseases = []
    , contractAccepted = False
    , familyHistoryField = ""
    , medicationsField = ""
    , diseasesField = ""
    , allergiesField = ""
    }


cmd : Cmd Message
cmd =
    Cmd.none
