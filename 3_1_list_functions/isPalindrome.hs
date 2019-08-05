module IsPalindrome where

isPalindrome :: Eq a => [a] -> Bool
isPalindrome palList = p [] palList palList
  where p rev (x:xs) (_:_:ys) = p (x:rev) xs ys
        p rev (_:xs) [_] = rev == xs
        p rev xs [] = rev == xs


unzip4 :: [(a,b)] -> ([a], [b])
unzip4 [] = ([], [])
unzip4 ((x, y):xys) = let (xs, ys) = unzip4 xys
  in (x:xs, y:ys)

hello :: a -> String
hello _ = let dd

-- unzip4 [("mammama", "nicolay")]
-- unzip [("mammama", "nicolay"), ("adasdf", "asdfasf")]



-- sum2 [] [] = []
-- sum2 (x:xs) (y:ys) =
--   let (xs, ys) = sum2 xs ys
--   in (x + xs, y + ys)
