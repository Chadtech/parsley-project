module Types.Message exposing (Message(..), Handler)


type Message
    = Proceed
    | UpdateNameField String


type alias Handler a =
    a -> Message
