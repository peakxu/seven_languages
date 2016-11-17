#!/usr/bin/env ruby
class Tree
  attr_accessor :children, :node_name

  def initialize(hash)
    @node_name = hash.keys.first
    @children = hash[node_name].map { |k, v| Tree.new(k => v) }
  end

  def visit_all(&block)
    visit(&block)
    children.each {|c| c.visit_all(&block) }
  end

  def visit(&block)
    block.call self
  end
end

TEST_HASH = {
  'grandpa' => {
    'dad' => {
      'child 1' => {},
      'child 2' => {}
    },
    'uncle' => {
      'child 3' => {},
      'child 4' => {}
    }
  }
}

tree = Tree.new(TEST_HASH)
puts "visiting entire tree"
tree.visit_all { |node| puts node.node_name }
