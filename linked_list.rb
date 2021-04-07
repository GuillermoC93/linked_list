# frozen_string_literal: true

# linked list class
class LinkedList
  attr_accessor :head, :size

  def initialize
    @head = nil
    @size = 0
  end

  def append(value)
    if @head.nil?
      prepend(value)
    else
      temp = @head
      temp = temp.next_node until temp.next_node.nil?
      temp.next_node = Node.new(value)
      @size += 1
    end
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

  def list_size
    puts "Total size of this linked list is #{@size}."
  end

  def list_head
    if @head
      puts "The head node value is #{@head.value}."
    else
      puts 'There is no head node.'
    end
  end

  def tail
    if @head
      temp = @head
      temp = temp.next_node until temp.next_node.nil?
      puts "The tail node value is #{temp.value}."
    else
      puts 'There is no tail node.'
    end
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
