largestIntegerPalindrom :: Int -> Int
largestIntegerPalindrom ceiling =
    foldl max 0 $ filter integerIsPalindrome $ map multiplyList $ combinations
    where   multiplyList = foldl (*) 1
            combinations = [ [x, y] | x <-[1..ceiling], y <- [1..ceiling] ]

integerIsPalindrome :: Int -> Bool
integerIsPalindrome value = 
    valueString == reverse valueString
    where valueString = show value

