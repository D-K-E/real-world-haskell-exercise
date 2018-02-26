-- Library to interact with io:
-- Gateway to outside world

module IOGate where

import System.Environment (getArgs)

interactWith function inputFile outputFile = do { -- Regroups Io statements
  input <- readFile inputFile -- Assign the content of inputFile to input
  ;writeFile outputFile (function input) -- Apply the function to input
  -- Then apply writeFile to outputFile and the result of the previous
  -- application
                                                }
main = mainWith myFunction
  where mainWith function = do {
          args <- getArgs
          ;case args of -- ; is for multiline do statements
             [input, output] -> interactWith function input output
             _ -> putStrLn "error: exactly two arguments are needed"
                               }
        myFunction = id
