addx :: [a] -> [a] -> [a]
addx [] [] = []
addx xs [] = xs
addx [] ys = ys
addx (x:xs) (y:ys) = x : y : (addx xs ys)
