require 'pry'
require './lib/node'

class LinkedList
attr_reader :head

  def initialize
    @head = nil
  end

  
  
  def append(input)
    @head = Node.new(input)
    input
  end

  def count
    if @head != nil
    count = 1
    end
  end

  def to_string
    @head.data
  end

end




> list.append("deep")
=> "deep"
> list.head.next_node
=> <Node data="deep" next_node=nil #5678904567890>
> list.count
=> 2
> list.to_string
=> "doop deep"

binding.pry
""