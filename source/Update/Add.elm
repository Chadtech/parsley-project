module Main.Add exposing (handle)

import Types.Model exposing (Model)
import Types.Stage exposing (Stage(..))


handle : Model -> Model
handle ({ stage } as model) =
    case stage of
        Allergies ->
            if List.member model.allergiesField model.allergies then
                { model | allergiesField = "" }
            else
                { model
                    | allergiesField = ""
                    , allergies =
                        List.append
                            model.allergies
                            [ model.allergiesField ]
                }

        Diseases ->
            if List.member model.diseasesField model.diseases then
                { model | diseasesField = "" }
            else
                { model
                    | diseasesField = ""
                    , diseases =
                        List.append
                            model.diseases
                            [ model.diseasesField ]
                }

        Medications ->
            if List.member model.medicationsField model.medications then
                { model | medicationsField = "" }
            else
                { model
                    | medicationsField = ""
                    , medications =
                        List.append
                            model.medications
                            [ model.medicationsField ]
                }

        FamilyHistory ->
            if List.member model.familyHistoryField model.familyHistory then
                { model | familyHistoryField = "" }
            else
                { model
                    | familyHistoryField = ""
                    , familyHistory =
                        List.append
                            model.familyHistory
                            [ model.familyHistoryField ]
                }

        _ ->
            model
