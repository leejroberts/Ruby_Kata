require_relative "../katas/queue_via_stacks.rb"

RSpec.describe 'QueueDoubleStack' do
  before(:example) do
    @values = (1..20).to_a
    @queue = QueueDoubleStack.new
    @queue_w_value = QueueDoubleStack.new(10)
    @queue_w_mult_values = QueueDoubleStack.new(@values)

  end

  # it 'can instantiate' do
  #   @queue
  #   expect(@queue.is_a?(QueueDoubleStack)).to be(true)
  # end

  # it "can take in a value on instantiation" do
  #   expect(@queue_w_value).to be_truthy
  # end

  # it 'can take in multiple values on instantiation' do
  #   expect(@queue_w_mult_values.in_stack).to eq(@values)
  # end

  it 'can flip values to out stack' do
    @queue_w_mult_values.flip_to_out
    expect(@queue_w_mult_values.out_stack).to eq(@values)
  end

  # it 'dequeues the values in the order they came in' do
  #   (1..20).each do |num|
  #     current_val = @queue_w_mult_values.dequeue
  #     exp(current_val).to eq(num)
  #   end
  # end
end
