# require 'pry'
require './lib/node'

class LinkedList
attr_reader :head, :count

  def initialize
    @head = nil
    @count = 0
    @string_storage = ""
  end
  
 def to_string
      @string_storage.chomp(" ")
  end

  def append(input)
    @count += 1
    @string_storage <<  input + " "
      if @head.nil?
      @head = Node.new(input)
      input
      else
      @head.tail.next_node = Node.new(input)
      input
      end
  end

 
    
end

# binding.pry
# ""
