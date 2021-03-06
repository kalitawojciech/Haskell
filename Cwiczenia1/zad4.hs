{-

Zdefiniuj funkcję dwuargumentową albo_albo(x,y)
o argumentach i wartościach typu Bool, 
która określa alternatywę wykluczającą:    
a) bezpośrednio za pomocą dopasowania do wzorca      
b) z wykorzystaniem operatorów &&, || i funkcji not.

-}

albo_albo_a (True, True) = False
albo_albo_a (_, _) = True


albo_albo_b :: (Bool,Bool) -> Bool
albo_albo_b (p,q) = (p && not q) || (not p && q)