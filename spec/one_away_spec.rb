require_relative "../katas/one_away"


RSpec.describe 'one_away' do
  it 'returns true if one character is replaced' do
    str1, str2 = "pale", "bale"
    expect(one_away(str1, str2)).to be(true)
  end

  it 'returns false if two or more characters are replaced' do
    str1, str2 = "bale", "pall"
    expect(one_away(str1,str2)).to be(false)
  end

  it 'returns true if only one character is missing' do
    str1, str2 = "pale", "pal"
    expect(one_away(str1, str2)).to be(true)
    expect(one_away(str2, str1)).to be(true)
  end

  it 'returns true if only one character is missing from the start of the string' do
    str1, str2 = "pale", "ale"
    expect(one_away(str1, str2)).to be(true)
    expect(one_away(str2, str1)).to be(true)
  end

  it 'returns false if more than one character is missing' do
    str1, str2 = "pales", "pls"
    expect(one_away(str1, str2)).to be(false)
    expect(one_away(str2, str1)).to be(false)
  end
end
