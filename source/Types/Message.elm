module Types.Message exposing (Message(..), Handler)


type Message
    = NoOp


type alias Handler a =
    a -> Message
