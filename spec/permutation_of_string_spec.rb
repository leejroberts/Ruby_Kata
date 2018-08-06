# frozen_string_literal: true

require_relative '../katas/permutation_of_string'

describe 'permuation of string' do
  it 'returns true with two strings that are permutations' do
    expect(permutation?('can can', 'nac nac')).to be(true)
  end

  it 'returns false with two strings that are not permutations' do
    expect(permutation?('steven', 'stephen')).to be(false)
  end
end
