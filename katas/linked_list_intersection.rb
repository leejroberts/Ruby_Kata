class Node
  attr_accessor :value, :next_node
  def initialize(value=nil, next_node=nil)
    @value = value
    @node = node
  end
end

class LinkedList
  def initialize(value=nil)
    @head = Node.new(value)
    @tail = @head
  end

  def intersects?(other_list)
    nodes = []
    current_node_self = @head
    while current_node_self.is_a?(Node)
      nodes << current_node_self
      current_node_self = current_node_self.next_node
    end

    current_node_other = other_list.head
    while current_node_other.is_a?(Node)
      return current_node_other if nodes.include?(current_node_other)
      current_node_other = current_node_other.next_node
    end
    false
  end

  def insert_node(index, insert_node)
    previous_node = nil
    current_node = @head
    (index).times do
      return false if !current_node.is_a?(Node)
      previous_node = current_node
      current_node = current_node.next_node
    end
    if previous_node
      previous_node.next_node = insert_node
    end
    insert_node.next_node = current_node.next_node
    true
  end

  def node_at(index)
    current_node = @head
    index.times do
      return false if !current_node.is_a?(Node)
      current_node = current_node.next_node
    end
    return current_node
  end

  def [](index)
    node = node_at(index)
    node.is_a?(Node) ? node.value : false
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
end
