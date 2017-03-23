class Node
attr_reader :data, :next_node

  def initialize(input, next_node = nil)
    @data = input
    @next_node = next_node
  end

end

