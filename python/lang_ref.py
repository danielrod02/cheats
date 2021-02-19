#!python3.9
# -*- coding = utf-8 -*-

# On the language reference from the offical python docs (https://docs.python.org/3/reference/index.html)
# the following symbols are used as part of a sort of informal variant of 
# BNF grammar notation the to describe the syntax and grammar of the language:
    # * and + have the same meaning as in regexs (zero or more and one or more respectively)
    # anything between square brackets [] is optional (zero or one)
    # | is used to separate alternatives
    # parentheses are used for grouping
    # White space is only meaningful to separate tokens
    # Literal strings are enclosed in quotes
    # Two literal characters separated by three dots mean a choice of any single 
    #   character in the given (inclusive) range of ASCII characters.
    # A phrase between angular brackets (<...>) gives an informal description of 
    #   the symbol defined; e.g., this could be used to describe the notion of 
    #   ‘control character’ if needed.

# The online type of comment in python are one line comments
# with a # character at the beginning (tough you can prepend spaces to
# format your comments according to the indentation level of yours blocks
# of code

# Python has several builtin types:

# Boolean
truthy = True
flasy = False

# Numeric Types — int, float, complex
# You can use scientific notation to define floating point literals
some_float = 3e5 # Equals 30_000 float
# If you want to create a number literal that doesnt have a fractional part
# but you want it to be float, you have to append a dot at the end
some_float = 30_000.
complx = 111 +  55j
# Sequence Types — list, tuple, range
some_list = [1, 2, 3, 4, 5]
another_list = list(some_iterable)
other_list = list(range(5))
some_tuple = tuple(some_iterable)

# Text Sequence Type — str
some_str = 'text'
other_str = "text" r"alal\aass"
raw_str = r'path\to\file' # \ Slashes are not treated specially inside r-strings
raw_str = r"path\to\file"
f_str = f"this is {some_str}"
formatted_str = f"The number is {3e5 = :-> #15_.4}" # prints The number is 3e5 = ----- 3.000e+05
formatted_str = f"The number is {3e5 = :|<#15_.10}" # prints The number is 3e5 = 300_000.0000|||
# Multiple adjacent string or bytes literals (delimited by whitespace), 
# possibly using different quoting conventions, are allowed, and their meaning 
# is the same as their concatenation (ONLY WORKS WITH LITERALS)
some_str = (
    r'All this strings '
    f"Are automatically"
    '''Concatenated'''
)

# Binary Sequence Types — bytes, bytearray, memoryview

# Set Types — set, frozenset
set_literal = {'something', 'some', 'perro', 'carro'}
empty_set = set()
set_constr = set(some_iterable)


# Mapping Types — dict (as of py3.9, dict is the only builtin mapping type)
# A mapping object maps hashable values (it has a hash value which never 
# changes during its lifetime (it needs a __hash__() method), and can be 
# compared to other objects ) to arbitrary objects.
# (it needs an __eq__() method)
# Values that are not hashable, that is, values containing lists, 
# dictionaries or other mutable types (that are compared by value rather 
# than by object identity) may not be used as keys
empty_dict = dict()
empty_dict = {}
from_mapping = dict(another_dict)
from_iterable = dict(some_iterable) # the items within some_iterable should have the form (k, v) or [k, v]
from_kwargs = dict(one = 1, two = 2, three = 3)
from_d_comprehension = { x: x**2 for x in range(1000) if x % 7 == 0}
good_old_literal = {
    'fname': 'Oscar',
    'lname': 'Daniel',
    'age': 21,
    'birthday': '02/10/1997',
}


# Other Built-in Types
#   Modules
#   Classes
#   Functions
#   Methods
#   Code Objects
#   Type Objects
#   None

# A backslash does not continue a token except for string literals
some_str = \
    "This is a string of characters \
    You can split string like this, although is not recommended. \
    Use triple quotes instead"

# Expressions in parentheses, square brackets or curly braces can be split over 
# more than one physical line without using backslashes
month_names = ['Januari', 'Februari', 'Maart',
               'April',   'Mei',      'Juni' ]
some_str = (
    'This is valid'
)
some_dict = {
    'fname': 'Oscar',
    'lname': 'Mejias'
}

# module-global identifiers beggining with _ (underscore) are imported when the
#   the names defined in the module are imported this way: from module import *

# class members (being methods or variables members or else) whose name begins
# with __ (double underscore) are mangled, that is: are re-written to help avoid
# name clashes between “private” attributes of base and derived classes:
#   Normal: __some_name (within the class SomeClass)
#   Mangled: _SomeClass__some_name




