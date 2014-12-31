class Node
  attr_accessor :next_node, :data

  def initialize(data, next_node)
    @data = data
    @next_node = next_node
  end

end
class IterativeLinkedList
  attr_reader :count, :head
  def initialize
    #@count = 0
    @head = nil
  end
  def count
    #@count = count
    count = 1
    current_node = head
    if head == nil
      return 0
    elsif current_node = current_node.next_node
      return 1
    else
      return count += 1
    end
    @count
  end

  def push(elements)
    if @head.nil?
      @head = Node.new(elements, nil)
    else
      current = @head
      while current.next_node
        current = current.next_node
      end
      current.next_node = Node.new(elements, nil)
    end
  end

  def pop
    current = @head
    if current.nil?
      return nil
    else
      while current.next_node.next_node != nil
        current = current.next_node
      end

      result = current.next_node.data
      current.next_node = nil
      return result
    end
  end

  def index(search_term)
    current = @head
    location = 0
    while current.next_node != nil
      return location if current.data == search_term
      current = current.next_node
      location += 1
    end
  end



end

list = IterativeLinkedList.new
list.push("hello")
list.push("world")
list.push("today")
