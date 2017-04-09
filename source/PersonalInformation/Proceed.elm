module PersonalInformation.Proceed exposing (permit)

import Types.Model exposing (Model)
import Types.Stage exposing (Stage(..))
import Types.Message exposing (Message(..))
import Debug exposing (log)


permit : Model -> Maybe Message
permit model =
    if conditionsSatisfied model then
        Just (SetStage FamilyHistory)
    else
        Nothing


conditionsSatisfied : Model -> Bool
conditionsSatisfied { firstName, lastName, email, addressLine0, addressLine1, city, state, zip } =
    [ firstName /= ""
    , lastName /= ""
    , email /= ""
    , addressLine0 /= ""
    , city /= ""
    , zip /= ""
    ]
        |> List.foldr (&&) True
