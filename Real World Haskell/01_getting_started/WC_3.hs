import System.Environment (getArgs)

main = fmap head getArgs >>= -- get first argument passed on command line
       readFile >>=          -- read file contents
       return . words >>=    -- get list of words
       return . length >>=   -- get count of all words in list
       return . show >>=     -- convert Int to String
       putStrLn              -- print it
