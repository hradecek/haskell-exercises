# 1.2 Evaluation

## 1.2.1
In order to evaluate `x * y`, the expressions `x` and `y` are reduced to normal form and then multiplication is performed. Does evaluation of `square infinity` terminate?

Note: `infinity` is defined as follows:
```
  infinity :: Integer
  infinity = infinity + 1
```

## 1.2.2
How many terminating reduction sequences are there for the expression `square (3 + 4)`?

## 1.2.3
Imagine a language of expressions for representing integers defined by the syntax rules:
 1. `zero` is an expression
 2. if `e` is an expression, the so are `succ (e)` and `pred (e)`

An evaluator reduces expressions in this language by applying the following rules repeatedly until no longer possible:
 - `succ (pred (e)) = e`
 - `pred (succ (e)) = e`

Simplyfy the expression `succ (pred (succ (pred (pred zero))))`.

In how many ways can the reduction rules be applied to this expression? Do they all lead to the same final result? Prove that the process of reduction must terminate for all given expressions. *(Hint: Define an appropriate notion of expression size and show that each reduction step does indeed reduce size.)*

## 1.2.4
Carrying on from previous question, suppose an extra syntactic rule is added to the language:
 3. if `e1` and `e2` are expressions, then so is `add (e1, e2)`.

The corresponding reduction rules are:
 - `add (zero, e2)      = e2`
 - `add (succ (e1), e2) = succ (add (e1, e2))`
 - `add (pred (e1), e2) = pred (add (e1, e2))`

Simplify the expression `add (succ (pred (zero)), zero)`.

Count the number of different ways the reduction rules can be applied to the above expression. Do they always lead to the same final result?

## 1.2.5
Now suppose we define the size of an expression by the following rules:

 - `size (zero)         = 1`
 - `size (succ (e))     = 1 + size (e)`
 - `size (pred (e))     = 1 + size (e)`
 - `size (add (e1, e2)) = 1 + 2 * (size (e1) + size (e2))`

Show that application of any of the five reduction rules given above reduces expressoin size. Why does this prove that the process of reduction must always terminate for any given initial expression?
