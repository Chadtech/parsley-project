module FamilyHistory.Message exposing (FamilyHistoryMessage(..))


type FamilyHistoryMessage
    = UpdateAddField String
    | Add
    | Remove String
