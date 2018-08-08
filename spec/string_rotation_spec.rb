require_relative "../katas/string_rotation"

describe 'string_rotation' do

  def rotate_str(str, rotate_count)
    str.chars.rotate(rotate_count).join
  end

  it 'returns true if string has been rotated 3 times' do
    str = "thisisastring"
    rotated_str = rotate_str(str, rotate_count=3)
    expect(string_rotation(str, rotated_str)).to be(true)
  end

  # it 'returns true on unrotated string' do
  #   str = "thisisastring"
  #   str2 = str
  #   expect(string_rotation(str, str2)).to be(true)
  # end

  # it 'returns false on a different rotated string' do
  #   str = "thisisastring"
  #   str2 = rotate_str("thisisadifferentstring", 5)
  #   expect(string_rotation(str, str2)).to be(false)
  # end

end
