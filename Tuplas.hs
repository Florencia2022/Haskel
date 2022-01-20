--Devuelve el anterior y posterior de un nro
antPos :: Integer -> (Integer, Integer)
antPos x = (x-1 , x+1)

--Incrementa todos los elementos de una tupla de 3 enteros
incTupla :: (Integer, Integer, Integer) -> (Integer, Integer, Integer)
incTupla (a, b, c) = (a+1, b+1, c +1)

--Dado 2 nrosenteros devolver el maximo y el minimo
maxMin :: Integer -> Integer -> (Integer, Integer)
maxMin x y | x <= y = (y, x)
	|otherwise = (x, y)