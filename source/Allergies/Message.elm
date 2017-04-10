module Allergies.Message exposing (AllergiesMessage(..))


type AllergiesMessage
    = UpdateAddField String
    | Add
    | Remove String
