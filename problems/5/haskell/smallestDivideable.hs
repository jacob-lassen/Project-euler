smallestDivisible :: [Int] -> Int
smallestDivisible multiples =
    head [x | x <- [1..], all (isMultipleOf x) multiples]
    where isMultipleOf = \x y -> x `mod` y == 0