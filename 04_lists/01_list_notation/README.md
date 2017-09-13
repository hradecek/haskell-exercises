# List notation

## 4.1.1
Give an example of an expression that contains two occurrences of the empty list, the first occurrence having type `[Bool]` and the second having type `[Char]`

## 4.1.2
Complete the following instance declaration:
```
instance (Ord a) => Ord [a] where
...
```

Recall from Chapter 2 that, for the particular type `[Char]`, the ordering on strings is lexicographic. The general definition of <= on lists should be lexicographic too.

## 4.1.3
Consider the following two definitions of the function `last` that returns the last element of a nonempty list:
```
last (x:xs)  = if null xs then x else last xs
last' (x:xs) = if xs == [] then x else last xs
```

The difference between `last` and `last'` is that they have slightly different types:
```
last  :: [a] -> a
last' :: (Eq a) => [a] -> a
```

Since the definition of the `last'` involves an explicit equality test, its type is restricted to lists whose elements are drawn from an equality type. Give an expression `e` such that the evaluator responds differenty to `last e` and `last' e`.

## 4.1.4
The dual view of lists is to construt them by adding elements to end of the lists:
```
data List' a = Nill | Snoc (List' a) a
```

`Snoc`, of course, is just `Cons` backwards. With this view of lists, `[1,2,3]` would be represented as an element of `List' Int` by:
```
Snoc (Snoc (Snoc Nil 1) 2 ) 3
```

Exactly the same information is provided by the two views, but it is organised differently. For example, the function `head`, which returns the first element of a nonempty list is to define with datatype `[a]`, but more complicated with `List' a`. Give the definitions of `head` for the two types. Give function
```
convert :: List' a -> [a]
```
for converting from one datatype to the other.
