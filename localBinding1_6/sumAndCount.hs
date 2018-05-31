module SumAndCount where

sumAndCount :: Integer -> (Integer, Integer)
sumAndCount number
  | number == 0 = (0, 1)
  | number == (-01) = (1, 1)
  | otherwise = (sumInt 0 (count - 1) posNumber, count)
   where
    count = getCount posNumber
    posNumber = abs number
    getCount countNumber = toInteger (length (show countNumber))
    sumInt result 0 sumIntInt = result + sumIntInt
    sumInt result step sumIntInt = sumInt (result + tempResult) (step - 1) (sumIntInt - (tempResult * exponentNumber))
      where
        tempResult = sumIntInt `div` exponentNumber
        exponentNumber = 10 ^ step
