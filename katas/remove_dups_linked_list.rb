# frozen_string_literal: true

class Node
  attr_accessor :value, :next_node
  def initialize(value = nil, next_node = nil)
    @value = value
    @next_node = next_node
  end
end

class LinkedList
  attr_reader :head, :tail
  def initialize(first_val = nil)
    @head = Node.new(first_val)
    @tail = @head
  end

  # multiple values can be added simultaneously
  def add(*values)
    values.each do |value|
      if @tail.value.nil?
        @tail.value = value
      else
        new_tail(value)
      end
    end
  end

  # removes node at the given index
  def remove(node_i)
    current_node = @head
    previous_node = nil
    node_i.times do
      return false if current_node.nil?
      previous_node = current_node
      current_node = current_node.next_node
    end
    previous_node.next_node = current_node.next_node
    current_node = nil
    true
  end

  def gen_array
    output_arr = []
    current_node = @head
    while current_node && current_node.value
      output_arr << current_node.value
      current_node = current_node.next_node
    end
    output_arr
  end

  def remove_duplicates
    seen_values = []
    previous_node = nil
    current_node = @head
    while current_node
      if seen_values.include?(current_node.value)
        previous_node.next_node = current_node.next_node
        current_node = current_node.next_node
      else
        seen_values << current_node.value
        previous_node = current_node
        current_node = current_node.next_node
      end
    end
  end

  private

  def new_tail(value)
    new_tail = Node.new(value)
    @tail.next_node = new_tail
    @tail = new_tail
  end
end
