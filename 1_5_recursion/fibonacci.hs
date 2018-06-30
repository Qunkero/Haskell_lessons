module Fibonacci where

fibonacci :: Integer -> Integer
fibonacci n
  | n == 0 = 0
  | n == 1 = 1
  | n > 0 = fibonacci (n - 1) + fibonacci (n - 2)
  | otherwise = error "arg must be > 0"


fibonacci2 :: Integer -> Integer
fibonacci2 n
  | n == 0 = 0
  | n == 1 = 1
  | n > 0 = fibonacci2 (n - 1) + fibonacci2 (n - 2)
  | otherwise = fibonacci2 (n + 2) - fibonacci2 (n + 1)

fibonacci3 :: Integer -> Integer
fibonacci3 n
  | n == (-1) = 1
  | n == 0 = 0
  | n == 1 = 1
  | n > 0 = helperPositive 1 1 n 2
  | otherwise = helperNegative (-1) 1 n (-2)

helperPositive :: Integer -> Integer -> Integer -> Integer -> Integer
helperPositive acc2 acc1 n step
  | n == step = acc2
  | otherwise = helperPositive (acc2 + acc1) acc2 n (step + 1)

helperNegative :: Integer -> Integer -> Integer -> Integer -> Integer
helperNegative acc2 acc1 n step
  | n == step = acc2
  | otherwise = helperNegative (acc1 - acc2) acc2 n (step - 1)

bmiTell :: Double -> String
bmiTell bmi
  | bmi <= 18.5 = "Слышь, эмо, ты дистрофик!"
  | bmi <= 25.0 = "По части веса ты в норме. Зато, небось, уродец!"
  | bmi <= 30.0 = "Ты толстый! Сбрось хоть немного веса!"
  | otherwise = "Мои поздравления, ты жирный боров!"
