require './lib/linked_list.rb'
require 'minitest/autorun'
require 'minitest/pride'

require 'pry'

class LinkedListTest < Minitest::Test
  def test_can_create_new_list
  list = LinkedList.new
  list.class

  assert_equal LinkedList, list.class
  end

  def test_append_new_sound
    list = LinkedList.new
    list.append("doop")

    assert_equal "doop", list.head.data
  end

  def test_next_node_should_be_nil
    list = LinkedList.new
    list.append("doop")

    assert_equal nil, list.head.next_node
  end

  def test_the_number_of_nodes
    list = LinkedList.new
    list.append("doop")

    assert_equal 1, list.count
  end

  def test_adding_doop_to_list
    list = LinkedList.new
    list.append("doop")

    assert_equal "doop", list.head.data
  end

  def test_adding_deep_to_list
    list = LinkedList.new
    list.append("doop")
    list.append("deep")

    assert_equal "deep", list.head.next_node.data
  end

  def test_turn_sounds_to_string
    list = LinkedList.new
    list.append("deep")
    list.append("woo")
    list.append("shi")
    list.append("shu")
    list.append("blop")

    assert_equal "deep woo shi shu blop", list.to_string
  end

  def test_for_a_count
    list = LinkedList.new
    list.append("deep")
    list.append("woo")
    list.append("shi")
    list.append("shu")
    list.append("blop")

    assert_equal 5, list.count
  end

  def test_prepend_to_head_of_node
    list = LinkedList.new
    list.append("second")
    list.append("third")

    assert_equal "first", list.prepend("first")
    assert_equal "first", list.head.data
  end

  def test_insert_at_third_position
    list = LinkedList.new
    list.append("first")
    list.append("second")
    #insert here
    list.append("fourth")

    assert_equal "third", list.insert(2, "third")
  end

  def test_finding_the_right_sound
    list = LinkedList.new
    list.append("deep")
    list.append("woo")
    list.append("shi")
    list.append("shu")
    list.append("blop")

    assert_equal "shi", list.find(2,1)
    assert_equal "woo shi shu", list.find(1,3)
  end

  def test_if_list_includes_a_particular_sound
    list = LinkedList.new
    list.append("hi")
    list.append("woo")
    list.append("shi")
    list.append("deep")
    list.append("blop")

    assert_equal true, list.includes?("woo")
    assert_equal false, list.includes?("dep")
  end

  def test_pop_to_remove_the_last_sound
    list = LinkedList.new
    list.append("deep")
    list.append("woo")
    list.append("shi")
    list.append("shu")
    list.append("blop")

    assert_equal "blop", list.pop
    assert_equal "shu", list.pop
  end

  def test_pop_to_convert_to_string_again
    list = LinkedList.new
    list.append("deep")
    list.append("woo")
    list.append("shi")

    assert_equal "deep woo shi", list.to_string
  end
end
