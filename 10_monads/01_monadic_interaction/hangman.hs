hangman :: IO ()
hangman = do putStrLn "Think of a word:"
             word <- silentReadLn
             putStrLn "Now try to guess it!"
             guess word

silentReadLn :: IO String
silentReadLn = do c <- getChar
                  if c == '\n' then do
                      putChar c
                      return []
                  else do putChar '-'
                          cs <- silentReadLn
                          return (c:cs)

guess :: String -> IO ()
guess word = do putStrLn "Guess: "
                cs <- getLine
                if cs == word then do
                    putStrLn "You got it"
                else do
                    putStrLn (compareWithPosition word cs)
                    guess word

compare' :: String -> String -> String
compare' word cs = map check word
                   where check w = if w `elem` cs then w else '-'

compareWithPosition [] _ = ""
compareWithPosition (w:word) [] = "-" ++ compareWithPosition word []
compareWithPosition (w:word) (c:cs) = if w == c then [w] ++ compareWithPosition word cs
                                      else "-" ++ compareWithPosition word cs

main = hangman
