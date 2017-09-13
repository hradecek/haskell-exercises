import System.Environment (getArgs)

main = fmap head getArgs >>= -- get first argument passed on command line
       readFile >>=          -- read file contents
       return . words >>=    -- get list of words
       return . charC >>=    -- convert words to their length
       return . sum >>=      -- make sum of all numbers in list
       return . show >>=     -- convert Int to String
       putStrLn              -- print it
  where charC = map length
