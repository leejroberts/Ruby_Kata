# returns true if the second string is the first string after
# 1. inserting a character
# 2. removing a character
# 3. replacing a character
# example none, non => true
# source: Cracking The Code Interview, Ch. 1, 1.5

def one_gap?(larger_str, smaller_str)
  gap_count = 0
  (0...larger_str.length).each do |index|
    gap_count += 1 if larger_str[index] != smaller_str[index-gap_count]
  end
  gap_count == 1
end

def one_away(str1, str2)
  if str1.length == str2.length
    match_count = str1.chars.zip(str2.chars).count{ |pair| pair[0] == pair[1] }
    return match_count >= str1.length - 1
  elsif str1.length - str2.length == 1
    return one_gap?(str1, str2)
  elsif str1.length - str2.length == -1
    return one_gap?(str2, str1)
  end
  return false
end
