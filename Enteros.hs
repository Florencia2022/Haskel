--mayor de dos numeros IF THEN ELSE
--Le paso por parametros dos enteros y devuelvo un entero
maxEnt :: Integer -> Integer -> Integer
maxEnt x y = if x >= y then x else y

--Mayor de tres numeros IF THEN ELSE
mayor:: Int -> Int -> Int -> Int
mayor x y z = if x >= z && x >= y then x else
 if y >= z then y else z

--Paridad con CASE
paridad :: Int -> String
paridad x = case(x`mod`2) of
	0 -> "par"
	1 -> "impar"

--encontrar el minimo con funcion con guardas
minimo :: Int -> Int -> Int
minimo x y | x <= y = x
	   | otherwise = y


--Encontrar el valor absoluto con guardas
--Si no pongo su tipo, el lenguaje lo asimila por defecto
absoluto x | x >= 0 = x
	   | otherwise = -x

--Utilizando let
sumaLet :: Int -> Int -> Int
sumaLet x y = let z = 2 in z + x + y

--Utilizando where
comparaCuadrado :: Integer -> Integer -> String
comparaCuadrado x y | y > z = "El segundo argumento es mayor al cuadrado del primero"
		    | y == z = "El segundo argumento es igual al cuadrado del primero"
		    | y < z = "El segundo argumento es menor al cuadrado del primero"
		    where z = x*x



