module DelAllUper where
import Data.Char


delAllUper :: String -> String
delAllUper = unwords . filter (not . all isUpper) . words
