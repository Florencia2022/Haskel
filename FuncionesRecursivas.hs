--Utilizando recursividad
factorial1 :: Integer -> Integer
factorial1 n = if n == 0 then 1 else n* factorial1(n-1)

--recursividad sin if then else
factorial2 :: Integer -> Integer
factorial2 0 = 1
factorial2 n = n * factorial2 (n-1)

--listas
lista :: [Int]	
lista =  [3,4,6,3,5]

lista1 :: [Float]
lista1 = [1.3 , 5.3, 6.2]

--dada una lista de enteros retornar la suma de todos los elementos
sumar :: [Integer] -> Integer
sumar [] = 0
sumar (x : xs) = x + sumar(xs)
--lo que hace el sistema
--Hugs< sumar [3, 4]
--sumar (3:4) = 3 + sumar[4] = 3 + 4 = 7
--sumar[4] = 4 + sumar [] = 4+ 0 = 4
--sumar[] = 0 

--Retornar cantidad de elementos de una lista
cont :: [Integer] -> Integer
cont [] = 0
cont (x: xs) = 1 + cont(xs)

--dada una lista de enteros mostrar sus elementos
mostrar :: [Integer] -> String
mostrar [] = "La lista esta vacia"
mostrar (x: xs) = show(x) ++ " " ++ mostrar xs

--Recursividad
--Generar lista descendente a partir de un determinado nro
generarLista :: Integer -> [Integer]
generarLista 0 = []
generarLista num = num : generarLista(num-1)

--lo que hace el sistema
--generarLista 4
--generarLista 4 = 4: generarLista(3) = [4:1]
--generarLista 3 = 3: generarLista(2) = [3:1]
--generarLista 2 = 2: generarLista(1) = [2:1]
--generarLista 1 = 1: generarLista(0) = [1]

--Generar lista descendente a partir de un determinado nro con el poperador +
concatenarLista :: Integer -> [Integer]
concatenarLista 0 = []
concatenarLista num = [num] ++ concatenarLista(num-1)

--lo que hace el sistema
--concatenarLista 4
--concatenarLista 4 = [4] ++ concatenarLista(3) = [4] ++ [3, 2, 1] = [4, 3, 2, 1]
--concatenarLista 3 = [3] ++ concatenarLista(2) = [3] ++ [2, 1] = [3, 2, 1]
--concatenarLista 2 = [2] ++ concatenarLista(1) = [2] ++ [1] = [2, 1]
--concatenarLista 1 = [1] ++ concatenarLista(0) = [1] ++ [] = [1]
--concatenarLista 0 = []

--retornar lista de factores de un nro "n"
factores:: Integer -> [Integer]
factores n = [x | x <- [1..n], n `mod` x == 0]


--dada una lista devuelve el sucesor de c/u
mapSucesor :: [Integer] -> [Integer]
mapSucesor [] = []
mapSucesor (x: xs) = x+1 : mapSucesor xs

--dada una lista devolver solo los positivos
filtraPositivos :: [Integer] -> [Integer]
filtraPositivos [] = []
filtraPositivos (x:xs) | x >= 0 = x : filtraPositivos(xs)
		| otherwise = filtraPositivos xs

--dada una lista,devuelve copia menos ultimo elemento
menosUltimo :: [a] -> [a]
menosUltimo [] = []
menosUltimo (x: xs) = x: init xs 
--init retorna toda la lista menos el ultimo


--dada una lista, devuelve su ultimo elemento
ultimo :: [a] -> a
ultimo [] = error "lista vacia"
ultimo (x: xs) = last xs
--last devuelve el ultimo elemento de la lista


--acomodar la lista de atras para delante
ciclo :: [Integer] -> [Integer]
ciclo[] = []
ciclo xs = last xs : init xs

--por comprension suma de cuadrados de los primeros n nros
sumaCuadrados :: Integer -> Integer
sumaCuadrados n = sum[x^2|x <- [1..n]]

--Suma potencia de 2 a la n mas 1.
potenciaSuma :: Integer -> Integer
potenciaSuma n = 1 + sum[2^x|x <- [0..n]]

--funcion cuadrante..x y
cuadrante :: (Int, Int) -> String
cuadrante (x, y) 
	|x > 0 && y > 0 = "cuadrante 1"
	|x < 0 && y > 0 = "cuadrante 2"
	|x < 0 && y < 0 = "cuadrante 3"
	|otherwise = "cuadrante 4"

--cliente MB
tipoCliente :: Integer -> Integer
tipoCliente x 
	|x > 0 && x <= 100 = 1
	|x > 101 && x <= 300 = 2
	|x > 300 = 3
	|otherwise = 0

punto2 :: [Integer] -> Integer
punto2 [] = 0
punto2 (x:xs) = if ((tipoCliente x) == 3) 
		then 1 + (punto2 xs) 
		else (punto2 xs)

--punto3 :: [Integer] -> Int -> Int -> [Integer]
--punto3 []__ = []
--punto3 (x:xs) desde hasta = if (x >= desde && x <= hasta)
--			then x: (punto3 xs desde hasta)
--			else (punto3 xs desde hasta)

--Incremetar una lista de enteros
incLista :: [Integer] -> [Integer]
incLista [] = []
incLista(x: xs) = (x+1) : incLista xs

