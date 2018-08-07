# frozen_string_literal: true

# take in a matrix of integers and if any of the numbers are zero
# make the entire row and column zeros

def zero_matrix(matrix)
  zeros = []
  # finds the zeros in the matrix
  matrix.each_with_index do |row, row_i|
    row.each_with_index do |position_value, col_i|
      zeros << [row_i, col_i] if position_value.zero?
    end
  end
  # creates the zero crosses in the matrix
  zeros.each do |zero_pair|
    zero_row, zero_col = zero_pair
    matrix.each { |row_arr| row_arr[zero_col] = 0 }
    matrix[zero_row].map! { |_| 0 }
  end
  matrix
end
