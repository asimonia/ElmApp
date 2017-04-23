module App exposing (..)

import Html exposing (Html, div, text, program)



-- MODEL

type alias Model =
    String

-- provides the initial input for the application
-- Html.program expects a tuple with (model, command)
init : ( Model, Cmd Msg )
init =
    ( "Hello", Cmd.none )


-- MESSAGES
-- are things that happen in our applications that our component
-- responds to.  In this case, the application doesn't do anything,
-- so we only have a message called NoOp

type Msg
    = NoOp


-- VIEW
-- The functioon view renders an Html element using our application model.
-- This means that this Html element would produce messages tagged with Msg.

view : Model -> Html Msg
view model =
    div []
        [ text model ]


-- UPDATE
-- This function will be called by Html.program each time a
-- message is received.  This update function responds to messages
-- updating the model and returning commands as needed.
-- In this example, we only respond to NoOp and return the unchanged
-- model and Cmd.none (meaning no command to perform)

update : Msg -> Model -> ( Model, Cmd Msg )
update msg model =
    case msg of
        NoOp ->
            ( model, Cmd.none )

-- SUBCRIPTIONS
-- We use subscriptions to listen for external input to our application.
-- Some examples of subscriptions: mouse movement, keyboard events, browser changes
-- In this case, we are not interested in any external input so we use Sub.none

subscriptions : Model -> Sub Msg
subscriptions model =
    Sub.none


-- MAIN
-- Wires everything together and returns and html element that we can
-- render in the page. program takes our init, view, update and subscriptions.

main : Program Never Model Msg
main =
    program
        { init = init
        , view = view
        , update = update
        , subscriptions = subscriptions
        }