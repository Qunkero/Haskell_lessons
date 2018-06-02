module IntegralTrapetion where
  integration :: (Double -> Double) -> Double -> Double -> Double
  integration f a b = getSum 0 b accuracy
    where
      accuracy = 1000
      divd = (b - a) / accuracy
      getSum result _ 0 = result
      getSum result prev step = getSum (result + (f prev + f next)/2 * divd) next (step - 1)
        where
          next = prev - divd
