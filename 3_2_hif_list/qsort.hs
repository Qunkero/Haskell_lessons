module Qsort where

qsort :: Ord a => [a] -> [a]
qsort [] = []
qsort [a] = [a]
qsort (x:xs') = qsort ys ++ qsort zs where
  ys = filter (<x) xs'
  zs = filter (>=x) xs'


-- qsort :: Ord a => [a] -> [a]
-- qsort [] = []
-- qsort [a] = [a]
-- qsort (x:xs) = qsort lesser ++ [x] ++ qsort greater
--   where
--     lesser  = filter (< x) xs
--     greater = filter (>= x) xs
