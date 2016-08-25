require './lib/jungle_beat.rb'
require 'minitest/autorun'
require 'minitest/pride'
require 'pry'

class JungleBeatTest < Minitest::Test
  def test_can_creat_a_new_test
    jb = JungleBeat.new

    assert_equal JungleBeat, jb.class
  end

  def test_if_junglebeat_has_a_linkedlist
    jb = JungleBeat.new

    assert_equal LinkedList, jb.list.class
  end

  def test_to_see_if_head_is_nil
    jb = JungleBeat.new

    assert_equal nil, jb.list.head
  end

  def test_append_new_sound_method_to_add_sounds
    jb = JungleBeat.new

    assert_equal "deep doo diit", jb.append("deep doo diit")
  end

  def test_that_new_data_creates_head_node
    jb = JungleBeat.new
    jb.append("deep doo ditt")

    assert_equal "deep", jb.list.head.data
  end

  def test_list_head_is_equal_to_deep
    jb = JungleBeat.new
    jb.append("deep doo ditt")
    jb.append("woo hoo shu")

    assert_equal "deep", jb.list.head.data
  end

  def test_to_to_if_next_node_is_doo
    jb = JungleBeat.new
    jb.append("deep doo ditt")
    jb.append("woo hoo shu")

    assert_equal "doo", jb.list.head.next_node.data
  end

  def test_that_jungle_beat_can_count_list_nodes
    jb = JungleBeat.new
    jb.append("deep doo ditt")
    jb.append("woo hoo shu")

    assert_equal 6, jb.count
  end

  def test_play_the_sound_please
    jb = JungleBeat.new
    jb.append("ding dah oom oom ding oom")

    assert_equal beats, jb.play
  end
end
