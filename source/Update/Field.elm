module Update.Field exposing (handle)

import Types.Model exposing (Model)
import Types.Stage exposing (Stage(..))


handle : String -> Model -> Model
handle field ({ stage } as model) =
    case stage of
        Allergies ->
            { model
                | allergiesField = field
            }

        Diseases ->
            { model
                | diseasesField = field
            }

        Medications ->
            { model
                | medicationsField = field
            }

        FamilyHistory ->
            { model
                | familyHistoryField = field
            }

        _ ->
            model
