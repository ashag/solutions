# build node with left and right pointers and methods
# build stack by preorder traversal of a tree

class Node
  attr_reader :value, :left_node, :right_node
  def initialize(value, left_node = nil, right_node = nil)
    @value = value
  end
end

class Stack

  def initialize
    @stack = Array.new
  end

  def push(node)
    @stack.push(node)
  end

  def pop
    @stack.pop
    self
  end

  def size
    @stack.length
  end
end

def recursivePreorderTraverse(node)
  # print root node value
  # get left node, print value
  # get right node, print value
  return if node == nil
  puts node.value
  if node.left_node
    recursivePreorderTraverse(node.left_node)
  end

  if node.right_node
    recursivePreorderTraverse(node.right_node)
  end
end