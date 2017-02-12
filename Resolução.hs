-- ------------ --
--     CAPITULO 1     --
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
--     CAPITULO 2     --
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
--     CAPITULO 3     --
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

fromTo _ _ [] = []
fromTo a b xs = take (b - a + 1) (drop a xs)

cap3_ex7_tail xs = fromTo 1 ((length xs) - 1) xs

cap3_ex7_init xs = fromTo 0 ((length xs) - 2) xs

nth xs n = fromTo n n xs

-- b)

halve xs = (take (halfL) xs, drop (halfL) xs)
    where
        halfL = div (length xs) 2
        
        
-- Exercício 8

-- a) second :: [a] -> a

-- b) swap :: (a,b) -> (b,a)

-- c) pair :: a b -> (a,b)

-- d) double (Num a) => a -> a

-- e) palin :: (Eq a) => [a] -> Bool

-- f) twice :: (a -> a) -> a -> a


-- Exercício 9

-- a) ([1,2,3,4],[5])

-- b) True

-- c) "cdefghijklmnopqrstuvwx"

-- d) "pp"

-- e) [(1,'a'),(2,'b'),(3,'c')]


-- ------------- --
-- CAPITULO 4     --
-- ------------- --

-- Exercicio 1 

-- a)

sum':: Num a => [a] -> a
sum' [] = 0
sum' (x:xs) = x + sum' xs

-- b)

replicate' :: Int -> a -> [a]
replicate' n x
    | n <= 0 = []
    | otherwise = x : replicate (n-1) x

-- c) 

maximo :: Ord a => [a] -> a
maximo (x:[]) = x
maximo (x:y:xs)
    | x >= y = maximo(x:xs)
    | otherwise = maximo (y:xs)

-- d)

elem' :: (Eq a) => a -> [a] -> Bool  
elem' a [] = False  
elem' a (x:xs)  
    | a == x    = True  
    | otherwise = elem a xs
    
-- e)

substitui :: (Eq a) => a -> a -> [a] -> [a]
substitui _ _ [] = []
substitui a b (x:xs)
    | x == a = b : substitui a b xs
    | otherwise = x : substitui a b xs
    
-- f)

altera :: (Ord a) => [a] -> a -> a -> [a]
altera [] _ _ = []
altera (x:xs) a b
    | x < a = b : altera xs a b
    | otherwise = x : altera xs a b
    
-- g)

multiplos :: [Int] -> Int -> [Int]
multiplos [] _ = []
multiplos (x:xs) n
    | mod x n == 0 = x : multiplos xs n
    | otherwise = multiplos xs n

-- h)

zip' :: [a] -> [b] -> [(a,b)]
zip' [] _ = []
zip' _ [] = []
zip' (x:xs) (y:ys) = (x,y) : zip' xs ys

-- i)

potencias :: Integer -> [Integer] -> [Integer]
potencias _ [] = []
potencias n (x:xs) = n^x : potencias n xs

-- j)

posicoes :: [Int] -> Int -> [Int] 
posicoes [] _ = error("The list is Empty")
posicoes xs n =
    aux xs n 0
    where
        aux [] _ _ = []
        aux (x:xs) n acc
            | mod x n == 0 = acc : aux xs n (acc + 1)
            | otherwise = aux xs n (acc + 1)
            
-- k)

frase :: Int -> [(Int,String)] -> String
frase _ [] = []
frase n ((i,s):xs)
    | i == n = s ++ frase n xs
    | otherwise = frase n xs
    
-- l)

trocaPares :: [a] -> [a]
trocaPares [] = []
trocaPares (x:[]) = [x]
trocaPares (x:y:xs) = y:x :trocaPares xs

-- m)

fusao :: (Ord a, Num b) => [(a,b)] -> [(a,b)] -> [(a,b)]
fusao [] y = y
fusao x [] = x
fusao ((a1,b1):xs) ((a2,b2):ys)
    | a1 == a2 = (a1, b1 + b2) : fusao xs ys
    | a1 > a2 = (a2,b2) : fusao ((a1,b1):xs) ys
    | a1 < a2 = (a1,b1) : fusao xs ((a2,b2):ys)

-- Exercicio 2

repBinaria d
    | d < 2 = d
    | otherwise = (mod d 2) + (repBinaria (div d 2)*10)
    
-- Exercicio 3

odioso :: Int -> Bool
odioso n
    | n < 0 = False
    | mod (qtdUns n) 2 == 0 = False
    | otherwise = True
    where
        qtdUns n
            | n < 2 = n
            | otherwise = mod n 2 + qtdUns (div n 2)
            
