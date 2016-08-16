require_relative '../LinkedListNode'

RSpec.describe 'Stack' do
  

  before(:each) do
    @stack = Stack.new
    @stack.push(LinkedListNode.new(1))
    @stack.push(LinkedListNode.new(2))
    @stack.push(LinkedListNode.new(3))
  end
  
  
  it 'should have the last value pushed as the head' do
    expect(@stack.head.value).to eq(3)
  end
  
  
  it 'should be able to push a new value to the top of the stack' do
    @stack.push(LinkedListNode.new(4))
    expect(@stack.head.value).to eq(4)
  end
  
  
  it 'should destructively pop a value off of the stack' do
    @stack.push(LinkedListNode.new(4))
    @stack.pop
    expect(@stack.head.value).to eq(3)
  end
  
  
end
