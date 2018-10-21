module IsPalindrome where

isPalindrome :: Eq a => [a] -> Bool
isPalindrome xs = p [] xs xs
   where p rev (x:xs2) (_:_:ys) = p (x:rev) xs2 ys
         p rev (_:xs3) [_] = rev == xs3
         p rev xs4 [] = rev == xs4


unzip4 :: [(a,b)] -> ([a], [b])
unzip4 [] = ([], [])
unzip4 ((x, y):xys) =
  let (xs, ys) = unzip4 xys
  in (x:xs, y:ys)

-- unzip4 [("mammama", "nicolay")]
-- unzip [("mammama", "nicolay"), ("adasdf", "asdfasf")]


sum3 :: Num a => [a] -> [a] -> [a] -> [a]
sum3 = undefined



sum2 [] [] = []
sum2 (x:xs) (y:ys) =
  let (xs, ys) = sum2 xs ys
  in (x + xs, y + ys)
