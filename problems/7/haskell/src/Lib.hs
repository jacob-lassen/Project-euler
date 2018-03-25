module Lib
    ( nthPrime
    ) where

import System.Environment
import Data.Numbers.Primes

nthPrime :: Int -> Int
nthPrime n = 
    primes !! (n - 1)