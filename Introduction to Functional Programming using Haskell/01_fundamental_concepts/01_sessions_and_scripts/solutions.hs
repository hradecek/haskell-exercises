--------------------------------------------------------------------------------
-- | Solutions to exercises for chapter 1.1
--
--   /Introduction to Functional Programming using Haskell/,
--   by Richar Bird.
--------------------------------------------------------------------------------
module Solutions_1_1 where

-- * Definitions
-- | Returns squared number
square :: Float -> Float
square x = x * x

-- | Ex. 1.1.1
--
-- We have to apply 'square' two times. For this purpose we can use dot '(.)' operator.
--
-- Point-free vs. Point-wise style:
--
-- >    square . suqare
-- > ~> (.) square square
-- > ~> \x -> square (square x)
quad :: Float -> Float
quad = square . square

-- | Ex. 1.1.2
--
-- Solution using /guards/ syntax.
greater :: (Num a, Ord a) => a -> a -> a
greater x y
  | x > y     = x
  | otherwise = y

-- | Ex 1.1.2
--
-- Solution using /if-else/ syntax.
greater' :: (Num a, Ord a) => a -> a -> a
greater' x y = if x > y then x else y

-- | Ex. 1.1.3
--
-- Point-free vs Point-wise style:
--
-- >    (*) $ 2 * (22 / 7)
-- > ~> \x -> 2 * (22 / 7) * x
circleA :: (Fractional a) => a -> a
circleA = (*) $ 2 * (22 / 7)

