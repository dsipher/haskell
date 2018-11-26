type Person = (Int, Bool)

rabatt :: (Fractional a, Num a, Ord a) => a -> a -> [Person] -> [a]
rabatt _ _ [] = []
rabatt n i (x:xs) 
  | erwachsen && fbucher && karte == True = (n*0.60*0.75) : rabatt n i xs
  | erwachsen && fbucher && not karte == True = (n*0.60) : rabatt n i xs
  | erwachsen && not fbucher && not karte == True = n : rabatt n i xs
  | otherwise = rabatt n i xs
  where 
    erwachsen = fst x > 14
    karte = snd x 
    fbucher = i >= 7
 
fahrpreis :: (Fractional a, Num a, Ord a) => a -> a -> [Person] -> a
fahrpreis n i (x:xs) =
  if length (x:xs) >= 4
     then sum $ (head rabatt')*0.50 : (tail rabatt')
     else sum rabatt' 
       where rabatt' = (rabatt n i (x:xs)) 

