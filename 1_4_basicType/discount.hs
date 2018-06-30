module Discount where

import Data.Char

discount :: Double -> Double -> Double -> Double
discount limit proc orderSum = if orderSum >= limit then orderSum * (100 - proc) / 100 else orderSum


standartDiscount :: Double -> Double
standartDiscount = discount 1000 5

testImport :: Bool
testImport = isDigit '7'
