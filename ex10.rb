tabby_cat = "\tI'm tabbed in."
persian_cat = "I'm split\non a line."
backslash_cat = "I'm \\ a \\ cat."

fat_cat = """
I'll do a list:
\t* Cat food
\t* Fishies
\t* Catnip\n\t* Grass
"""

puts tabby_cat
puts persian_cat
puts backslash_cat
puts fat_cat

puts "Escapes characters"
escapes = """
\\\\ \tBackslash
\\\'  \tSingle-quote
\\\"  \tDouble-quote
\\a   \tASCI bell
\\b   \tASCII backspace
\\f   \tASCII formfeed
\\n   \tASCII linefeed
\\r   \tASCII carriage return
\\t   \tASCII horizontal tab
\\uxxxx\tCharacter with 16-bit hex value xxxx
\\v   \tASCII vertical tab
\\ooo \tCharacter with octal value ooo
\\xhh \tCharacter with hex value hh
"""

puts escapes
