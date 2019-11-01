module CharToInt where

charToInt :: Char -> Int
charToInt '0' = 0
charToInt '1' = 1
charToInt '2' = 2
charToInt '3' = 3
charToInt '4' = 4
charToInt '5' = 5
charToInt '6' = 6
charToInt '7' = 7
charToInt '8' = 8
charToInt '9' = 9


data Color = Red | Green | Blue deriving (Show)

stringToColor :: String -> Color
stringToColor "Red" = Red
stringToColor "Green" = Green
stringToColor "Blue" = Blue

data LogLevel = Error | Warning | Info

cmp :: LogLevel -> LogLevel -> Ordering
cmp x y = compare (ord x)  (ord y) where
   ord Error = 3
   ord Warning = 2
   ord Info = 1

data Shape = Circle Double | Rectangle Double Double deriving (Show)

area :: Shape -> Double
area (Circle r) = pi * r ^ 2
area (Rectangle a b) = a * b

square :: Double -> Shape
square a = Rectangle a a

isSquare :: Shape -> Bool
isSquare (Rectangle a b) = a == b
isSquare _ = False
