-- asInt function with fold
import Data.Char (digitToInt)


type ErrorMessage = String

asInt_fold :: String -> Either ErrorMessage Integer


-- asInt function
{-

loop :: Int -> String -> Int

asInt aList = loop 0 aList

loop acc [] = acc -- Acc is for accumulator, usually the icremented in c like
languages

loop acc (element:aList) = let acc' = acc * 10 + digitToInt element
                           in loop acc' aList

The first section of the function deals with the current element in the loop
if it is the first element it would give the element in integer form.
If it is the second element, then it would multiply the accumulator by ten,
since the string is a list of chars, and the index of the list of chars
amounts to order of digits in the number

-}

asInt_fold aListOfChars = foldl stepConvert 0 aListOfChars
  where stepConvert acc element = acc * 10 + digitToInt element
