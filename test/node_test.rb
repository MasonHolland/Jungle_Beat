require '../lib/node'
require 'minitest/autorun'
require 'minitest/pride'

class Node < Minitest::Test

  def test_it_outputs_the_initialized_data
   node = Node.new("plop")
   assert_equal "plop", node.data
  end

  def test_the_next_node_will_default_to_nil
    node = Node.new("plop")
    assert_nil node.next_node
  end

end
