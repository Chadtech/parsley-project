module Types.Message exposing (Message(..), Handler)

import Types.Stage exposing (Stage(..))
import PersonalInformation.Message exposing (PersonalInformationMessage(..))
import FamilyHistory.Message exposing (FamilyHistoryMessage(..))
import Medications.Message exposing (MedicationsMessage(..))
import Diseases.Message exposing (DiseasesMessage(..))
import Allergies.Message exposing (AllergiesMessage(..))


type Message
    = SetStage Stage
    | PersonalInformationWrapper PersonalInformationMessage
    | FamilyHistoryWrapper FamilyHistoryMessage
    | MedicationsWrapper MedicationsMessage
    | DiseasesWrapper DiseasesMessage
    | AllergiesWrapper AllergiesMessage
    | Agree


type alias Handler a =
    a -> Message
