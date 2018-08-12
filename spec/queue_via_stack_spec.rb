# frozen_string_literal: true

require 'pry'
require_relative '../katas/queue_via_stacks'

RSpec.describe 'InnerStack' do
  before(:example) do
    @stack = InnerStack.new
    @stack_w_val = InnerStack.new(10)
    @stack_w_arr = InnerStack.new([1, 2, 3, 4, 5])
  end

  it 'can instantiate' do
    @stack = InnerStack.new
    expect(@stack).to be_instance_of(InnerStack)
  end

  it 'can read stack arr' do
    @stack = InnerStack.new
    expect(@stack.values).to eq([])
  end

  it 'can take in a value' do
    expect(@stack_w_val.values.first).to eq(10)
  end

  it 'can take in multiple values' do
    expect(@stack_w_arr.values).to eq([1, 2, 3, 4, 5])
  end
end

RSpec.describe 'QueueDoubleStack' do
  before(:example) do
    @values = (1..20).to_a
    @queue = QueueDoubleStack.new
    @queue_w_value = QueueDoubleStack.new(10)
    @queue_w_mult_values = QueueDoubleStack.new(@values)
  end

  it 'can instantiate' do
    expect(@queue.is_a?(QueueDoubleStack)).to be(true)
  end

  it 'can take in a value on instantiation' do
    expect(@queue_w_value).to be_truthy
  end

  it 'can take in multiple values on instantiation' do
    expect(@queue_w_mult_values.in_stack.values).to eq(@values)
  end

  it 'can flip values to out stack' do
    @queue_w_mult_values.flip_to_out_stack
    expect(@queue_w_mult_values.out_stack.values).to eq(@values.reverse)
  end

  it 'dequeues the values in the order they came in' do
    @values.each do |num|
      current_val = @queue_w_mult_values.dequeue
      expect(current_val).to eq(num)
    end
  end
end
