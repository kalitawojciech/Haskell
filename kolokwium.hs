--zad1
-- a) f1a :: Floating a => a -> a
-- b)
f1a :: Float -> Float
f1a x = sqrt x * sin (2*x+3) / ((2*x+3)^3 - 6 * sqrt x )

f1b_where x = a x * sin (b x) / ((b x)^3 - 6 * a x) where
		a x = sqrt x
		b x = 2*x+3

f1b_let x = let
		a x = sqrt x
		b x = 2*x+3
	    in a x * sin (b x) / ((b x)^3 - 6 * a x)


--zad2

g x y | x > 0 && y > 0 = x+y
      | x < 0 || y < 0 = x-y
      | otherwise = 0


--zad4

fun [] = 5
fun (x : xs) = x - fun xs

{-
[1,4..10] 
-> [1,4,7,10]
-> fun [1,4,7,10]
-> 1 - fun [4,7,10]
-> 1 - (4 - fun [7,10])
-> 1 - (4 - (7 - fun [10]))
-> 1 - (4 - (7 - (10 - fun [])))
-> 1 - (4 - (7 - (10 - 5)))
-> 1 - (4 - (7 - 5)
-> 1 - (4 - 2)
-> 1 - 2 
-> -1

-}