sumSquareDifference :: Int -> Int
sumSquareDifference n =
    square total - squareSum 
    where   list        = [1..n]
            total       = sum list
            squareSum   = sum $ map square list

square :: Int -> Int
square n = n * n