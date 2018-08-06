require_relative "../katas/permutation_palindrome.rb"

describe 'permutation_palindrome' do
  it 'returns true if the string is a permutation of any palindrome' do
    palindromes_arr = ["race car", "taco cat", "civic", "anna", "noon", "eno one"]
    palindromes_arr.each do |pali|
      shuffled_pali = pali.chars.shuffle.join
      expect(permutation_palindrome?(shuffled_pali)).to be(true)
    end
  end

  it 'returns false if the string is a not a permutation of any palindrome' do
    palindromes_arr = ["race rat", "taco mouse", "civil", "anna-lynne", "nooner", "the one"]
    palindromes_arr.each do |pali|
      shuffled_pali = pali.chars.shuffle.join
      expect(permutation_palindrome?(shuffled_pali)).to be(false)
    end
  end

end
