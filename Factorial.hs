factorial1 n = if n == 0 then 1 else n* factorial1(n-1)

funcion x
	| x >= 7 = product [8..x]
	| x > 4 && x < 7 = x ** (1/3)
	| x > 0 && x <= 4 = 1/2 * (x ** (1/4))
	| otherwise =(factorial1 (-x)) * 3 ** (x-2)