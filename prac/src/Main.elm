module Main exposing (..)

import Html exposing (Html, text, div, program)
import Navigation exposing (Location)

import Messages exposing (Msg(..))
import Models exposing (Model, initialModel)
import Update exposing (update)
import View exposing (view)
import Routing exposing (Route)



---- MODEL ----


--init : ( Model, Cmd Msg )
--init =
--    ( initialModel, Cmd.none )

init : Location -> ( Model, Cmd Msg )
init location =
    let
        currentRoute = Routing.parseLocation location
    in
        ( initialModel currentRoute, Cmd.none )



---- UPDATE ----



---- VIEW ----



---- SUBSCRIPTIONS ----


subscriptions : Model -> Sub Msg
subscriptions model =
    Sub.none




---- PROGRAM ----


urlUpdate : Location -> Model -> (Model, Cmd Msg)
urlUpdate location model =
    let
        currentRoute = Routing.parseLocation location
    in
        ( { model | route = currentRoute }, Cmd.none )




main : Program Never Model Msg
main =
--    Html.program
    Navigation.program OnLocationChange
        { view = view
        , init = init
        , update = update
        --, subscriptions = always Sub.none
        , subscriptions = subscriptions
        }
