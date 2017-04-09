module PersonalInformation.Message exposing (PersonalInformationMessage(..))

import UsStates


type PersonalInformationMessage
    = UpdateFirstName String
    | UpdateLastName String
    | UpdateEmail String
    | UpdateFirstAddressLine String
    | UpdateSecondAddressLine String
    | UpdateCity String
    | DropStateDropDown
    | SelectState UsStates.Abbreviation
    | UpdateZip String
