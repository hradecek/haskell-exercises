# 1.4 Functions

## 1.4.1
Suppose `f` and `g` have the following types:
```
f :: Integer -> Integer
g :: Integer -> (Integer -> Integer)
```

Let `h` be defined by
```
h :: ...
h x y = f (g x y)
```

Fill in the correct type assigment for `h`.

Now determine which, if any, of the following statements is true:
```
h     = f. g
h x   = f . (g x)
h x y = (f . g) x y
```

## 1.4.2
Suppose we curry the arguments of the function `delta`, so that we can write `delta a b c` rather than `delta (a, b, c)`.

What is the typ of the curried version?

## 1.4.3
In mathematics one often uses logarithm to various bases; for example, `log_2`, `log_e` and `log_10`.

Give an appropriate type of a function `log` that takes a base and returns the logarithm function for that base.

## 1.4.4
Describe one appropriate type for the definite integral function of mathematical analysis, as used in the phrase 'the integral of `f` from `a` to `b`'.

## 1.4.5
Give examples of functions with the following types:
```
(Integer -> Integer) -> Integer
(Integer -> Integer) -> (Integer -> Integer)
```

## 1.4.6
Which, if any, of the following statements is true?
```
(*) x = (*x)
(+) x = (x+)
(-) x = (-x)
```

## 1.4.7
Define a function `uncurry` that converts a curried function into a noncurried version.

Show that:
```
curry (uncurry f) x y    = f x y
uncurry (curry f) (x, y) = f (x, y)
```
for all `x` and `y`.
