module Types.Message exposing (Message(..), Handler)

import Types.Model exposing (Stage(..))
import PersonalInformation.Message exposing (PersonalInformationMessage(..))


type Message
    = SetStage Stage
    | PersonalInformationWrapper PersonalInformationMessage


type alias Handler a =
    a -> Message
