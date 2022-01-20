{-Código fuente:
  nombre :: entradas -> salida
-}

sucesor :: Integer ->  Integer
sucesor x = x + 1 --f(x) = x + 1


--Factorial de un número entero
factorial :: Integer -> Integer
factorial x = product[1..x]

--Cuadrado de un número entero
cuadrado :: Integer -> Integer
cuadrado x = x * x

--Factorial recursivo
fact :: Integer -> Integer
fact 0 = 1
fact x = x * fact (x - 1)  


--Decidir si un número es menor a otro
es_menor :: (Integer,Integer)->Bool
es_menor (x, y) = x < y 

--Calcular el menor de dos números
menor :: (Integer,Integer)->Integer
menor (x, y) = if es_menor(x, y) then x else y

--CCalcular el valor absoluto
absoluto :: Integer -> Integer
absoluto x = if ( 0 < x ) then x else x*(-1)

--Calcular raices de segundo grado
raiz a b c
	|discr > 0 = 2
	|discr  == 0 = 1
	|discr < 0 = 0
	where discr = b*b - 4*a*c