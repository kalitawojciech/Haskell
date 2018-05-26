{-

Zdefiniuj funkcjê trzyargumentow¹ pierwiastki, która dla danego równania kwadratowego
o wspó³czynnikach rzeczywistych a, b, c daje w wyniku jeden z napisów: Dwa pierwiastki
rzeczywiste, Jeden pierwiastek rzeczywisty, Brak pierwiastków rzeczywistych.

-}

pierwiastki a b c | kwadrat < 0  = "Brak pierwiastkow rzeczywistych"
		  | kwadrat == 0 = "Jeden pierwiastek rzeczywisty"
		  | otherwise    = "Dwa pierwiastki rzeczywiste"
		  where kwadrat = b **2 - 4 * a * c 