{-

Zdefiniuj funkcj� trzyargumentow� pierwiastki, kt�ra dla danego r�wnania kwadratowego
o wsp�czynnikach rzeczywistych a, b, c daje w wyniku jeden z napis�w: Dwa pierwiastki
rzeczywiste, Jeden pierwiastek rzeczywisty, Brak pierwiastk�w rzeczywistych.

-}

pierwiastki a b c | kwadrat < 0  = "Brak pierwiastkow rzeczywistych"
		  | kwadrat == 0 = "Jeden pierwiastek rzeczywisty"
		  | otherwise    = "Dwa pierwiastki rzeczywiste"
		  where kwadrat = b **2 - 4 * a * c 