# Monadic interaction
## 10.1.1
Define (>>) in terms of (>>=).

## 10.1.2
What is the effect of the command `foldl (>>) done . map putChar`

## 10.1.3
When performed, `getChar` reads a character and returns the character.
Describe the effect of performing `getChar >>= return`.
What relationship between (>>=) and `return` doest this suggest?

## 10.1.4
Describe the effect of performing `return '!' >>= putChar`.
What relationship between (>>=) and `return` does this suggets?

## 10.1.5
Using (>>=), define an operator (<>) with type:
```
(<>) :: (a -> IO b) -> (b -> IO c) -> (a -> IO c)
```
Using (<>), define (>>=).
## 10.1.6
By expandic do notation, show that
```
do { C; do {D; r}} = do {C; D; r}
```

## 10.1.7
Rewrite the reaveal program so that it repeatedly prompts for a character,
revealing its numeric value, until the user types a particular character, 'q' say,
to terminate the interaction.

## 10.1.8
The hangman game is perhaps too easy. Modify the response to guess
so that letters are revealed only if they are present in the guess
in the correct position.

