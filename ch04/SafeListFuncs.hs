-- Safe/total equivalents of list functions in haskell

-- Safe head

safeHead :: [a] -> a

safeHead [] = []

safeHead [a] =
  take 1 [a]

-- safe last

safeLast :: [a] -> a

safeLast [] = []

safeLast [a] =
  let reversedList = reverse [a]
  take 1 reversedList

-- safe init


