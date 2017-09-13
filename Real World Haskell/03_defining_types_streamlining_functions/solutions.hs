data List a = Cons a (List a)
            | Nil
            deriving (Show)

toList :: List a -> [a]
toList Nil         = []
toList (Cons x xs) = reverse $ x : toList xs
                -- = toList xs ++ [x]

data MaybeTree a = MaybeTree (Maybe a) (Maybe a)
                 deriving (Show)
