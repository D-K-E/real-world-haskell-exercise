-- Program to split lines in haskell from RealWorld Haskell

module SplitLines where

splitLines :: String -> [String]

splitLines "" = []
splitLines stringInput =
  let (prefix, suffix) = break isLineTerminator stringInput
  in prefix : case suffix of
                ('\r':'\n':restOfString) -> splitLines restOfString
                ('\r':restOfString) -> splitLines restOfString
                ('\n':restOfString) -> splitLines restOfString
                _ -> []

isLineTerminator charInput = charInput == '\r' || charInput == '\n'

{-
splitlines takes a string and returns a list of strings

we define two patterns for the function:

If we provide an empty string, it gives out an empty list.
We could have written splitLines [] = [] as well, since String
is essentially a list of characters

break is function that splits a list into two parts.
It takes two arguments, a function which returns a boolean value
on the location that we want to split the list, and a list.
It outputs a prefix and a suffix. That is two sublists from the
main list.

In the list that is presented by the break, we want to continue
the operation on the suffix element of the output.

the line in prefix : case suffix of

says that in the list that is going to be created by prepending
prefix to the beginning of the list and appending the suffix at
the end of the list, the suffix is determined by the following cases

The enumerated cases are simply the cases of possible suffixes,
and this is where the recursion occurs

So a string like "Hello people!\nMyname is FooBar!\nNicetomeet you"

decomposes as the following in the first pass:

splitLines "Hello people!\nMyname is FooBar!\nNicetomeet you"=
  let (Hello people!, \nMyname is FooBar!\nNicetomeet you") = break isLineTerminator stringInput
  in prefix : case suffix of
                ('\r':'\n':restOfString) -> splitLines restOfString
                ('\r':restOfString) -> splitLines restOfString
                ('\n':Myname is FooBar!\nNicetomeet you") -> splitLines Myname is FooBar!\nNicetomeet you
                _ -> []

isLineTerminator charInput = charInput == '\r' || charInput == '\n'

isLineTerminator returns simply a boolean

-}
