{-

Zdefiniuj funkcjê dwuargumentow¹ albo_albo(x,y)
o argumentach i wartoœciach typu Bool, 
która okreœla alternatywê wykluczaj¹c¹:    
a) bezpoœrednio za pomoc¹ dopasowania do wzorca      
b) z wykorzystaniem operatorów &&, || i funkcji not.

-}

albo_albo_a (True, True) = False
albo_albo_a (_, _) = True


albo_albo_b :: (Bool,Bool) -> Bool
albo_albo_b (p,q) = (p && not q) || (not p && q)