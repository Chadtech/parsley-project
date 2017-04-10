module Update.Log exposing (consoleLog)

import Types.Model exposing (Model)
import Types.Message exposing (Message(..))
import Json.Encode as Json
import Ports


consoleLog : Model -> Cmd Message
consoleLog model =
    [ ( "first name", Json.string model.firstName )
    , ( "last name", Json.string model.lastName )
    , ( "email", Json.string model.email )
    , ( "address line 1", Json.string model.addressLine0 )
    , ( "address line 2", Json.string model.addressLine1 )
    , ( "city", Json.string model.city )
    , ( "state", Json.string (toString model.state) )
    , ( "zip", Json.string model.zip )
    , model.familyHistory
        |> List.map Json.string
        |> Json.list
        |> (,) "family history"
    , model.medications
        |> List.map Json.string
        |> Json.list
        |> (,) "medications"
    , model.diseases
        |> List.map Json.string
        |> Json.list
        |> (,) "diseases"
    , model.allergies
        |> List.map Json.string
        |> Json.list
        |> (,) "allergies"
    ]
        |> Json.object
        |> Json.encode 0
        |> Ports.log
