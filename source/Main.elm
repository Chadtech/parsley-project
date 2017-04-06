module Main exposing (..)

import Html
import Main.Init as Init
import Main.View exposing (view)
import Main.Update exposing (update)


main =
    Html.program
        { init = ( Init.model, Init.cmd )
        , view = view
        , update = update
        , subscriptions = always Sub.none
        }
