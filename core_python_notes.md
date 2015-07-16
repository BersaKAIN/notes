# Python Basics

code blocks or "suite" are identified by indentation

`(x, y, z) = (1, 2, 'a string')` multiple assignment is allowed and parenthesis is preferred by the style guide

## module structure

- Startup Line `#/usr/bin/env python` as the first line

- Module Documentation

- Module Imports

- Variables Declaration
Declares the global variables

- Class Declaration

- Function Declaration

- Main Body
````
if __name__ == '__main__':
	main()
````
Before the main body, all code are just declarations and imports.

All code at this level is executed, whether this module is imported or started as a script; generally does not include much functional code, but rather gives direction depending on mode of execution.

If the file is imported, __name__ will contain the name fo the module
If the file is executed directly, __name__ will contain '__main__'


## Memory Management
Python is using ref count as the memory management system.
There is no mechanism like weak ref in swift to handle cyclic reference. Instead, it is the interpreter to handle cycle behind the scene.

## Use local variables to substitute module attributes
If some attributes of a module is going to be accessed quite some times, it's better to substitute it with local varialbe. This is because getting the attributes will involve module look up and then looking up global variables which might be slow.

## Modules might be useful
- Debugger: pdb
- Logger: logging
- Profilers: profile, hotshot, cProfile

# Python Objects

A python object has three characteristics
- IDENTITY
Unique for every object, the BIF id(obj) will return the memory address of the obj.

- TYPE
What kind (class) of value the object can hold. The BIF type() will return its type. Note that the returned type is also a object.

- VALUE
The data represented by the object.


## Primitive types in Python

- Numbers (separate subtypes; three are integer types)
-- Integer
--- Boolean
--- Long integer
--Floating point real number
--Complex number
- String
- List
- Tuple
- Dictionary

### Boolean
The following are considered False in Python.

- Numeric 0:
0, 0.0, 0L, 0+0j 

- Length 0:
"", [], {}, ()

- Boolean
False

- None

Any value for an object other than those above is considered to have a true value, i.e., non-empty, non-zero, etc. User-created class
instances have a false value when their nonzero (__nonzero__()) or length (__len__()) special methods, if defined, return a zero value.

## Internal Types

### Slice Objects
Slice objets allows for different kinds of indexing(subscripting) in python.
- Stride Indexing
[begin_index: end_index: stride]
- Multidimensional Indexing
[begin_index1: ending_index1, begin_index2: ending_index2]

- Ellipsis Objects ???

- xrange
A memory efficient version of range()

## Object Value Comparison
Using operators like:
<, <=, >, >=, !=, ==, <>

These are only comparing the values of objects.

## Object Identity Comparison
Using operators like:
is, is not


- cmp(obj1, obj2)
Compares obj1 and obj2, returns integer i where: i < 0 if obj1 < obj2
i > 0 if obj1 > obj2
i == 0 if obj1 == obj2

The comparison used is the one that applies for that type of object, whether it be a standard type or a user-created class; if the latter, cmp() will call the class's special __cmp__() method.

- repr(obj) or `obj`
Returns evaluatable string representation of obj.

- str(obj)
Returns printable string representation of obj.

- type(obj)
Determines type of obj and return type object.

## Type categorization



- Atomic vs Container
Atomics (Scalar) are objects that can only hold one value. Eg: Numbers (all numeric types), strings (all are literals)
Containers are capable of holding multiple values. Eg: Lists, Dicts, Tuples

- Mutable vs Immutable
Mutable: Lists, Dicts
Immutable: Numbers, Strings, Tuples

- Access Model of data

Direct: Numbers
Sequence: Strings, Lists, tuples
Mapping: Dicts

# Numbers

Numerical Types in python are
Intc
Long
Float
Complex

## Division
/ is classic division
// is floor division

However i don't see difference in python 2.7

# Sequences
There are seven sequence types: strings, Unicode strings, lists, tuples, bytearrays, buffers, and xrange objects.

## Slices
Values in sequence types can be accesses through slices. Slices are of the general form [<start>:<end>:<step>]. Start is inclusive and end is exclusive. If you put None or empty in these fields, start will be default 0, end will be default len(sequence) and step will be 1. These indices can also be negative integers meaning the last xth element.

## Sequences and iterables and their BIFs

As said, sequences are only the previous three types but more can conform to the iterable protocal/interface.
As an iterable, it will need to perform a one pass over all its members, so it needs to implements __iter__() and __getitem__() is an iterable. Dictionary and file are both iterable.

## BIFs
Sequence only:
reversed(seq)

Iterable:
enumerate(iter)
zip

## Shallow and Deepcopy

There are two types of copy for sequence in python, shallow and deep.
Shallow copy will create a new objects of the same type but the values/data inside the objects are only referenced. While deepcopy will create a new object and deepcopying all its data. Note that if a shallow copy contains some immutable object and the copied object changes the immutable component, a new instance of that immutable object will be created and thus not affecting the other part of the copy.










￼