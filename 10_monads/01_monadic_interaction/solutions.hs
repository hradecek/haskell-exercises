--------------------------------------------------------------------------------
-- | Solutions to exercises for chapter 10.1
--
--   /Introduction to Functional Programming using Haskell/,
--   by Richar Bird.
--------------------------------------------------------------------------------
module Solutions_10_1 where

import Data.Char (ord)

-- | Ex. 10.1.1
--
-- > (>>>) = (>>)
(>>>) :: Monad m => m a -> m b -> m b
f >>> g = f >>= (\_ -> g)

-- | Ex. 10.1.2
--
-- Equivalent to foldl1 (>>) . map putChar

-- | Ex. 10.1.3
-- | Ex. 10.1.4
-- | Ex. 10.1.5a
--
-- Using operator (>>=), define operator (<>) such that:
(<>) :: (a -> IO b) -> (b -> IO c) -> (a -> IO c)
f <> g = \x -> f x >>= g

-- | Ex. 10.1.5b
--
-- Using operator (<>) defined above, define operator (>>>=) such that:
-- > (>>>=) = (>>=)
--(>>>=) :: Monad m => m a -> (a -> m b) -> m b
--f >>>= g = \_ -> f <> g

-- | Ex. 10.1.6
--
-- @
--   do { C; do { D; r}} ~>
--   C >> do { D; r } ~>
--   C >> D >> r ~>
--   do { C; D; r }
-- @

-- | Ex. 10.1.7
reveal :: IO ()
reveal = do c  <- getChar
            if c == 'q' then do
                putChar '\n'
                return ()
            else do
                putChar '\n'
                putStrLn (show (ord c))
                reveal

-- | Ex. 10.1.8
--
-- See hangman.hs
