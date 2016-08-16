require_relative 'LinkedListNode'

class Stack
	
	
    attr_reader :head


    def initialize
			@head = nil
    end


    # Push an item onto the stack
    def push(el)
			@head = LinkedListNode.new(el.value, @head)
    end


    # Pop an item off the stack. 
		# Do some very basic checks to make sure 
		# that we're not trying to pop on an empty array
    def pop
			if @head.nil?
				return false
			else 
				temp = @head.value
				@head = @head.next_node
				return temp
			end
    end


end
