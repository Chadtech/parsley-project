module Types.Model exposing (Model)

import Types.Stage exposing (Stage(..))
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
    , familyHistory : List String
    , allergies : List String
    , medications : List String
    , diseases : List String
    , contractAccepted : Bool
    , familyHistoryField : String
    , medicationsField : String
    , diseasesField : String
    , allergiesField : String
    }
