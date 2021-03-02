
longStrCount :: [String] -> Int
longStrCount list = length(filter (\x -> length x > 4) list)
