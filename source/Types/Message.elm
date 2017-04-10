module Types.Message exposing (Message(..), Handler)

import Types.Stage exposing (Stage(..))
import Types.PersonalInformation exposing (PersonalInformationMessage(..))


type Message
    = SetStage Stage
    | PersonalInformationWrapper PersonalInformationMessage
    | Agree
    | AddListItem
    | RemoveListItem String
    | UpdateField String


type alias Handler a =
    a -> Message