-- Exercicio 4 [INCOMPLETO]
--repBaseJ n j
--    | n < 2 = n
--    | otherwise =
--        | j < 9 = (mod n j) + (repBinaria (div n j) * 10)

-- Exercicio 5

-- a)
insert :: Ord a => a -> [a] -> [a] 
insert x [] = [x]
insert x (l:ls)
    | x <= l = x:l:ls
    | otherwise = l : insert x ls
    
-- b)
insertSort :: Ord a =>[a] -> [a]
insertSort [] = []
insertSort ls = auxInsertSort ls []
    where
        auxInsertSort [] x = x
        auxInsertSort (l:ls) acc = auxInsertSort ls (insert l acc)

-- Exercício 6

-- a)
merge :: Ord a =>[a] -> [a] -> [a]
merge a [] = a
merge [] b = b
merge l1@(a:la) l2@(b:lb)
    | a < b     = a : merge la l2
    | a == b   = a : merge la lb
    | a > b     = b : merge l1 lb
    
-- b)

firstHalf :: [a] -> [a]
firstHalf xs = take (length xs `div` 2) xs

secondHalf :: [a] -> [a]
secondHalf xs = drop (length xs `div` 2) xs

mergesort :: Ord a => [a] -> [a]
mergesort [] = []
mergesort [x] = [x]
mergesort xs = merge (mergesort (firstHalf xs)) (mergesort (secondHalf xs))
    
-- ------------- --
-- CAPITULO 5     --
-- ------------- --   

-- Exercício 1

-- a) (*2) :: Num a => a -> a

-- b) (>0) :: (Ord a, Num a) => a -> Bool

-- c) (1/) :: Fractional a => a -> a

-- d) (/2) :: Fractional a => a -> a
    
-- e) (+1) :: Num a => a -> a

-- f) (++"\n") :: [Char] -> [Char]


-- Exercício 2

-- a) add1 (x,y) = x + y
--     Recebe um tuplo e devolve a soma dos seus elementos

-- b) add2 x y = x + y
--     Recebe dois numeros e devolve a soma dos mesmos

-- c) add3 x = (x+)
--     Recebe um numero e devolve uma função que recebe 
--     um número e que devolve a sua soma
    

-- Exercício 3

-- a) map (+1) [1..3]
--     map (+1) [1..3] :: (Num b, Enum b) => [b]
--     [2,3,4]

-- b) map (>0) [3,-5,-2,0]
--     map (>0) [3,-5,-2,0] :: [Bool]
--     [True,False,False,False]

-- c) filter (>5) [1..6]
--     filter (>5) [1..6] :: (Ord a, Num a, Enum a) => [a]
--     [6]

-- d) filter even [1..10]
--     filter even [1..10] :: Integral a => [a]
--     [2,4,6,8,10]

-- e) filter (>0) (map (^2) [-3..3])
--     filter (>0) (map (^2) [-3..3]) :: (Ord a, Num a, Enum a) => [a]
--     [9,4,1,1,4,9]

-- f) map (^2) ( filter (>0) [-3..3])
--     map (^2) ( filter (>0) [-3..3]) :: (Ord b, Num b, Enum b) => [b]
--     [1,4,9]

-- g) map (++"s") ["A", "arte" , "do", "aluno"]
--     map (++"s") ["A", "arte" , "do", "aluno"] :: [[Char]]
--     ["As","artes","dos","alunos"]

-- h) map ("s"++) ["O", "aluno","bem-comportado"]
--     map ("s"++) ["O", "aluno","bem-comportado"] :: [[Char]]
--     ["sO","saluno","sbem-comportado"]

-- i) map (map (\x -> x * x)) [[1,2],[3,4,5]]
--    map (map (\x -> x * x)) [[1,2],[3,4,5]] :: Num b => [[b]]
--    [[1,4],[9,16,25]]


-- Exercício 4

zipWith' :: (a->b->c) -> [a] -> [b] -> [c]
zipWith' f (x:xs) (y:ys) = f x y : zipWith f xs ys
zipWith' _ _ _ = []


-- Exercício 5

-- a)
takeWhile' :: (a -> Bool) -> [a] -> [a]
takeWhile' _ [] =  []
takeWhile' p (x:xs)
            | p x          =  x : takeWhile' p xs
            | otherwise =  []

            
-- b) 
dropWhile' :: (a -> Bool) -> [a] -> [a]
dropWhile' _ [] =  []
dropWhile' p (x:xs)
            | p x          = dropWhile' p xs
            | otherwise =  xs


-- Exercício 6

dropUntil' :: (a -> Bool) -> [a] -> [a]
dropUntil' _ [] =  []
dropUntil' p (x:xs)
            | p x          =  x:xs
            | otherwise = dropUntil' p xs
            
            
