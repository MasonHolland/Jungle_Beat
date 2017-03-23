# require 'pry'
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
    current = head
    @head = Node.new(input)
    @head.next_node = current
    @string_storage.prepend(input + " ")

  end
  

 
    
end

# binding.pry
# ""
