module SquaresCubes where


squares'n'cubes :: Num a => [a] -> [a]
squares'n'cubes = concatMap ( \a -> [(a ^ 2), a ^ 3])
