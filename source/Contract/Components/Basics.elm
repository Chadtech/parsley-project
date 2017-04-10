module Contract.Components.Basics exposing (..)

import Html exposing (Html, node)
import Types.Message exposing (Message(..))
import Components.Basics exposing (words)


contractText : Html Message
contractText =
    " lpturi sint occaecati cupiditate non provident, similique sunt in culpa qui officia deserunt mollitia animi, id est laborum et dolorum fuga. Et harum quidem rerum facilis est et expedita distinctio. Nam libero tempore, cum soluta nobis est eligendi optio cumque nihil impedit quo minus id quod maxime placeat facere possimus, omnis voluptas assumenda est, omnis dolor repellendus. Temporibus autem quibusdam et aut officiis debitis aut rerum necessitatibus saepe eveniet ut et voluptates repudiandae sint et molestiae non recusandae. Itaque earum rerum hic tene "
        |> String.repeat 100
        |> words ""
        |> List.singleton
        |> node "contract-text" []