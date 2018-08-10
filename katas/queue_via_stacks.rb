requite "pry"

class Stack
  def initialize(*values)
    binding.pry
    @stack_arr = []
    push(*values) if values
  end

  def push(*values)
    binding.pry
    values.each { |value| @stack_arr << value }
  end

  def pop()
    !@stack_arr.empty? ? @stack_arr.pop : nil
  end

  def empty?
    @stack_arr.empty?
  end
end


class QueueDoubleStack
  attr_reader :in_stack, :out_stack
  def initialize(*values)
    binding.pry
    @in_stack = Stack.new(*values)
    @out_stack = Stack.new
  end

  def flip(giving_stack, taking_stack)
    current_value = giving_stack.pop
    while current_value
      taking_stack.push(current_value)
    end
  end

  def flip_to_out_stack
    flip(@in_stack, @out_stack)
  end

  def flip_to_in_stack
    flip(@out_stack, @in_stack)
  end

  #take in values
  def queue(*values)
    flip_to_in_stack if @in_stack.empty?
    @in_stack.push(*values)
  end

  def dequeue()
    flip_to_out_stack if @out_stack.empty?
    @out_stack.pop
  end
end
