{-

Zdefiniuj funkcjê jednoargumentow¹ sprawdz(x) o wartoœci typu String, 
która dla X ujemnych podaje w wyniku  napis „liczba mniejsza od 0”,
dla <10 ,0> x - „liczba z przedzia³u od 0 do 10”,
dla x>10 – „liczna wiêksza od 10”. 
U¿yj definicji warunkowej ze stra¿nikami; 
staraj siê zastosowaæ mo¿liwie najmniejsz¹ liczbê warunków. 

-}

sprawdz x | x < 0 = "liczba mniejsza od 0"
	  | x <= 10 = "liczba z przedzialu od 0 do 10"
	  | otherwise = "liczba wieksza od 10"