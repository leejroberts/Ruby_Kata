require_relative "../katas/linked_list_intersection"

RSpec.describe 'LinkedList' do
  before(:context) do
    @values = (0..10).to_a
    @list_w_values, @list = LinkedList.new, LinkedList.new
    @list_w_values.add(*@values)
  end

  it 'can instantiate with no value' do
    expect(@list).to be_instance_of(LinkedList)
    expect(@list.head.value).to be_nil
  end

  it 'can instantiate with a value' do
    @list = LinkedList.new(10)
    expect(@list.head.value).to eq(10)
  end

  it 'can add multiple values' do
    expect(@list_w_values.head.value).to eq(0)
    expect(@list_w_values.tail.value).to eq(10)
  end

  it 'returns the node at a given index' do
    node = @list_w_values.node_at(3)
    expect(node).to be_instance_of(Node)
    expect(node.value).to eq(3)
  end

  it "can insert a node at a given index" do
    insert_node = Node.new("evil node")
    @list_w_values.insert_node(2, insert_node)
    expect(@list_w_values.node_at(2)).to be(insert_node)
    expect(@list_w_values[2]).to eq("evil node")
  end

  def intersected_linked_lists
    int_vals, str_vals = (1..10).to_a, %w{i am a list of values}
    list_1, list_2 = LinkedList.new, LinkedList.new
    list_1.add(*int_vals)
    list_2.add(*str_vals)
    intersect_node = list_2.node_at(3)
    list_1.insert_node(8, intersect_node)
    [list_1, list_2, intersect_node]
  end

  it "will return the intersect node when it intersects with another list" do
    list_1, list_2, intersect_node = intersected_linked_lists
    expect(intersect_node).to be_instance_of(Node)
    expect(list_1.intersects?(list_2)).to be(intersect_node)
    expect(list_1.intersects?(list_2)).to be_instance_of(Node)
  end

  it "will return false when the linked lists do not intersect" do
    @list.add(*@values)
    expect(@list_w_values.intersects?(@list)).to be(false)
  end
end
