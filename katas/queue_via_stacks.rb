# frozen_string_literal: true

require 'pry'

class InnerStack
  attr_reader :values
  def initialize(values = nil)
    @values = []
    push(values) if values
  end

  def push(values)
    if values.is_a?(Array)
      @values += values
    else
      @values << values
    end
  end

  def pop
    @values.pop
  end

  def empty?
    @values.empty?
  end
end

class QueueDoubleStack
  attr_reader :in_stack, :out_stack
  def initialize(values = nil)
    @in_stack = InnerStack.new(values)
    @out_stack = InnerStack.new
  end

  def flip(giving_stack, taking_stack)
    current_value = giving_stack.pop
    while current_value
      taking_stack.push(current_value)
      current_value = giving_stack.pop
    end
  end

  def flip_to_out_stack
    flip(@in_stack, @out_stack)
  end

  def flip_to_in_stack
    flip(@out_stack, @in_stack)
  end

  # take in values
  def queue(values)
    flip_to_in_stack if @in_stack.empty?
    @in_stack.push(values)
  end

  def dequeue
    flip_to_out_stack if @out_stack.empty?
    @out_stack.pop
  end
end
