module PythageanTriplet
    ( pythageanTriplet
    ) where

pythageanTriplet :: Int -> Int
pythageanTriplet wantedSum = tripletProduct $ head $ filter (isSpecial wantedSum) $ filter isTriplet $ possibleTriplets wantedSum
    
possibleTriplets :: Int -> [(Int, Int, Int)]
possibleTriplets ceiling =  [(i, j, k) | 
                            i <- [1 .. ceiling],
                            j <- [1 .. ceiling], 
                            k <- [1 .. ceiling], 
                            i < j,
                            j < k]

isTriplet :: (Int, Int, Int) -> Bool
isTriplet (i, j, k) = i*i + j*j == k*k

isSpecial :: Int -> (Int, Int, Int) -> Bool
isSpecial specialNumber (i,j,k) = (i+j+k) == specialNumber

tripletProduct :: (Int, Int, Int) -> Int
tripletProduct (i, j, k) = i * j * k