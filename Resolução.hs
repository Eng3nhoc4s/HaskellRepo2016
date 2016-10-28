-- ------------ --
-- 	CAPITULO 1 	--
-- ------------ --

-- Exercicio 1
-- a)

somaTres x y z = x + y + z

-- b)

somaTresPositivos x y z = if x > 0 && y > 0 && z > 0
				then x + y + z
				else 0
							
-- Exercicio 2

diferencaTres x y z = abs (x - y) > z

-- Exercicio 3

addDigit x y = if x >= 0 
		then (x * 10) + y
		else (x * 10) - y
-- OU
addDigit' x y = (x * 10) + if x >= 0 then y else (-y)

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

segundoElemento x = x!!1
-- OU
segundoElemento' x = head(tail x)

-- e)

penultimoElemento x = last (init x)

-- f)

invetExceptUltimo xs = head xs : reverse (tail xs)
-- OU
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

scprod xs ys = sum [x * y | (x,y) <- zip xs ys]

-- Exercício 15

geradorSimples = concat[[(x,y) | x <- [1,2,3]] | y <- [4,5,6]]

-- Exercicio 16

-- a) É expressão - Lista de Caracteres
-- b) É expressão - Triplo de caracteres
-- c) Não é expressão - Os elementos têm de ser do mesmo tipo
-- d) É expressão - Lista de Booleanos
-- e) É expressão - Lista de Strings(Lista de caracteres)
-- f) É expressão - Lista de Tuplos com um caracter e um booleano
-- g) É expressão - Lista de Booleanos
-- h) É expressão - Tuplo com lista de caracteres e lista de funcoes
-- i) Não é expressão


-- ------------ --
-- 	CAPITULO 2 	--
-- ------------ --

-- Exercício 1

-- a) Triplo de Doubles (Double, Double, Double-- a) Triplo de Doubles (Double, Double, Double)
-- b) Int
-- c) Lista de Tuplos de Float [(Double,Double)]
-- d) Tuplo (Strings,Int,[(String,Int)])
-- e) Lista de Tuplos [(String,Int,[(String,Int)])]
-- f) Lista de Strings [Strings]
-- g) Lista de Listas de Strings [[String]]

-- Exercicio 2

-- a) False
-- b) GT (Greater Than)
-- c) "TrueorFalse"
-- d) "\"As armas e os baroes\""
-- e) *** Exception: Prelude.read: no parse
-- read "True" :: Bool
-- True
-- f) True
-- g) [False,True]
-- h) []
-- i) 5.5
-- j) No instance for (Fractional Int) arising from the literal ‘3.5’
-- k) 5.5

-- Exercício 3
-- Função que recebe uma função, um a e devolve um b, a função recebe um valor ordenavel e devolve um valor Nunerico
-- Ex f x h = if h x < x then x else x+1

-- Exercício 4

-- a)
f1 :: (Ord a) => a -> a -> Bool
f1 x y = x < y

f2 :: Eq a => a -> a -> Bool -> Bool
f2 x y z = (x == y) || z

f3 :: Bool -> Bool -> Bool -> Bool
f3 x y z = x == (y || z)

f4 :: (Show a) => a -> [Char] -> [Char]
f4 x y = show x ++ y

f5 :: (Show a) => [a] -> [a] -> [Char]
f5 x y = show (x ++ y)

f6 :: (Ord a, Num a) => a -> a -> a -> Bool
f6 x y z = (x + y) > z


-- ------------ --
-- 	CAPITULO 3 	--
-- ------------ --

-- Exercício 1

-- a)
primeiroElemento (x,_) = x
 
-- b)
trocaElementos (x,y) = (y,x)

-- c)
primeiroDoTriplo (x,_,_) = x
 
-- d)
trocaXYdoTriplo (x,y,z) = (y,x,z)

-- e)
segundoDaLista (x:y:_) = y

-- f)

sndElemDoPrimeiroParListaPares ((x,y):_) = y

-- Exercício 2

-- A funcao add1 soma os elementos de um tuplo e a funcao
-- add2 soma dois numeros inteiros

-- Exercício 3
-- a)
hd1 (x:_) = x
sucessor1 y = succ (hd1 y)

-- b)
hd2 :: [Int] -> Int
hd2 (x:_) = x
sucessor2 y = hd2 y + 1

-- c)
hd3 :: [a] -> a
hd3 (x:_) = x
sucessor3 y = succ (hd3 (y))

-- As funcoes diferem na limitação aos tipos dos quais se pode obter
-- o sucessor, a funcao do ex a e do ex c permitem qualquer enumeravel
-- enquanto a da alinea b apenas permite o sucessor de uma lista de ints


-- Exercício 4

-- a) f1 dá-nos o antecessor do numero fornecido e 0 quando este numero é 0

-- b) A funcao f2 tem o mesmo efeito que f1 mas implementada através
-- de if's

-- c) A funcao f3 dá o antecessor do numero fornecido

-- d) A funcao f4 tem o mesmo efeito de f1 e f2 mas implementada
-- atraves do uso de guardas


-- Exercício 5

safetailCondicional (xs) = if null(xs) then [] else tail xs 

safetailGuardas (xs)
	| null(xs) = []
	| otherwise = tail xs
	
safetailPatternMatching [] = []
safetailPatternMatching xs = tail xs

-- Exercício 6

True \/ _ = True
_ \/ True = True
False \/ False = False

-- OU
-- False \/ False = False
-- _ \/ _ = True


-- Exercício 7

-- a)

--fromTo _ _ [] = []
fromTo a b xs = take (b - a + 1) (drop a xs)