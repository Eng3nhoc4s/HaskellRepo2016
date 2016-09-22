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
