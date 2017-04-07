module PersonalInformation.Proceed exposing (permit)

import Types.Model exposing (Model)
import Types.Message exposing (Message(..))


permit : Model -> Maybe Message
permit model =
    if conditionsSatisfied model then
        Just Proceed
    else
        Nothing


conditionsSatisfied : Model -> Bool
conditionsSatisfied { name, email, address, birthPlace } =
    let
        ( line0, line1, line2, line3 ) =
            address
    in
        List.foldr (&&)
            True
            [ name /= ""
            , email /= ""
            , line0 /= ""
            , line1 /= ""
            , line2 /= ""
            , birthPlace /= ""
            ]
