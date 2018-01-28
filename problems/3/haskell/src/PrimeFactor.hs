module PrimeFactor
( largestPrimeFactor
) where

import Data.Numbers.Primes

largestPrimeFactor :: Int -> Int
largestPrimeFactor n =
    findLargestPrimeFactor n n

findLargestPrimeFactor :: Int -> Int -> Int
findLargestPrimeFactor factor n
    | factor <= 2                   = 2
    | factor `isPrimeFactorOf` n    = factor
    | otherwise = findLargestPrimeFactor (factor-1) n

isPrimeFactorOf :: Int -> Int -> Bool
isPrimeFactorOf factor n =
    factor `isFactorOf` n && isPrime factor

isFactorOf :: Int -> Int -> Bool
isFactorOf factor n =
    n `mod` factor == 0