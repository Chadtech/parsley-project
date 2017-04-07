module Main.Proceed exposing (to)

import Types.Message exposing (Message(..))
import Types.Model exposing (Model, Stage(..))


to : Model -> Stage
to { stage } =
    case stage of
        Welcome ->
            PersonalInformation

        PersonalInformation ->
            MedicalHistory

        _ ->
            Welcome
