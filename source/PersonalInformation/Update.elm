module PersonalInformation.Update exposing (update)

import Types.Model exposing (Model)
import Types.Message exposing (Message(..))
import PersonalInformation.Message exposing (PersonalInformationMessage(..))


update : PersonalInformationMessage -> Model -> ( Model, Cmd Message )
update message model =
    case message of
        UpdateFirstName name ->
            { model
                | firstName = name
            }
                ! []

        UpdateLastName name ->
            { model
                | lastName = name
            }
                ! []

        UpdateEmail email ->
            { model
                | email = email
            }
                ! []

        UpdateFirstAddressLine line ->
            { model
                | addressLine0 = line
            }
                ! []

        UpdateSecondAddressLine line ->
            { model
                | addressLine1 = line
            }
                ! []

        UpdateCity city ->
            { model
                | city = city
            }
                ! []

        DropStateDropDown ->
            { model
                | stateDropped = not model.stateDropped
            }
                ! []

        SelectState state ->
            { model
                | state = state
                , stateDropped = False
            }
                ! []

        UpdateZip zip ->
            { model
                | zip = zip
            }
                ! []
