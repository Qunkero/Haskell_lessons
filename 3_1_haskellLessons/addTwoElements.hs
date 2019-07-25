module AddTwoELements where

addTwoElements :: Int -> Int -> [Int] -> [Int]
addTwoElements a b list = a : b : list

addTwoElements2 :: a -> a -> [a] -> [a]
addTwoElements2 x = ((:) x .) . (:)


-- using key word "where"
nTimes:: a -> Int -> [a]
nTimes val = getResult [] where
  getResult result 0 = result
  getResult result step = getResult (val : result) (step - 1)

oddsOnly :: Integral a => [a] -> [a]
oddsOnly [] = []
oddsOnly (x : xs)
  | odd x = x : oddsOnly xs
  | otherwise = oddsOnly xs


customHead :: [t] -> t
-- customHead ((:) x _) = x
customHead (x : _) = x



customSum :: (Num a) => [a] => a
customSum [x] = x
customSum (x : xs) = x + (customSum xs)
