# frozen_string_literal: true

require_relative '../katas/remove_dups_linked_list'

RSpec.describe 'LinkedList' do
  it 'can initialize with no value' do
    list = LinkedList.new
    expect(list).to be_truthy
    expect(list).to be_instance_of(LinkedList)
    expect(list.head.value).to be_nil
  end

  it 'can initialize with a value' do
    list = LinkedList.new(10)
    expect(list.head.value).to equal(10)
  end

  it 'can add a node with a value' do
    list = LinkedList.new('head')
    list.add('tail')
    expect(list.head.value).to eq('head')
    expect(list.tail.value).to eq('tail')
  end

  it 'can add multiple nodes with values' do
    values_arr = %w[we are borg]
    list = LinkedList.new
    list.add(*values_arr)
    expect(list.gen_array).to eq(values_arr)
  end

  it 'removes all duplicates' do
    values_with_dupes = [1, 1, 1, 1, 1, 0, 0, 0, 1, 2, 3, 4, 5]
    list = LinkedList.new
    list.add(*values_with_dupes)
    values_no_dupes = values_with_dupes.uniq
    list.remove_duplicates
    expect(list.gen_array).to eq(values_no_dupes)
  end
end
