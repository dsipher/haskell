import Data.List

-- aufgabe 3
insert' :: Ord a => a -> [a] -> [a]
insert' a [] = [a]
insert' a (b:as) = if a <= b 
                      then a:b:as
                      else b:(insert' a as)

isort :: Ord a => [a] -> [a]
isort = foldr (insert') []

-- aufgabe 4
type Person = (String, String, Int, Int, Int)

vorname :: Person -> Person -> Ordering
vorname (x,_,_,_,_) (y,_,_,_,_) = compare x y

nachname :: Person -> Person -> Ordering
nachname (_,x,_,_,_) (_,y,_,_,_) = compare y x

geburtstag :: Person -> Person -> Ordering
geburtstag (_,_,_,_,x) (_,_,_,_,y)
  | x /= y = compare x y
geburtstag (_,_,_,x,_) (_,_,_,y,_)
  | x /= y = compare x y
geburtstag (_,_,x,_,_) (_,_,y,_,_) = compare x y

kontakte :: [Person]
kontakte = [
            ("Richard", "Feynman", 11, 5, 1918),
            ("J.R.R", "Tolkien", 3, 1, 1892),
            ("Alan", "Turing", 23, 6, 1912),
            ("Stephen", "Hawking", 8, 1, 1942)
           ]

-- aufgabe 6
qgrams :: Int -> String -> [String]
qgrams q _
  | q <= 0 = error "need positive Int"
qgrams q [] = []
qgrams q (x:xs) 
  | length (x:xs) >= q = take q (x:xs) : qgrams q xs
  | otherwise = qgrams q xs

