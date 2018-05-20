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


bmiTell :: Double -> String
bmiTell bmi
  | bmi <= 18.5 = "Слышь, эмо, ты дистрофик!"
  | bmi <= 25.0 = "По части веса ты в норме. Зато, небось, уродец!"
  | bmi <= 30.0 = "Ты толстый! Сбрось хоть немного веса!"
  | otherwise = "Мои поздравления, ты жирный боров!"
