require_relative "../katas/stack_of_plates"


RSpec.describe 'PlateStack' do
  before(:example) do
    @plate_stack, @plate_stack_value = PlateStack.new, PlateStack.new(10, 10)
  end

  it 'can be initialized with no values' do
    expect(@plate_stack).to be_instance_of(PlateStack)
  end

  it 'can be initialized with a value' do
    expect(@plate_stack_value.pop).to eq(10)
  end

  it 'adds another stack if you go past the stack max' do
    (0..12).each do |num|
      @plate_stack.push(num)
    end
    expect(@plate_stack.stack_count).to eq(2)
  end

  it 'removes a stack if it is empty' do
    (0..11).each do |num|
      @plate_stack.push(num)
    end
    @plate_stack.pop()
    @plate_stack.pop()
    expect(@plate_stack.stack_count).to eq(1)
  end
end
