# frozen_string_literal: true

require_relative '../katas/urlify'

describe 'urilify' do
  it 'replaces all spaces with "%20"' do
    expect(urlify('here is a string')).to eq('here%20is%20a%20string')
  end
end

describe 'urilify_gsub' do
  it 'replaces all spaces with "%20"' do
    expect(urlify('here is a string')).to eq('here%20is%20a%20string')
  end
end
