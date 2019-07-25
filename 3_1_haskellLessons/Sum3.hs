module Sum3 where

-- sum3 :: Num a => [a] -> [a] -> [a] -> [a]
-- sum3 [] [] [] = []
-- sum3 [] b c = sum3 [0] b c
-- sum3 a [] c = sum3 a [0] c
-- sum3 a b [] = sum3 a b [0]
-- sum3 (a1 : axs) (b1 : bxs) (c1 : cxs) = (a1 + b1 + c1) : sum3 axs bxs cxs


sum3 :: Num a => [a] -> [a] -> [a] -> [a]
sum3 xs ys zs = sum2 xs $ sum2 ys zs
  where
    sum2 [] bs = bs
    sum2 as [] = as
    sum2 (a : as) (b : bs) = (a + b) : sum2 as bs
