# frozen_string_literal: true

def string_rotation(str_1, str_2)
  str_2_arr = str_2.chars
  (str_2.length + 1).times do
    return true if str_1 == str_2_arr.join
    str_2_arr.rotate!(-1)
  end
  false
end

# implementation without rotate! method

def string_rotation_no_rotate(str_1, str_2)
  str_2_arr = str_2.chars
  (str_2.length + 1).times do
    return true if str_1 == str_2_arr.join
    rotate_char, *str_2_arr = str_2_arr # use rest operator to catch the rest of the array
    str_2_arr << rotate_char # push value on end of array
  end
  false
end
