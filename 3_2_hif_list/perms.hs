module Perms where


-- perms [1,2,3]
-- [[1,2,3],[1,3,2],[2,1,3],[2,3,1],[3,1,2],[3,2,1]]

-- perms :: [a] -> [[a]]
-- perms xs0        =  xs0 : permutations xs0 []
--   where
--     permutations []     _  = []
--     permutations (t:ts) is = foldr interleave (permutations ts (t:is)) (perms is)
--       where interleave    xs     r = let (_,zs) = interleave' id xs r in zs
--             interleave' _ []     r = (ts, r)
--             interleave' f (y:ys) r = let (us,zs) = interleave' (f . (y:)) ys r
--               in  (y:us, f (t:y:us) : zs)


perms :: [a] -> [[a]]
perms [] = [[]]
perms [x] = [[x]]
perms (x:xs) = concatMap (insertElem x) (perms xs)
 where
  insertElem x2 [] = [[x2]]
  insertElem x2 yss@(y:ys) = (x2:yss) : map (y:) (insertElem x2 ys)
