data List a = Cons a (List a)
            | Nil
            deriving (Show)

-- Exercise 1
toList :: List a -> [a]
toList Nil         = []
toList (Cons x xs) = x : toList xs

-- Exercise 2
data MaybeTree a = MaybeTree (Maybe a) (Maybe a)
                 deriving (Show)

-- Exercise 3
myLength :: [a] -> Int
myLength = foldr (\_ -> (1+)) 0

-- Exercise 5
mean xs = let sum'    = sum xs
              length' = fromIntegral $ length xs
          in sum' / length'

-- Exercise 6
palindrome :: [a] -> [a]
palindrome xs = xs ++ (reverse xs)

palindrome' :: [a] -> [a]
palindrome' []     = []
palindrome' (x:xs) = x : palindrome' xs ++ [x]

-- Exercise 7
isPalindrome []     = True
isPalindrome [x]    = True
isPalindrome (x:xs) = (x == last xs) && isPalindrome (init xs)

-- Exercise 8

-- Exercise 9
intersperse' :: a -> [[a]] -> [a]

-- Exercise 10

-- Exercise 11

-- Exercise 12

-- Exercise 13

-- Exercise 14

-- Exercise 15

