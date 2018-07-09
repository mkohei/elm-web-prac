module Players.List exposing (..)

import Html exposing (..)
--import Html.Attributes exposing (class)
import Players.Messages exposing (..)
import Players.Models exposing (Player)



view : List Player -> Html Msg
view players = 
    div []
        [ list players
        ]


    
list : List Player -> Html Msg
list players =
    div []
        [ table []
            [ thead []
                [ tr []
                    [ th [] [ text "Id" ]
                    , th [] [text "Name"]
                    , th [] [text "Level"]
                    , th [] [text "Actions"]
                    ]
                ]
            , tbody [] (List.map playerRow players)
            ]
        ]



playerRow : Player -> Html Msg
playerRow player =
    tr []
        [ td [] [ text player.id ]
        , td [] [ text player.name ]
        , td [] [ text (toString player.level) ]
        , td [] []
        ]




