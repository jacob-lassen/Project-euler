module Multiples
( sumMultiples
) where

sumMultiples :: [Int] -> Int -> Int
sumMultiples multiples ceiling =
    foldl (+) 0 $ [ x | x <- [0..ceiling], divisable multiples x ]

divisable :: [Int] -> Int -> Bool
divisable multiples num  =
    any divisable' multiples
    where divisable' = \x -> num `mod` x == 0