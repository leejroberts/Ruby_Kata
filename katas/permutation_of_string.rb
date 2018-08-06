# check that one string is a permutation of another string
# source cracking the code interview Ch1, 1.2

def permutation?(str_1, str_2)
  str_1.chars.sort.join == str_2.chars.sort.join
end
