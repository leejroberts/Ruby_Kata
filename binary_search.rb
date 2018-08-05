# frozen_string_literal: true

require 'pry'

def bi_search(value, arr, start_i = 0, end_i = nil)
  end_i ||= arr.length - 1
  middle_i = ((end_i + start_i)/2).ceil
  middle_value = arr[middle_i]

  if value == middle_value
    return middle_i
  elsif end_i - start_i <= 1
    if arr[start_i] == value
      return start_i
    elsif arr[end_i] == value
      return end_i
    else
      return -1
    end
  elsif value > middle_value
    start_i = middle_i
  else
    end_i = middle_i
  end

  return bi_search(value, arr, start_i, end_i)
end
