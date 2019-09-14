module DelAllUper where
import Data.Char


delAllUper :: String -> String
delAllUper = unwords . filter (not . all isUpper) . words

max3 :: Ord a => [a] -> [a] -> [a] -> [a]
max3 _ _ [] = []
max3 _ [] _ = []
max3 [] _ _ = []
max3 (a:as) (b: bs) (c:cs) = max b (max c a) : max3 as bs cs
