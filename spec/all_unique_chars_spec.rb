# frozen_string_literal: true

require 'rspec'
require_relative '../katas/all_unique_chars'

RSpec.describe 'thing to describe' do
  it 'returns false with repeated characters' do
    expect(all_unique_chars('carrot')).to equal(false)
  end

  it 'returns true with no repeated characters' do
    expect(all_unique_chars('cat')).to equal(true)
  end

  it 'returns true with an empty string' do
    expect(all_unique_chars('')).to equal(true)
  end
end
