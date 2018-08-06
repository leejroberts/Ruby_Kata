# frozen_string_literal: true

#
# test if all the characters in a string are unique
# source cracking the code interview Ch 1 question 1.1
# not testing for non-strings in this case

def all_unique_chars(str)
  seen = {}
  str.chars.each do |char|
    return false if seen[char]
    seen[char] = true
  end
  true
end
