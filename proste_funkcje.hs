--Proste_funkcje

--sta�a rozmiar r�wna 5

rozmiar = 5

--funkcja kwadrat f(x)=x*x
--kwadrat :: Num a => a -> a
kwadrat :: Integer -> Integer
kwadrat x = x * x

--funkcja suma kwadrat�w f(x,y)=x*x+y*y
--suma_kwadratow :: Num a => a -> a -> a taki daje Haskell
suma_kwadratow :: Integer -> Integer -> Integer
suma_kwadratow x y = kwadrat x + kwadrat y

--funkcja implikacja p->1 = nie p lub nie q
imp :: Bool -> Bool -> Bool
imp p q = not p || q

--funkcja prawda je�eli pierwszy wi�kszy z 2 arg
wiekszy1 :: Ord a => a -> a -> Bool
wiekszy1 x y = x>y

--funkcja6 przyjmuje dwa argumenty
f6 :: Float->Float->Float
f6 x y = x+y

--funkcja7 przyjmuje jeden argument
f7 :: (Float,Float)->Float
f7 (x,y) = x+y

-- :t 'd'		:t sprawdza tym wyra�enia
-- ['a','b']		lista sk�ada si� z element�w tego samego typu

--(True,'a',"ala") 	krotka sk�ada si� z element�w r�nych typ�w
-- :t (++)		sprawdza funkcj� ++ czyli konkatanacj� jakie przyjmuje typy zmiennych
-- :t reverse		sprawdza funkcj� reverse (odwracaj�c� listy) jakie przyjmuje typy zmiennych
-- :t 5		Num a => a	5 jest dowolnym typem  liczbowym
-- :t sqrt		sprawdza jakie typu zmiennych przyjmuje i zwraca funkcja pierwiastkowania
-- Fractional to typ liczb wymiernych i nie Integer