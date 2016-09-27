-- Capitulo 1

-- Exercicio 1
-- a)

somaTres x y z = x + y + z

-- b)

somaTresPositivos x y z = if x > 0 && y > 0 && z > 0
							then x + y + z
							else 0
							
-- Exercicio 2

diferencaTres x y z = mod (x - y) > z

-- Exercicio 3

addDigit x y = if x > 0 
					then (x * 10) + y
					else (x * 10) - y

-- Exercicio 4

-- a) 2
-- b) 1
-- c) 2
-- d) 1
-- e) 0
-- f) 1
-- g) 2

-- Exercicio 5

-- a)

maisQueDez x = (length x) > 10

-- b)

estaVazia x = null x

-- c)

tiraPrimeiroUltimo x = tail(init x)

-- d)

segundoElemento x = if (length x) >= 2 then [x!!1] else []

-- e)

penultimoElemento x = last (init x)

-- f)

inverteExceptoUltimo (x:xs) = x : (reverse xs)

-- g)

somaPrimeiros5 x = sum (take 5 x)

-- h)

somaNPrimeiros n x = sum (take n x)

-- Exercicio 6

partition s e p = [ x | x <- [s,s + ((e-s)/p)..e]]

-- Exercicio 7

-- a) [2,4,6]
-- b) [4,16,36,64]
-- c) "6789"
-- d) [(1,1),(1,2),(1,3),(3,1),(3,2),(3,3)]
-- e) [(1,1),(1,2),(1,3),(3,1),(3,2),(3,3)]

-- Exercicio 8

soma100Quadrados = sum [ x^2 | x <- [1..100]]

-- Exercicio 9

triploPitagorico n = [(x,y,z) | x <- [1..n], y <- [1..n], z <- [1..n], (x^2 + y^2 == z^2)]

-- Exercicio 10

factors n = [x | x <- [1..(n-1)], (mod n x) == 0]
perfects n = [x | x <- [1..n], x == sum(factors x)]

-- Exercicio 11

powers :: [Int]
powers = [ x^2 | x <- [1..]]

-- Exercicio 12

reproduce :: [Int] -> [Int]
reproduce xs = concat [ replicate x x | x <- xs]

-- Exercicio 13

pairs :: (Num a, Eq a, Enum a) => a -> [(a, a)]
pairs n = [ (x,y) | x <- [1..n], y <- [x..n]]

-- Exercicio 14

scprod xs = [ fst x * snd x | x <- xs]