
lista1 :: [Integer]-> Integer
lista1 [] = 0
lista1 (x: xs) = x + sum xs

factorial :: Integer -> Integer
factorial (0) = 1
factorial (x) = x * factorial (x-1)

nnita :: Integer -> Integer
nnita (x) = (1/ (factorial x)) + (1/ (factorial (x-1)))