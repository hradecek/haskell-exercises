# 2.1 Booleans

# 2.1.1
Define `(&&)` and `(||)` using conditional expressions.

# 2.1.2
The definition of `(<)` given in the text for arguments of type `Bool` has `False < True`.
This reflects the fact that `False` becomes before `True` in the declaration of the values of type `Bool`.
Naturally, one also expects that both `False < False` and `True < True` evaluate to `False`.

Now consider the alternative definition `(x < y) = not (x || y)`, where `(||)` is defined by pattern matching on the left argument.

Why is this definition of `(<)` not correct?

# 2.1.3
In logic, implication, denoted `=>`, is defined by the condition that `x => y` is false only if `x` is `True` and `y` is `False`.

Give a formal definition of implication as an operation on `Bool`.

# 2.1.4
Rewrite the declaration of the type class `Eq` by giving a default definition of `(!=)`.

# 2.1.5
Rewrite the definition of `analyse` so that the cases in the case analaysis do not depend on the roder in which they are given.

# 2.1.6
Define a function `sort3` that sorts three integeres into nondecreasing order.

Hence define a function, `analyse'` say, that does not depend on the assumption that its arguments are in nondecreasing order.

# 2.1.7
How many equations would you have to write to define `Triangle` as an instance of the type class `Ord`?

# 2.1.8
Are there any numbers that can be compared by `(==)` but cannot sensibly be compared by `(<)`?

# 2.1.9
The definition of `(==)` on a datatype should ensure that this operation is:
 1. *reflexive*, that is, `x == x` for all `x`;
 2. *symmetric*, that is `x == y` implies `y == x`;
 3. *transitive*, that is, `x == y` and `y == z` imply `x == z`.

Show that these properties hodl for the definition of `(==)` on `Bool`.

# 2.1.10
What properties of `(<)` would you expect to hold in any instance declaration?
