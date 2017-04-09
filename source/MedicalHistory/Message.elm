module MedicalHistory.Message exposing (MedicalHistoryMessage(..))


type MedicalHistoryMessage
    = AddFamilyHistory String
    | AddAllergy String
    | AddDisease String
    | AddMedication String
    | RemoveFamilyHistory String
    | RemoveAllergy String
    | RemoveDisease String
    | RemoveMedication String
