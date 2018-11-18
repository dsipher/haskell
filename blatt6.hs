import Data.List
-- aufgabe 1.1
-- keinen data type [binary] definiert, daher [Int] benutzt.

-- aufgabe 1.2
int2bin' :: Int -> [Int]
int2bin' x
  | x < 2 = [x]
  | otherwise = (x `mod` 2) : int2bin' (x `div` 2)

int2bin = reverse . int2bin'

-- aufgabe 1.3
bin2int :: [Int] -> Int
bin2int [x] = x
bin2int (x:xs) = x * 2^(i-1) + bin2int xs
  where i = length (x:xs)

-- aufgabe 2
permHH []  = [[]]
permHH [a] = [[a]]
permHH as  = [x:xs | x <- nub as, xs <- permHH (filter (/=x) as)]

permLL [] = [[]]
permLL as = [as!!(i-1) : xs | i <- [1..length as],
                              xs <- permLL (take (i-1) as ++ drop i as)]


-- aufgabe 3
minElem :: [Int] -> Int
minElem []       = error "empty list"
minElem [x]      = x
minElem (x:y:ys)
  | x < y        = minElem' x ys
  | otherwise    = minElem (y:ys)

minElem' :: Int -> [Int] -> Int
minElem' x [] = x
minElem' x (y:ys)
  | x <= y    = minElem' x ys
  | otherwise = minElem' y ys

-- aufgabe 4
minElem2 :: Ord a => [a] -> a
minElem2 []       = error "empty list"
minElem2 [x]      = x
minElem2 (x:y:ys)
  | x < y        = minElem2' x ys
  | otherwise    = minElem2 (y:ys)

minElem2' :: Ord a => a -> [a] -> a
minElem2' x [] = x
minElem2' x (y:ys)
  | x <= y    = minElem2' x ys
  | otherwise = minElem2' y ys


