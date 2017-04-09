module Types.Model exposing (Model, Stage(..))

import Set exposing (Set)
import UsStates


type alias Model =
    { stage : Stage
    , firstName : String
    , lastName : String
    , email : String
    , addressLine0 : String
    , addressLine1 : String
    , city : String
    , state : UsStates.Abbreviation
    , stateDropped : Bool
    , zip : String
    , familyMedicalHistory : Set String
    , allergies : Set String
    , medications : Set String
    , diseases : Set String
    , contractAccepted : Bool
    }


type Stage
    = Welcome
    | PersonalInformation
    | FamilyHistory
    | Medications
    | Diseases
    | Allergies
    | Contract
    | Complete
