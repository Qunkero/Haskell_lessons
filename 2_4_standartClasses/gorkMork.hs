module GorkMork where

class KnownToGork a where
    stomp :: a -> a
    doesEnrageGork :: a -> Bool

class KnownToMork a where
    stab :: a -> a
    doesEnrageMork :: a -> Bool

class (KnownToGork a, KnownToMork a) => KnownToGorkAndMork a where
    stompOrStab :: a -> a
    stompOrStab n
      | doesEnrageGork n && doesEnrageMork n = stomp (stab n)
      | doesEnrageGork n = stab n
      | doesEnrageMork n = stomp n
      | otherwise = n
