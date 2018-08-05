



def bi_search(value, arr, start_i=0, end_i=nil)
  end_i ||= arr.length - 1
  middle_i = ((end_i - start_i)/2).ceil
  middle_value = arr[middle_i]

  if value == middle_value
    return middle_i
  elsif start_i >= end_i
    return -1
  elsif value > middle_value
    start_i = middle_i
  else
    end_i = middle_i

  bi_search(value, arr, start_i, end_i)
end
