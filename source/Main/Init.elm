module Main.Init exposing (model, cmd)

import Types.Model exposing (Model, Stage(..))
import Types.Message exposing (Message(..))
import Set


model : Model
model =
    { stage = Welcome
    , name = ""
    , email = ""
    , address = ( "", "", "", "" )
    , birthPlace = ""
    , familyMedicalHistory = Set.empty
    , allergies = Set.empty
    , medications = Set.empty
    , diseases = Set.empty
    , contractAccepted = False
    }


cmd : Cmd Message
cmd =
    Cmd.none
