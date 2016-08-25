require_relative 'linked_list'
require 'pry'

class JungleBeat
  attr_accessor :list

  def initialize
    @list = LinkedList.new
  end

  def append(data)
    data.split(" ").map do |word|
      list.append(word)
    end
    data
  end

  def count
    list.count
  end

  def play
    current_node = @list.head
    until current_node == nil
      beats += current_node.data
      #???
    end
  end
end
