module View.PersonalInformation.Fields exposing (..)

import Html exposing (Html)
import Types.Model exposing (Model)
import Types.Message exposing (Message(..))
import Components.Field as Field
import Types.PersonalInformation exposing (PersonalInformationMessage(..))
import UsStates
import UsStates exposing (Abbreviation(AL))
import Components.DropDown as DropDown


zip : Model -> Html Message
zip { zip } =
    Field.view ""
        "zip code"
        zip
        "\"85044\""
        (PersonalInformationWrapper << UpdateZip)


state : Model -> Html Message
state { stateDropped, state } =
    DropDown.view
        stateDropped
        (PersonalInformationWrapper DropStateDropDown)
        (PersonalInformationWrapper << SelectState)
        state
        UsStates.all


city : Model -> Html Message
city { city } =
    Field.view ""
        "city"
        city
        "\"Phoenix\""
        (PersonalInformationWrapper << UpdateCity)


addressLine0 : Model -> Html Message
addressLine0 { addressLine0 } =
    Field.view ""
        "address Line 1"
        addressLine0
        "\"123 Chester Avenue\""
        (PersonalInformationWrapper << UpdateFirstAddressLine)


addressLine1 : Model -> Html Message
addressLine1 { addressLine1 } =
    Field.view ""
        "address Line 2"
        addressLine1
        "apartment number, floor, suite, etc"
        (PersonalInformationWrapper << UpdateSecondAddressLine)


firstName : Model -> Html Message
firstName { firstName } =
    Field.view ""
        "first name"
        firstName
        "\"John\""
        (PersonalInformationWrapper << UpdateFirstName)


lastName : Model -> Html Message
lastName { lastName } =
    Field.view ""
        "last name"
        lastName
        "\"Smith\""
        (PersonalInformationWrapper << UpdateLastName)


email : Model -> Html Message
email { email } =
    Field.view ""
        "email"
        email
        "\"johnsmith@gmail.com\""
        (PersonalInformationWrapper << UpdateEmail)
