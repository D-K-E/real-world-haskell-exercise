-- file: ch02/myDrop.hs
-- Every branch of the if condition should have the same type
myDrop n_singular n_plural = if n_singular <= 0 || null n_plural -- if n is smaller or equal 0 or null
              then n_plural -- if the condition above is true then xs
              else myDrop (n_singular - 1) (tail n_plural)
