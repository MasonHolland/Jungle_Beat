require 'minitest/autorun'
require 'minitest/pride'
require './lib/linked_list'


class LinkedListTest < Minitest::Test

  def test_linked_list_exist
    list = LinkedList.new
    assert list
  end

  def test_if_linked_list_has_head_attribute_with_value_of_nil
    list = LinkedList.new
    assert_nil list.head
  end

  def test_append_will_add_infromation_into_the_linked_list
    list = LinkedList.new
    list.append("doop")
    assert_equal "doop", list.head.data
  end
  
  def test_count_finds_a_single_node
    list = LinkedList.new
    list.append("doop")
    assert_equal 1, list.count
  end

  def test_next_node_is_nil_when_head_node_has_value
    list = LinkedList.new
    list.append("doop")
    assert_nil list.head.next_node
  end

  def test_node_will_output_the_string
    list = LinkedList.new
    list.append("doop")
    assert_equal "doop", list.to_string
  end
  
  def test_that_count_can_count_a_single_node
    list = LinkedList.new
    list.append("doop")
    assert_equal 1, list.count
  end


end



# > list.head.next_node
# => nil
# > list.count
# => 1
# > list.to_string
# => "doop"