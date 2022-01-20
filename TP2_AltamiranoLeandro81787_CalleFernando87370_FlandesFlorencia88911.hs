--Consigna 1,a
es_vocal :: String -> Bool
vocales = ["a","e","i","o","u","A","E","I","O","U"]
es_vocal car = elem car vocales

--Consigna 1,b
es_digito :: Char -> Bool
es_digito car = if (car >= '0' && car <= '9') then True else False
--digitos = ["0","1","2","3","4","5","6","7","8","9"]
--es_digito car = elem car digitos

--Consigna 2
funcion2 :: Integer -> String -> Integer
funcion2 nro car = if (es_vocal car == True) then (2*nro)
	else if (es_digito car == True) then (3*nro) else (nro)

--Consigna 3
funcion3 :: [Integer] -> String -> [Integer]
funcion3 []_ = []
funcion3 lista car
	|es_vocal car = [x*2|x <- lista]
	|es_digito car = [x*3|x <- lista]
	|otherwise = [x|x <- lista]

--Consigna 4
funcion4 :: [Integer] -> String -> Int-> [Integer]
funcion4 [] car cant = []
funcion4 list car cant = take cant (funcion3 list car)

--Consigna 5
funcion5 :: Integer -> (Integer, Integer)
funcion5 x = (x, x*2)

--Consigna 6
--funcion6 :: Integer -> Integer -> [(Integer, Integer)]
--funcion6 x 0 = []
--funcion6 x cant = if cant>0 then [(x, x*2)] ++ funcion6(x*2)(cant-1) else []

--Consigna 6 
funcion6 :: Integer -> Integer -> [(Integer, Integer)]
funcion6 x 0 = []
funcion6 x cant = if cant>0 then [funcion5(x)] ++ funcion6(x*2)(cant-1) else []