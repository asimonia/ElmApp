--Every module in Elm must start with a module declaration, 
--in this case the module name is called Hello

--The exposing (..) part of the declaration specifies what function and types this module 
--exposes to the other modules importing this. In this case we expose everything (..).
module Hello exposing (..)

--We import the text function from the Html module
import Html exposing (text)


--Main is a function that returns an element to draw into the page.
main =
    text "Hello"