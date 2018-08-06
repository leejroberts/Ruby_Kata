# frozen_string_literal: true

#
# test if all the characters in a string are unique
# source cracking the code interview Ch 1 question 1.1
#

def all_unique_chars(string)
  seen = []
  string.chars.each do |char|
    return false if seen.includes?(char)
    seen << char
  end
  true
end
