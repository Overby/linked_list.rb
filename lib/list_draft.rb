class Node
  attr_accessor :value, :beside_node

  def initialize(value, beside_node)
    @value = value
    @beside_node = beside_node
    puts "Initialized a new node with a value:  " + value.to_s
  end
end

class LinkedList

  def initialize(value)
    #Initialize new node at the HEAD of list
    @head = Node.new(value, nil)
  end

  def add(value)
    #At end of the list, insert new node w/ specified value
    current = @head
    while current.beside_node = nil
      current = current.beside_node
    end
    current.beside_node = Node.new(value,nil)
    self   #what is this line doing?
  end

  def delete(value)
    current = @head
    if current.value == value
      #If head is element to delete, head needs
      #to be updated
      @head = @head.beside_node
    else
      #... x -> y -> z
      #suppose y is value to be deleted, you need
      #to reshape the above list to :
      #... x -> z
      #(and z is basically y.next_node)
      current = @head
      while (current != nil) && (current.next_node != nil) && ((current.next_node).value != value)
          current = current.beside_node

          if (current != nil) && (current.beside_node != nil)
            current.beside_node = (current.beside_node).beside_node
          end
        end
      end

      def display
        current = @head
        full_list = [ ]
        while current.beside_node != nil
          full_list += [current.value.to_s]
          current = current.beside_node
        end
        full_list += [current.value.to_s]
        puts full_list.join("->")
      end
    end
  #linked list w/ node containing values
  ll = LinkedList.new(5)
  #adding elements to linked list
  ll.add(10)
  ll.add(20)
  ll.add(18)
  ll.display

   end
