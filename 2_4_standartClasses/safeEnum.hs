module SafeEnum where

class (Enum a, Bounded a, Eq a) => SafeEnum a where
  ssucc :: a -> a
  ssucc a = if a == maxBound then minBound else succ a

  spred :: a -> a
  spred a = if a == minBound then maxBound else pred a

instance SafeEnum Bool


mySum acc 0 = acc
mySum (result, ()) n = (mySum $! (result + n, ())) $ n - 1

-- f &! x = x `seq` f x = mySum (result + n, ()) n - 1
-- (result + n, ())  - will evaluted to weak head normal form (WHNF)
