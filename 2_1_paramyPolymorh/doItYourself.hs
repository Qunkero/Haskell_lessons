module DoItYourself where

doItYourself :: Double -> Double
doItYourself = f . g . h

h :: Double -> Double
h = max 42

g :: Double -> Double
g= (^ 3)

f :: Double -> Double
f = logBase 2
