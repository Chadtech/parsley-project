module Types.Message exposing (Message(..), Handler)

import Types.Stage exposing (Stage(..))
import PersonalInformation.Message exposing (PersonalInformationMessage(..))


type Message
    = SetStage Stage
    | PersonalInformationWrapper PersonalInformationMessage


type alias Handler a =
    a -> Message
