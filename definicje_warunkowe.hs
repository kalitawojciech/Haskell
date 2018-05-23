-- DEFINICJE WARUNKOWE

--if...then...else
znak1 x = if x < 0 then (-1) else
	  if x == 0 then 0 else 1

znak2 x | x <  0    = (-1)
	| x == 0    =   0
	| otherwise =   1

{-

		{ ujemna   x <0
liczba(x) =     { zero     x = 0
		{ dodatnia x > 0

liczba:: (Num a, Ord a)=>a->String

liczba x = case znak2 x of
	     (-1) -> "ujemna"
	     0 -> "zero"
             1 -> "dodatnia"
	     ^^
             ||
	jedna kolumna 
-}

liczba x = case znak2 x of
	     (-1) -> "ujemna"
	     0 -> "zero"
             1 -> "dodatnia"

{-
DOPASOWANIE DO WZORCA

		{ 0   x = 5
f1(x) =     	{ 1   x = 10
		{ 2 w pozosta³ych
-------------------------------------------
f1 5  = 0
f1 10 = 1
f1 _  = 2
-------------------------------------------
		{ 0   x = 5
f2(x) =     	{ 1   x = 10
		{ 2*x w pozosta³ych
-------------------------------------------
f2 5  = 0
f2 10 = 1
f2 x  = 2*x
-------------------------------------------

-------------------
| p | q | p lub 1 |
-------------------
| 0 | 0 |    0    |
-------------------
| 0 | 1 |    1    |
-------------------
| 1 | 0 |    1    |
-------------------
| 1 | 1 |    1    |
-------------------
-------------------------
lub1 False False = False
lub1 False True  = True
lub1 True  False = True
lub1 True  True  = True
-------------------------
lub2 False False = False
lub2 _     _     = True

-}

--Dopasowanie do wzorca
-- lub - logiczna
lub False False = False
lub _ _ = True


{-

SILNIA 

0! = 1
n! = n * (n-1)!, n > 0

-}

--przyjmujemy (-1) dla ujemnego argumentu
silnia:: Integer -> Integer
silnia 0 = 1
silnia n | n > 0 = n * silnia (n-1)
	 | otherwise = error "ujemny argument"