module Update.Remove exposing (handle)

import Types.Model exposing (Model)
import Types.Stage exposing (Stage(..))


handle : String -> Model -> Model
handle listItem ({ stage } as model) =
    let
        filter =
            List.filter <| (/=) listItem
    in
        case stage of
            Allergies ->
                { model
                    | allergies =
                        filter model.allergies
                }

            Diseases ->
                { model
                    | diseases =
                        filter model.diseases
                }

            Medications ->
                { model
                    | medications =
                        filter model.medications
                }

            FamilyHistory ->
                { model
                    | familyHistory =
                        filter model.familyHistory
                }

            _ ->
                model
