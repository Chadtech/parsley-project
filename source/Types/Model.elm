module Types.Model exposing (Model, Stage(..))

import Set exposing (Set)


type alias Model =
    { stage : Stage
    , name : String
    , email : String
    , address : ( String, String, String, String )
    , birthPlace : String
    , familyMedicalHistory : Set String
    , allergies : Set String
    , medications : Set String
    , diseases : Set String
    , contractAccepted : Bool
    }


type Stage
    = Welcome
    | PersonalInformation
    | MedicalHistory
    | Contract
    | Complete
