{-

Zdefiniuj funkcj� jednoargumentow� sprawdz(x) o warto�ci typu String, 
kt�ra dla X ujemnych podaje w wyniku  napis �liczba mniejsza od 0�,
dla <10 ,0> x - �liczba z przedzia�u od 0 do 10�,
dla x>10 � �liczna wi�ksza od 10�. 
U�yj definicji warunkowej ze stra�nikami; 
staraj si� zastosowa� mo�liwie najmniejsz� liczb� warunk�w. 

-}

sprawdz x | x < 0 = "liczba mniejsza od 0"
	  | x <= 10 = "liczba z przedzialu od 0 do 10"
	  | otherwise = "liczba wieksza od 10"