module Components.List exposing (view)

import Html exposing (Html)
import Types.Message exposing (Message)
import Components.List.Basics as Basics


view : Html Message
view =
    Basics.container [ Basics.body [] ]
