require_relative 'LinkedListNode'
require_relative 'Stack'


class LinkedList
	
	
	attr_reader :head
	
	
	def initialize(head = nil)
		@head = head
	end
	
	
	def print_values(list_node = @head)
	  print "#{list_node.value} --> "
	  if list_node.next_node.nil?
	    print "nil"
	    return
	  else
	    print_values(list_node.next_node)
	  end
	end
	
	
	def reverse_list
		stack = Stack.new
		
		while @head
			stack.push(@head)
			@head = @head.next_node
		end
		
		return @head = stack.head
	end
	
	
	# Implimenting reverse_list for the second question
	# using mutation and recursion
	def reverse_list_2(node = @head, previous = nil)
		saved_next = node.next_node
		node.next_node = previous
		if saved_next
			reverse_list_2(saved_next, node)
		else
			@head = node
		end
	end
	
	
	# Impliment a version of floyd's cycle detection algo
	# Return true if cyclic, false if not
	def is_cyclic?
		tortoise, hare = @head, @head
		
		# If the hare or hare.next_node is ever nil 
		# then the linked list cannot be cyclical
		while hare && hare.next_node
			# tortoise moves up 1
			tortoise = tortoise.next_node
			
			# Hare moves up 2
			hare = hare.next_node.next_node
			
			return true if tortoise == hare
		end
		
		return false
	end
	
	
end
