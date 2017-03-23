class Node
attr_reader :data
attr_accessor :next_node

  def initialize(input, next_node = nil)
    @data = input
    @next_node = next_node
  end

  def tail
  if self.next_node == nil
      self
    else
      self.next_node.tail
    end
end
    

end

