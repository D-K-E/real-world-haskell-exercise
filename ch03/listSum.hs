-- Here is an example of pattern matching

sumList (x_sing:(x_plu:[])) = x_sing + sumList x_plu
sumList [] = 0

-- The idea is haskell stocks functions as a series of equations
-- Pattern matching follows the order, that is first we try the top
-- pattern then the one below it, then the one below, etc.
