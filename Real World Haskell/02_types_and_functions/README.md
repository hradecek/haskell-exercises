# 2 Types and Functions
1.
What are the types of the following expressions?
 - `False`
 - `(["foo", "bar"], 'a')`
 - `[(True, []), (False, [['a']])]`

2. Haskell provides a standard function `last :: [a] -> a`, that return the last element of a list. From reading the type alone, what are possible valid behaviors (ommiting crashes and infinite loops) that this function could have? What are a few things that this function clearly cannot do?

3. Write a function, `lastButOne`, that returns the element *before* the last.
4. Load your `lastButOne` function into `ghci` and try it on lists of different lengths. What happens when you pass it a lists that's too short?
