module Diseases.Message exposing (DiseasesMessage(..))


type DiseasesMessage
    = UpdateAddField String
    | Add
    | Remove String
