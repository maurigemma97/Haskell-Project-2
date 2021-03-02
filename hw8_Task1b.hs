import Data.Char

lowCharCount :: String -> Int
lowCharCount x = length(filter isLower x)
