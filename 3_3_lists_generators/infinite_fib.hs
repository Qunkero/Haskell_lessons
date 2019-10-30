module InfiniteFib where

fibStream :: [Integer]
fibStream = 0 : 1 : zipWith (+) fibStream (tail fibStream)


data Odd = Odd Integer
  deriving (Eq, Show)



instance Enum Odd where
  succ (Odd x) = Odd $ x + 2
  pred (Odd x) = Odd $ x - 2
  -- fromEnum x = x
