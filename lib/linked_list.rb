require './lib/node'

class LinkedList
attr_reader :head, :count

  def initialize
    @head = nil
    @string_storage = ""
    @count = 0
  end
  
 def to_string
      @string_storage.chomp(" ")
  end


  def append(input)
    @count += 1
    @string_storage << input + " "
      if @head.nil?
      @head = Node.new(input)
      input
      else
      @head.tail.next_node = Node.new(input)
      input
      end
  end

  def prepend(input)
    @count += 1
    previous_head = head
    @head = Node.new(input)
    @head.next_node = previous_head
    @string_storage.prepend(input + " ")
  end

  def insert(position, input)
    shifted_node = head
    @string_storage.insert(position + 4, input + " ")
    (position - 1).times do
      shifted_node = shifted_node.next_node
    end
    
    new_node = Node.new(input, shifted_node.next_node)
    shifted_node.next_node = new_node
  end


end

