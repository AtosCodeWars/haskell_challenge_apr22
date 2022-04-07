module Main where

main :: IO ()
main = printAll $ map beepBoop [1..100]
       where
       printAll [] = return ()
       printAll (x:xs) = putStrLn x >> printAll xs

beepBoop :: Integer -> String
beepBoop n | n `___` 15 == 0 = "BeepBoop"
           | n `___` 5  == 0 = "Beep"
           | n `___` 3  == 0 = "Boop"
           | _________       = show n