#!/usr/bin/env runhaskell

import Data.MemoTrie (memo)

fib :: Int -> Int
fib = memo fib'
  where
    fib' :: Int -> Int
    fib' 0 = 0
    fib' 1 = 1
    fib' n = fib' (n - 1) + fib' (n - 2)

main :: IO ()
main = do
  putStrLn (show (fib 30))
