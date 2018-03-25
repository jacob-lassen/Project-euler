module Main where

import System.Environment 
import Lib

main :: IO ()
main = do
    (n:_) <- getArgs 
    let prime = nthPrime $ read n
    putStrLn $ show prime