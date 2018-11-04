-- ghci version 8.6.1 
comp :: [Int] -> [Int] -> Bool
-- checks if x is a subsequence of y
comp x [] = False
comp [] y = True
comp (x:xs) (y:ys) = if x == y then comp xs ys else comp (x:xs) ys
