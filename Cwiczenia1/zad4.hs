{-

Zdefiniuj funkcj� dwuargumentow� albo_albo(x,y)
o argumentach i warto�ciach typu Bool, 
kt�ra okre�la alternatyw� wykluczaj�c�:    
a) bezpo�rednio za pomoc� dopasowania do wzorca      
b) z wykorzystaniem operator�w &&, || i funkcji not.

-}

albo_albo_a (True, True) = False
albo_albo_a (_, _) = True


albo_albo_b :: (Bool,Bool) -> Bool
albo_albo_b (p,q) = (p && not q) || (not p && q)