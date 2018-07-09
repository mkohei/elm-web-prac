module Players.Edit exposing (..)

import Html exposing (..)
import Html.Attributes exposing (class, value, href)
import Players.Messages exposing (..)
import Players.Models exposing (..)



view : Player -> Html Msg
view model =
    div []
        [ nav model
        , form model
        ]



nav : Player -> Html Msg
nav model =
    div [] []



form : Player -> Html Msg
form player =
    div []
        [ h1 [] [text player.name]
        , formLevel player
        ]



formLevel : Player -> Html Msg
formLevel player =
    div []
        [ div [] [ text "Level" ]
        , div []
            [ span [] [ text (toString player.level) ]
            , btnLevelDecrease player
            , btnLevelIncrease player
            ]
        ]



btnLevelDecrease : Player -> Html Msg
btnLevelDecrease player =
    a []
        []



btnLevelIncrease : Player -> Html Msg
btnLevelIncrease player = 
    a []
        []