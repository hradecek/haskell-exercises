-----------------------------------------------------------------------------
-- | Solutions to exercises for chapter 3.1
--
--   /Introduction to Functional Programming using Haskell/,
--   by Richard Bird.
-----------------------------------------------------------------------------
module Solutions_3_1 where

-- | Ex. 3.1.1
data Nat = Zero         -- ^ A lower bound called 'Zero' a.k.a '0'
         | Succ Nat     -- ^ A natural number defined by number of its successors
         deriving Show

-- | Ex. 3.1.2
convert :: Nat -> Integer
convert Zero     = 0
convert (Succ n) = 1 + (convert n)

-- | Ex. 3.1.3
-- | Plus
--
-- Evaluation example:
-- @
--   Succ (Succ Zero) `plus` Succ Zero   -- ~> [2nd pattern]
--   Succ (Succ Zero `plus` Succ Zero)   -- ~> [2nd pattern]
--   Succ (Succ (Zero `plus` Succ Zero)) -- ~> [1st pattern]
--   Succ (Succ (Succ Zero))
-- @
plus :: Nat -> Nat -> Nat
Zero `plus` m = m
(Succ m) `plus` n = Succ (m `plus` n)

-- | Multiplication
-- @
--   Succ (Succ Zero) `mul` Succ (Succ Zero)   -- ~> [2nd pattern]
--   (Succ (Succ Zero) `mul` Succ Zero) `plus` Succ (Succ Zero)
--   ((Succ (Succ Zero) `mul` Zero) `plus` Succ (Succ Zero)) `plus` (Succ (Succ Zero))
--   Zero `plus` Succ (Succ Zero) `plus` (Succ (Succ Zero))
-- 
mul :: Nat -> Nat -> Nat
m `mul` Zero = Zero
m `mul` Succ n = (m `mul` n) `plus` m
-- | Ex. 3.1.4
-- n + 1 -- reductions of mull with zero
-- + (m*n) --  plus m reductions of n `plus`
-- 1 + n + m*n = 1 + n * (m + 1)
-- | Ex. 3.1.5
-- | Ex. 3.1.6
