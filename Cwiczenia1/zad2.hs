--min2 jakowynik zwraca mniejsz¹ liczbê
min2 x y = if x < y then x else y

{-

2) Zdefiniuj funkcjê wyznaczaj¹c¹ minimum z trzech liczb.
 a) min3a - wprost u¿ywaj¹c definicji warunkowej ze stra¿nikami; staraæ siê zastosowaæ
mo¿liwie minimaln¹ liczbê warunków
 b) min3b - jedynie z wykorzystaniem funkcji min2
 c) min3c - jedynie z wykorzystaniem funkcji min2 w postaci operatora; nie u¿ywaæ
nawiasów tam gdzie jest to mo¿liwe.

-}

min3a x y z | x < y && x < z = x
	    | x < y && z < x = z
	    | otherwise = y

min3b x y z = min2 (min2 x y) z

min3c x y z = ( x `min2` y ) `min2`z