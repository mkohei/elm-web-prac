module View exposing (..)

import Html exposing (Html, div, text, program)
import Messages exposing (Msg(..))
import Models exposing (Model)
--import View exposing (view)
import Players.List
import Players.Edit
import Players.Models exposing (PlayerId)
import Routing exposing (Route(..))



view : Model -> Html Msg
view model =
    div []
        [ page model 
        , text (toString model.route)
        ]



page : Model -> Html Msg
page model = 
    case model.route of
        PlayersRoute ->
            Html.map PlayersMsg (Players.List.view model.players)

        PlayerRoute id ->
            playerEditPage model id

        NotFoundRoute ->
            notFoundView



playerEditPage : Model -> PlayerId -> Html Msg
playerEditPage model playerId =
    let
        maybePlayer =
            model.players
                |> List.filter (\player -> player.id == playerId)
                |> List.head
    in
        case maybePlayer of
            Just player ->
                Html.map PlayersMsg (Players.Edit.view player)

            Nothing ->
                notFoundView




notFoundView : Html Msg
notFoundView =
    div []
        [ text "Not found" ]