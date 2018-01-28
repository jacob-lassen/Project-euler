import System.Environment
import PrimeFactor

main = do
    (n:xs) <- getArgs
    let largestPrime = largestPrimeFactor $ read n
    putStrLn $ show largestPrime