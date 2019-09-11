module DoubleFilter where

filterDisj :: (a -> Bool) -> (a -> Bool) -> [a] -> [a]
filterDisj _ _ [] = []
filterDisj p1 p2 (x: xs)
  | p2 x || p1 x = x : filterDisj p1 p2 xs
  | otherwise = []
  -- | otherwise = filterDisj p1 p2 xs

-- filterDisj :: (a -> Bool) -> (a -> Bool) -> [a] -> [a]
-- filterDisj p1 p2 = filter (\a -> p1 `  -+-a || p2 a)
