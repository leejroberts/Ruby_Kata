# test if the word is a permutation of a palindrome
# palindromes are not limited to dictionary words
# spaces are not relevant to the palindrome
# source Cracking The Code Interview Ch1, 1.4


def permutation_palindrome?(str)
  str_no_spaces = str.gsub(" ","")

  chars_count = str_no_spaces.chars.each_with_object({}) { |char, c_hash|
    c_hash[char] ? c_hash[char] += 1 : c_hash[char] = 1
  }.values

  str_length = str_no_spaces.length

  if str_length.odd? && chars_count.count(&:odd?) == 1
    return true
  elsif str_length.even? && chars_count.count(&:odd?) == 0
    return true
  end
  false
end
