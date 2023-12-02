module Main where

import Data.Char

-- import Data.List.Utils
-- import qualified Data.Text as T

toLowe :: String -> String
toLowe = map toLower

sumAll :: [String] -> Int
sumAll =
  sum . map ((\x -> read (head x : [last x]) :: Int) . filter isNumber)

-- let numbers = ["one", "two", "three", "four", "five", "six", "seven", "eight", "nine", "1", "2", "3", "4", "5", "6", "7", "8", "9"]

-- sumWithNumbers :: String -> String
-- sumWithNumbers x =
--     go where
--          go [] = []
--          go all@(x:xs) | T.indices x
--
main :: IO ()
main = do
  content <- readFile "inputs.txt"
  let inputs = lines content
  -- print $ repl "zoneight234"
  print $ sumAll inputs
