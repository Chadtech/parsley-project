module Medications.Message exposing (MedicationsMessage(..))


type MedicationsMessage
    = UpdateAddField String
    | Add
    | Remove String
