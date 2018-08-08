

class Node
  attr_accessor :value, :next_node
  def initialize(value=nil,next_node=nil)
    @value = value
    @next_node = next_node
  end
end

class LinkedList
  def initialize(value=nil)
    @head = Node.new(value)
    @tail = @head
  end

  def add(*values)
    current_node = @tail
    values.each do |value|
      if current_node.value.nil?
        current_node.value = value
      else
        current_node.next_node = Node.new(value)
        current_node = current_node.next_node
      end
    end
  end

  def print_values
    values = []
    current_node = @head
    while current_node && current_node.value
      values << current_node.value
      current_node = current_node.next_node
    end
    values
  end

  def is_palindrome?
    str_1, str_2 = "", ""
    current_node = @head
    while current_node && current_node.value
      str_1 = current_node.value + str_1
      str_2 = str_2 + current_node.value
      current_node = current_node.next_node
    end
    str_1 == str_2
  end
end
