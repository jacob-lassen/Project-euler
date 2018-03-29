import Data.Char

largestProduct :: String -> Int -> Int
largestProduct series n =
    largestProduct' series n 0
    
largestProduct' :: String -> Int -> Int -> Int
largestProduct' series n max
    | length series < n = max
    | otherwise         = largestProduct'' series n max

largestProduct'' :: String -> Int -> Int -> Int
largestProduct'' series n max 
    | product < max = recur max
    | otherwise     = recur product
    where   product = foldl (*) 1 $ map digitToInt $ take n series
            recur = largestProduct' (tail series) n