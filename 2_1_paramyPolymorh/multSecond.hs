module MultSecond where

import Data.Function

multSecond = g `on` h

g a b = a * b

h p1 = snd p1
