-- Safe/total equivalents of list functions in haskell

-- Safe head

safeHead :: [a] -> a

safeHead [a] = if null [a]
               then []
               else take 1 []

safeHead [a] =
  take 1 [a]

-- safe last

safeLast :: [a] -> a

safeLast [a] = if null [a]
               then []
               else take 1 (reverse [a])

-- safe init

safeInit :: [a] -> [a]

safeInit [a] = if null [a]
               then []
               else init [a]

-- safe last

safeTail :: [a] -> [a]

safeTail [a] = if null [a]
               then []
               else tail [a]

