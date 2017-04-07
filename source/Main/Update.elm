module Main.Update exposing (update)

import Types.Model exposing (Model)
import Types.Message exposing (Message(..))
import Main.Proceed as Proceed


update : Message -> Model -> ( Model, Cmd Message )
update message model =
    case message of
        Proceed ->
            { model
                | stage = Proceed.to model
            }
                ! []

        UpdateNameField name ->
            { model
                | name = name
            }
                ! []
