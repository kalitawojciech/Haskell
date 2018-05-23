-- Funkcje curry i uncurry

{-
------------------------------------------

		curry
		------>
	g (x,y)		g x y
		<------
		uncurry

------------------------------------------

curry

Je¿eli
	g ::(a,b)->c
to
	curry g :: a->b->c

------------------------------------------

uncurry
Je¿eli
           h :: a->b->c,
to
   uncurry h :: (a,b)->c

-}

g(x,y) = (x-y,x+y)

{-
Main> g(5,6)
(-1,11)
Main> curry g 5 6
(-1,11)
Main> g 5 6
ERROR - Type error in application
*** Expression     : g 5 6
*** Term           : g
*** Type           : (d,d) -> (d,d)
*** Does not match : a -> b -> c

Main> :t g
g :: Num a => (a,a) -> (a,a)
Main> :t curry g
curry g :: Num a => a -> a -> (a,a)
-}

h x y = x^2+y^2

-----------------------------------------------

{-
[ x | xs ]  <= w prologu\
    x:xs
x   - nie lista
xs  - lista
xss - lista list

---------------------------------

1 : [ ] = [1]
2 : ( 3 : ( 1 : [ ] )) 

2*3-5 : [1,3]
1 : [1,3]
[1,1,3]

---------------------------------
		tail - ogon
                  | 
element head      |
  |               |
  |      ----------
  |      |
  |  /------\
[ a,  b,  c,  d]
 \_________/  |
init-lista    | 
             last
-}

-- Listy - definicje 

--member(x,xs) - nale¿enie elementu do listy

member x [] = False
member x (y:ys) 
	| x == y = True
	| otherwise = member x ys

--delete(x,xs) - usuniecie wszystkiech wystapien
--elementu x z listy xs

delete x [] = []
delete x (y:ys)
	| x == y = delete x ys
	| otherwise = y : delete x ys

--insert(x,xs) - wstawianie elementu x do listy 
--uporz¹dkowanej

insert x [] = [x]
insert x (y:ys)
	| x <= y = x:(y:ys)
	| otherwise = y: insert x ys