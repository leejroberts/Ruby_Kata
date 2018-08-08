require_relative "../katas/linked_list_palindrome"

RSpec.describe 'LinkedList' do
  it 'can be initialize with no value' do
    list = LinkedList.new
    expect(list).to be_an_instance_of(LinkedList)
    expect(list.head.value).to be_nil
  end

  it 'can be initialized with a value' do
    list = LinkedList.new(10)
    expect(list.head.value).to eq(10)
  end

  it 'can take an array of values' do
    list = LinkedList.new
    values = (1..10).to_a
    list.add(*values)
    expect(list.tail.value).to eq(10)
    expect(list.print_values).to eq(values)
  end

  it 'returns true if values are palindrome' do
    values = %w{r a c e c a r}
    list = LinkedList.new()
    list.add(*values)
    expect(list.is_palindrome?).to be(true)
  end

  it 'returns false if values are not a palindrome' do
    values = %w{i a m n o t a p a l i n d r o m e}
    list = LinkedList.new
    list.add(*values)
    expect(list.is_palindrome?).to be(false)
  end
end
