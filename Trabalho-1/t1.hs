-- Trabalho 1 de Princípios de Programação

-- Exercício 1

-- Esta funcão gera triplos de pitagoricos com coordenadas até n
prob01 :: (Num a, Ord a, Enum a) => a -> [(a, a, a)]
prob01 n = [(a,b,c) | a <- [1..n], b <- [1..n], c <- [1..n], a < b, b < c, a^2 + b^2 == c^2, a+b+c == n]

-- Exercicio 2

-- Gera uma lista de numeros de 1 a (n-1) atraves da multiplicação de dois numeros inteiros
--gerador :: (Num a, Enum a) => a -> [a]
gerador n = [ b*c | b <- [1..(n-1)], c <- [b..(n-1)]]

-- Pega num numero e transforma numa lista de digitos
digitosParaLista :: Integral a => a -> [a]
digitosParaLista 0 = []
digitosParaLista n = digitosParaLista (div n 10) ++ [mod n 10]

-- Pega nos valores fornecidos pelo gerador e transforma numa lista de listas de digitos
lln :: Integral a => a -> [[a]]
lln n = [digitosParaLista x | x <- gerador n, length(digitosParaLista x) > 1]

-- Pega numa lista de digitos e converte de volta para digito
listaParaDigito :: Num a => [a] -> a
listaParaDigito [] = 0
listaParaDigito (x:xs) = x * (10^length xs) + listaParaDigito xs

-- Remove devolve uma lista sem elementos duplicados
removeDups :: Eq a => [a] -> [a]
removeDups [] = []
removeDups (x:xs)
    | elem x xs = removeDups xs
    | otherwise = x : removeDups xs

-- Esta funcao gera uma lista com numeros palindromicos originados pela multiplicacao
-- de numeros inteiros menores que o valor n fornecido
prob02 :: Integral a => a -> [a]
prob02 n = removeDups(filtraPalindromos (lln n))
    where
        filtraPalindromos [] = []
        filtraPalindromos (x:xs)
            | x == (reverse x) = listaParaDigito x : filtraPalindromos xs
            | otherwise = filtraPalindromos xs
