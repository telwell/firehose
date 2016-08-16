require_relative '../LinkedList'
require_relative '../LinkedListNode'

RSpec.describe 'LinkedList' do
  
  context 'non-cyclical list' do
    
    
    before(:each) do
      node1 = LinkedListNode.new(37)
      node2 = LinkedListNode.new(99, node1)
      node3 = LinkedListNode.new(12, node2)
      node4 = LinkedListNode.new(33, node3)
      @ll = LinkedList.new(node4)
    end
    
    
    it 'should be able to print values' do
      expect{@ll.print_values}.to output('33 --> 12 --> 99 --> 37 --> nil').to_stdout
    end
    
    
    it 'should be able to reverse itself' do
      @ll.reverse_list
      expect(@ll.head.value).to eq(37)
    end
    
    
    it 'should be able to reverse itself recursively' do
      @ll.reverse_list_2
      expect(@ll.head.value).to eq(37)
    end
    
    
    it 'should return false if the list is not cyclic' do
      expect(@ll.is_cyclic?).to be(false)
    end
    
    
  end
  
  
  context 'cyclical list' do
  
    
    before(:each) do
      node1 = LinkedListNode.new(37)
      node2 = LinkedListNode.new(99, node1)
      node3 = LinkedListNode.new(12, node2)
      node4 = LinkedListNode.new(33, node3)
      node1.next_node = node4
      @ll = LinkedList.new(node4)
    end
  
  
    it 'should return true if the list is cyclic' do
      expect(@ll.is_cyclic?).to be(true)
    end
    
    
  end
  
  
end
