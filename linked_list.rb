class Node
  attr_accessor :value, :next_node

  def initialize(value, next_node = nil)
    @value = value
  end
end


# confirm that implementation works for lengths of 0,1,2
# method to replace
# exceptio handling, if data isn't found or list is empty
# consider first, middle, last cases
# deleting tail, update previous pointer to reference null
class LinkedList
  attr_accessor :head

  def initialize(first)
    @head = first
  end

  def add(add_node)
    # linked lists have to start at head, then traverse list
    current = @head
    while current.next_node != nil
      current = current.next_node
    end
    current.next_node = Node.new(add_node)
  end

  def delete(remove_node)
    # start at head, check if delete is head..if so, update head to next_node node
    # traverse through list until node == remove_node
    # change pointer to node to point to node after remove_node
    # check for null values
    current = @head
    if current.value == remove_node
      @head = current.next_node
      return
    end

    while current.next_node.value != remove_node
      current = current.next_node
    end

    if current.next_node.value == remove_node
      node_before = current
      node_before.next_node = current.next_node.next_node
      return
    end
  end

  def node_from_end(n)
    current = @head
    i = 0
    m = @head

    if current == nil
      return
    end

    while i <= n
      current = current.next_node
      i += 1

      if current == nil
        puts "Not enough nodes"
        return
      end
    end

    while i > n
      current = current.next_node
      m = m.next_node
      i += 1

      if current == nil
        return m.value
      end
    end
  end

  def destruct
    # self = nil
  end
end