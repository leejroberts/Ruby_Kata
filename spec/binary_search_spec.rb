# frozen_string_literal: true

require 'rspec'
require_relative '../katas/binary_search.rb'

RSpec.describe 'binary_search' do
  it 'finds values present in array' do
    search_result = bi_search(1, (1..5).to_a)
    expect(search_result).to equal(0)
  end

  it 'finds values present in array' do
    search_result = bi_search(5, (1..5).to_a)
    expect(search_result).to equal(4)
  end

  it 'returns -1 if value not in array' do
    search_result = bi_search(0, (1..5).to_a)
    expect(search_result).to equal(-1)
  end

  it 'finds values index in large array' do
    search_result = bi_search(20, (1..1_000_000).to_a)
    expect(search_result).to equal(19)
  end

  it 'returns -1 for numbers not found in very large array' do
    search_result = bi_search(10, (11..1_000_000).to_a)
    expect(search_result).to equal(-1)
  end
end
