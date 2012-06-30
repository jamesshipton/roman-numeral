Roman Numerals
==============

Roman numerals, the numeral system of ancient Rome, uses combinations of letters from the Latin alphabet to signify values. They are based on seven symbols:

    .----------------.
    | Symbol | Value |
    |----------------|
    |   I    | 1     |
    |   V    | 5     |
    |   X    | 10    |
    |   L    | 50    |
    |   C    | 100   |
    |   D    | 500   |
    |   M    | 1000  |
    '----------------'

Numbers are formed by combining symbols together and adding the values. For example, MMVI is 1000 + 1000 + 5 + 1 = 2006.

Generally, symbols are placed in order of value, starting with the largest values. When smaller values precede larger values, the smaller values are subtracted from the larger values, and the result is added to the total. For example MCMXLIV = 1000 + (1000 - 100) + (50 - 10) + (5 - 1) = 1944.

The Challenge
=============

The challenge is to write some Ruby code to convert Roman Numerals to their decimal integer equivalent. For example:

    RomanNumeral.new('XVI').to_integer        # => 16
    RomanNumeral.new('LVII').to_integer       # => 57
    RomanNumeral.new('MCMXCVIII').to_integer  # => 1998

Your code should be able to handle values between 1 and 3999 (I and MMMCMXCIX).
