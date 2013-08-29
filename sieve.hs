#!/usr/bin/env runhaskell

sieve :: (Integral a) => [a] -> [a]
sieve (n:ns) = n : sieve ns'
  where ns' = filter ((/= 0) . flip rem n) (n:ns)

primes :: (Integral a) => [a]
primes = sieve [2..]

main :: IO ()
main = do
  putStrLn (show (take 10 primes))
