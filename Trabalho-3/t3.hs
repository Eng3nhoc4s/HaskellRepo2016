module TaggedSet (TaggedSet,
                            empty,
                            nullSet,
                            belongs,
                            singleton,
                            insertSet,
                            removeSet,
                            insertTag,
                            merge
                            ) where
                            
import Prelude
import Data.List
                            
data TaggedSet a = TS [(a, [String])]

empty :: TaggedSet a
empty = TS []

nullSet :: TaggedSet a -> Bool
nullSet (TS [])    = True
nullSet _           = False

belongs :: Ord a => a -> TaggedSet a -> Bool
belongs _ (TS [])             = False
belongs x (TS ((y,_):ys))  = x == y || ( x > y && belongs x (TS ys))

singleton :: a -> TaggedSet a
singleton x = (TS [(x,[])])

insertSet :: Ord a => a -> TaggedSet a -> TaggedSet a
insertSet x (TS xs) = TS (insert x xs)
    where
        insert x []     = [(x,[])]
        insert x all@((a,b):ys)
          | x==a       = all
          | x < a       = (x,[]):all
          | otherwise = (a,b):insert x ys

           
removeSet :: Ord a => a -> TaggedSet a -> TaggedSet a
removeSet x (TS xs) = TS (remove x xs)
    where
        remove _ []   = [(x,[])]
        remove x ((a,b):ys)
          | x <= a     = ys
          | otherwise = (a,[]) : remove x ys

          
insertTag::Ord a => String -> a -> TaggedSet a -> TaggedSet a
insertTag str tag (TS xs) = TS (insert str tag xs)
    where
      insert _ _ [] = []
      insert str tag all@((a,b):xs)        
        | tag == a = (a, sort(str : b)) : xs
        | otherwise = (a,b) : insert str tag xs

     
merge :: Ord a => TaggedSet a -> TaggedSet a -> TaggedSet a
merge (TS []) (TS y) = (TS y)
merge (TS x) (TS []) = (TS x)
merge (TS x) (TS y) = TS (mergeTS x y)
    where
        mergeTS x [] = x
        mergeTS [] y = y
        mergeTS allX@((x,lx):xs) allY@((y,ly):ys)
            | x == y = (x, sort $ nub(lx ++ ly)) : mergeTS xs ys
            | x < y = (x,lx) : mergeTS xs allY
            | otherwise = (y,ly) : mergeTS allX ys
    

instance Show a => Show (TaggedSet a) where
    show (TS ts) = "{" ++ printTaggedSet ts ++ "}"

printTaggedSet :: Show a => [(a,[String])] -> String
printTaggedSet [] = " "
printTaggedSet [(elem,tags)] = show elem ++ "#" ++ show tags
printTaggedSet ((elem,tags):elems) = show elem ++ "#" ++ show tags ++ "," ++ printTaggedSet elems
