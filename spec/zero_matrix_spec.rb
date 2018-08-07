require_relative "../katas/zero_matrix"


RSpec.describe 'zero_matrix' do

  def build_matrix(size)
    matrix = []
    size.times do
      inner_matrix = []
      size.times { inner_matrix << 1 }
      matrix << inner_matrix
    end
    matrix
  end

  before(:all) do
    @matrix = build_matrix(3)
  end

  it 'turns row with a zero to all zeros' do
    @matrix[2][2] = 0
    zeroed = zero_matrix(@matrix)
    zeroed[2].each { |val| expect(val).to equal(0) }
  end
end
