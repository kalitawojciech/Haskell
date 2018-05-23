--Definicje lokalne

ob_kuli1 r = 4/3*pi*r*r*r

ob_kuli2 r = a*pi*sz
             where
                   a = 4/3
                   sz = r*r*r

ob_kuli3 r = a*pi*sz r where
		a=4/3
		sz r = r*r*r

ob_kuli4 r =
		let 
		 a=4/3
		 sz r =r*r*r
		in a*pi*sz r

ob_kuli5 r =
		(let 
		 a=4/3
		 sz r =r*r*r
		in a*pi*sz r ) *2 +1
{-
blêdne
ob_kuli6 r =( a*pi*sz r where
		a=4/3
		sz r = r*r*r)*2+1
-}
ob_kuli6 r = (a*pi*sz r)*2+1 where
		a=4/3
		sz r = r*r*r 

{-
f1(x,y) = (2(x+2)^2+3sin(x+y))/(sin^3(x+y)*5(y+2)^2)
a = sin(x+y)
b z = (z+2)^2
-}





f1 :: Float -> Float  -> Float
f1 x y = (2* b x + 3*a)/a^3/5/b y
	   where
		a = sin(x+y)
		b z = (z + 3) ^2
f2 :: Float -> Float  -> Float
f2 x y =
	 let a = sin (x+y)
	     b z = (z+3)^2
	 in (2*b x + 3 * a)/a^3/5/b y
