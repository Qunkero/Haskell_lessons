module Demo where

infixl 6 *+*

(*+*) :: Num a => a -> a -> a
a *+* b = a ^ 2 + b ^ 2


infixl 6 |-|

a |-| b = if a == 0 && b == 0 then 0 else if a > b then a - b else b - a
