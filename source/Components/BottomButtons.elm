module Components.BottomButtons exposing (view)

import Html exposing (Html, div)
import Html.Attributes exposing (class)
import Types.Message exposing (Message(..))
import Components.Basics exposing (button)


view : Maybe Message -> Maybe Message -> Html Message
view backHandler nextHandler =
    div
        [ class "buttons-container" ]
        [ button nextHandler "Next" "Next"
        , button backHandler "Back" "Back"
        ]
