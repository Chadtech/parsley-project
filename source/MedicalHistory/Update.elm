module MedicalHistory.Update exposing (update)

import Types.Model exposing (Model)
import Types.Message exposing (Message(..))
import MedicalHistory.Message exposing (MedicalHistoryMessage(..))
import Set


update : MedicalHistoryMessage -> Model -> ( Model, Cmd Message )
update message model =
    case message of
        AddFamilyHistory h ->
            { model
                | familyMedicalHistory =
                    Set.insert
                        h
                        model.familyMedicalHistory
            }
                ! []

        AddAllergy allergy ->
            { model
                | allergies = Set.insert allergy model.allergies
            }
                ! []

        AddDisease disease ->
            { model
                | diseases = Set.insert disease model.diseases
            }
                ! []

        AddMedication medication ->
            { model
                | medications = Set.insert medication model.medications
            }
                ! []

        RemoveFamilyHistory h ->
            { model
                | familyMedicalHistory =
                    Set.remove
                        h
                        model.familyMedicalHistory
            }
                ! []

        RemoveAllergy allergy ->
            { model
                | allergies = Set.remove allergy model.allergies
            }
                ! []

        RemoveDisease disease ->
            { model
                | diseases = Set.remove disease model.diseases
            }
                ! []

        RemoveMedication medication ->
            { model
                | medications = Set.remove medication model.medications
            }
                ! []
