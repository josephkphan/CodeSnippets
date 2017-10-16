import re


# Regex: Find between 2 strings
string = '-->This_is_the_string_I_want_to_find<-- -->string_2<--'
print re.findall('-->(.*?)<--', string, re.DOTALL)
# Creates a list of all found matches
