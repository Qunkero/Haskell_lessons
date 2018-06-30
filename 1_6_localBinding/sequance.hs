module Sequance where

seqA :: Integer -> Integer
seqA number
  | number < 0 = error "error value must be above zero"
  | number == 0 = 1
  | number == 1 = 2
  | number == 2 = 3
  | otherwise = let
    helper acc3 _ _ 0 = acc3
    helper acc3 acc2 acc1 step = helper ((acc3 + acc2) - 2*acc1) acc3 acc2 (step - 1)
  in helper 3 2 1 (number - 2)