-- Exercício 7

aplica :: [a->a] -> [a] -> [a]
aplica [] a = a
aplica _ [] = []
aplica (f:fs) xs = aplica fs (map f xs)


-- Exercício 8 ??

-- Exercício 9

-- a) (\ x -> x + 1) 
--     (\ x -> x + 1) :: Num a => a -> a

-- b) (\ x -> x + 1) 6       -> 7
--     (\ x -> x + 1) :: Num a => a -> a 

-- c) (\x -> x > 0)           -> True
--     (\x -> x > 0) :: (Ord a, Num a) => a -> Bool

-- d) (\x y -> x + y)        -> Soma os valores
--     (\x y -> x + y) :: Num a => a -> a -> a

-- e) (\ x y -> x + y) 7    -> falta um argumento
--     (\ x y -> x + y) 7 :: Num a => a -> a

-- f) (\ x y -> x + y) 7 3  -> 10
--    (\ x y -> x + y) 7 3 :: Num a => a :: Num a => a

--g) (\x -> (\y -> x + y)) 8 9   -> 17
--    (\x -> (\y -> x + y)) 8 9 :: Num a => a

--h) \ f x -> f ( f x)                             -> Mal formado

--i) (\ f x -> f ( f x)) (\ y -> y + 1) 6   -> 8
--   (\ f x -> f ( f x)) (\ y -> y + 1) 6 :: Num a => a


-- Exercício 10

mult x y z = x * y * z
multLambda = (\x y z -> x * y * z) 


-- Exercício 11 ??


-- Exercício 12

isNonBlank :: Char -> Bool
isNonBlank = (\c -> not $ c == ' ' || c == '\t' || c == '\n')


-- Exercício 13 ??


-- Exercício 14

--curry’ :: ((a,b)->c)->a->b->c e 

--uncurry’ :: (a->b->c)->(a,b)->c


-- Exercício 15

-- a) foldr (\ y z -> y-3 + z) 0 [1..4]
--     foldr (\ y z -> y-3 + z) 0 [1..4] :: (Num a, Enum a) => a

-- b) foldr (\ x y -> if x>0 then x+y else y) 0 [4,-3,2,-1]
--     foldr (\ x y -> if x>0 then x+y else y) 0 [4,-3,2,-1] :: (Ord a, Num a) => a

-- c) foldr (\ x y -> x^2 + y) 0 [2..5]
--     foldr (\ x y -> x^2 + y) 0 [2..5] :: (Num a, Enum a) => a

-- d) foldr (-) 1 [-3..(-1)]
--     foldr (-) 1 [-3..(-1)] :: (Num b, Enum b) => b

-- e) foldr (\ x s -> if x==’z’ then x:s else s) [] "Oz alunoz dze PzPz
--     foldr (\ x s -> if x=='z' then x:s else s) [] "Oz alunoz dze PzPz" :: [Char]


-- Exercício 16

map' :: (t1 -> t) -> [t1] -> [t]
map' f [] = []
map' f xs = foldr (\x xs -> (f x):xs) [] xs

--filter' :: (a -> Bool) -> t a -> [a]
filter' p xs = foldr (\x xs -> if p x then x : xs else xs) [] xs


-- Exercício 17

aplica' :: (a->a) -> [a] -> [a]
aplica' f xs = foldr (\x acc -> (f x) : acc) [] xs


-- Exercício 18

binary2decimal xs = foldr (\(x1,x2) y -> if x2/=0 then (2^x1)+y else y) 0 (zip [0..(length xs)-1] (reverse xs))


-- Exercício 19

poly :: Int -> [Int] -> Int
poly n (x:xs) = (x * (n^length xs)) + poly n xs


-- Exercício 20

selectApply :: (a -> b) -> (a -> Bool) -> [a] -> [b]
selectApply func comp xs= map func (filter comp xs)


-- Exercício 21

-- map map :: [a -> b] -> [[a] -> [b]]

-- map . map :: (a -> b) -> [[a]] -> [[b]]

gz :: [[Int]] -> [[Bool]]
gz ls = map (map (>0)) ls


-- Exercício 22 ??

-- Exercício 23 ??

-- Exercício 24 ??


-- ------------- --
-- CAPITULO 6     --
-- ------------- --

-- Exercício 1

module Lista (Lista (ML),
empty,
singleton,
--insert,
--union,
--intersection,
nullLista,
--size,
--member,
--filter,
)where

import Data.List

data Lista a = ML [a]

empty :: Lista a
empty = ML []

singleton :: a -> Lista a
singleton a = ML [a]

nullLista :: Lista a -> Bool
nullLista (ML []) = True 
nullLista (ML [x]) = False 