class LinkedList
  attr_accessor :head

  def initialize
    @head = nil
    @tail = nil
    @size = 0
  end

  def append(value)
    if @tail
      current_node = @tail
      @tail = Node.new(value)
      current_node.next_node = @tail
    else
      @tail = Node.new(value)
    end
    @size += 1
  end

  def prepend(value)
    if @head
      current_node = @head
      @head = Node.new(value, current_node)
    else
      @head = Node.new(value)
    end
    @size += 1
  end
end

# node class
class Node
  attr_accessor :value, :next_node

  def initialize(value = nil, next_node = nil)
    @value = value
    @next_node = next_node
  end
end
