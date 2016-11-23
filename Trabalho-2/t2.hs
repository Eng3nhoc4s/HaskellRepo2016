-- Trabalho 2 de Principios de Programação

--  Alias Regra
type Rules a = [(a,[a])]

regras = [(1,[2,1]), (2,[0,2,1])]
axioma = [1]

-- Gets the corrects expansion for an Axiom
getExpansion :: Eq a => Rules a -> a -> [a]
getExpansion [] _ = []
getExpansion rules element = foldl (\acc (x,y) -> if x == element then y else acc) [element] rules

-- Takes a list of rules, a list of axioms and translates each axiom according to its rule
translateAxiomList :: Eq a => [(a, [a])] -> [a] -> [a]
translateAxiomList [] _ = []
translateAxiomList _ [] = []
translateAxiomList rules (axiom:axiomL) = getExpansion rules axiom ++ translateAxiomList rules axiomL

-- Takes a lot of work to do and isn't that pretty
-- Just kidding, obrigado por me ensinar que "o numero seguinte é o que vem depois do anterior" =)
turtle :: Eq a => Rules a -> [a] -> Int -> [a]
turtle [] _ _ = []
turtle _ [] _ = []
turtle _ axiom 0 = axiom
turtle rules axioms n = turtle rules ( translateAxiomList rules axioms ) (n - 1)
