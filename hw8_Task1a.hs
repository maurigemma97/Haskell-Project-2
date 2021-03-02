foo :: Integer -> Integer
foo x = foldl (\agg item -> agg * item^3) 1 [1, 3 .. x-1]
