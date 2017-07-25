require 'pry'

class LinkedListNode
  attr_accessor :value, :next_node

  def initialize(value, next_node=nil)
    @value = value
    @next_node = next_node
  end

end

def print_values(list_node)

  if list_node
    print "#{list_node.value} --> "
    print_values(list_node.next_node)
  else
    print "nil\n"
    return
  end

end

class Stack
    attr_reader :data

    def initialize
        @data = nil
    end

    # Push a value onto the stack
    def push(value)
      @data = LinkedListNode.new(value, @data)
    end

    # Pop an item off the stack.
    # Remove the last item that was pushed onto the
    # stack and return the value to the user
    def pop
       node_value = @data.value

       @data = @data.next_node

       return node_value
    end

end

def reverse_list(list, previous=nil)
  if list
    LinkedListNode.new(list.value)
    reverse_list(list.next_node)
  end


end

def infinite(list)
  tortoise = list.value
  hare = list.next_node.next_node.value
    while list
    # if tortoise == hare
    #   return true
    # elsif hare == nil
    #   return false
    # end
    puts tortoise
    puts hare
    tortoise = list.next_node.value
    hare = list.next_node.next_node.value
    end
end


node1 = LinkedListNode.new(37)
node2 = LinkedListNode.new(99, node1)
node3 = LinkedListNode.new(12, node2)
node1.next_node = node3


puts infinite(node3)
