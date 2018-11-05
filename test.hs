-- ghci version 8.6.1 
subseq :: [Int] -> [Int] -> Bool
-- testet ob x eine subsequenz von y ist.
-- problem: funktioniert nicht korrekt wenn x und y nur noch leere listen sind. 
subseq x [] = False
subseq [] y = True
subseq (x:xs) (y:ys) = if x == y then subseq xs ys else subseq (x:xs) ys
