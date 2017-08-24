--------------------------------------------------------------------------------
-- | Solutions to exercises for chapter 10.1
--
--   /Introduction to Functional Programming using Haskell/,
--   by Richar Bird.
--------------------------------------------------------------------------------
module Solutions_10_1 where

-- | Ex. 10.1.1
--
-- > (>>) = (->>)
(>>-) :: Monad m => m a -> m b -> m b
f >>- g = f >>= (\_ -> g)

-- | Ex. 10.1.2
--
-- Equivalent to foldl1 (>>) . map putChar

-- | Ex. 10.1.3
-- | Ex. 10.1.4
-- | Ex. 10.1.5
-- | Ex. 10.1.6
-- | Ex. 10.1.7
-- | Ex. 10.1.8

