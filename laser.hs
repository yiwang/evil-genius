#!/usr/bin/env runhaskell

data Target
  =  Fool String
  | Crowd Integer
  | TheMoon
  deriving (Eq, Ord, Show)

fireOn :: Target -> String
fireOn (Fool s) = s ++ " blated!"
fireOn (Crowd n) = show n ++ "'s murdred!"
fireOn TheMoon = "How did you miss a shot like that?"

