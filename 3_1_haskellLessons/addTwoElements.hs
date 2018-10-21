module AddTwoELements where


addTwoElements :: Int -> Int -> [Int] -> [Int]
addTwoElements a b list = a : b : list

-- addTwoElements x = ((:) x .) . (:)



nTimes:: a -> Int -> [a]
nTimes val = getResult [] where
  getResult result 0 = result
  getResult result step = getResult (val : result) (step - 1)

oddsOnly :: Integral a => [a] -> [a]
oddsOnly [] = []
oddsOnly (x : xs)
  | odd x = x : oddsOnly xs
  | otherwise = oddsOnly xs
