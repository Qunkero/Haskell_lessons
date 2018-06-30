module Factorial where

factorial :: Integer -> Integer
factorial 0 = 1
factorial n = n * factorial (n - 1)

doubleFact :: Integer -> Integer
doubleFact 0 = 1
doubleFact 1 = 1
doubleFact n = if n < 0
  then error "arg must be >= 0"
  else n * doubleFact (n - 2)


factorial2 :: Integer -> Integer
factorial2 n
  | n >= 0 = helpelFactorial2 1 n
  | otherwise = error "arg must be >= 0"

helpelFactorial2 :: Integer -> Integer -> Integer
helpelFactorial2 acc 0 = acc
helpelFactorial2 acc n = helpelFactorial2 (acc * n) (n - 1)

factorial3 :: Integer -> Integer
factorial3 n
  | n >= 0 = let
      helper acc 0 = acc
      helper acc step = helper (acc * step) (step - 1)
    in helper 1 n
  | otherwise = error "wrong argument, arg must be above zero"
