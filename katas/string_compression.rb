# frozen_string_literal: true

# perform string compression using counts of repeated characters
# example: "aaabbbccdddee" => "a3b3c2d3e2"
# if the compressed string is longer, return the original string
# the string will contain only upper case and lowercase letters a-z
# source: Cracking The Code Interview: Ch1, 1.6

def string_compression(str)
  processed = ''
  running_char = nil
  running_count = 0

  str.chars.each do |char|
    if !running_char
      running_char = char
      running_count = 1
    elsif running_char == char
      running_count += 1
    else
      processed += "#{running_char}#{running_count}"
      running_char = char
      running_count = 1
    end
  end
  processed += "#{running_char}#{running_count}"

  processed.length < str.length ? processed : str
end
