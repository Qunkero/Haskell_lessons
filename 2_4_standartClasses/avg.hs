module Avg where

avg :: Int -> Int -> Int -> Double
avg a b c = avg3 where
  sum2 = realToFrac a + realToFrac b + realToFrac c
  avg3 = sum2 / 3.0
