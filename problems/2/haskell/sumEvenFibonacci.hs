sumEvenFibonacci :: Integer -> Integer
sumEvenFibonacci ceiling = 
    sum $ takeWhile predicate evenFibs
    where predicate = \x -> x < ceiling

evenFibs :: [Integer]
evenFibs = [x | x <- fibs, even x]

fibs :: [Integer]
fibs = 1 : 1 : zipWith (+) fibs (tail fibs)