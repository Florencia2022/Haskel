
--Ejercicio 10
productEscalar :: (Integer, Integer, Integer) -> (Integer, Integer, Integer) -> Integer

productEscalar (x1,y1,z1) (x2, y2, z2) = (x1*x2) + (y1*y2) + (z1 * z2)

--Ejericio 11
positivos ::  [Integer] -> Integer
positivos[] = 0
positivos (x: xs)= if x >= 0 then 1 + positivos xs else positivos xs
