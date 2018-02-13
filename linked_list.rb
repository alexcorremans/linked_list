class Node
  attr_accessor :next_node
  attr_reader :value

  def initialize(data)
    @value = data
    @next_node = nil
  end
end

class LinkedList

  attr_reader :size, :head, :tail

  def initialize
    @head = nil
    @tail = nil
    @size = 0
  end

  def append(data)
    node = Node.new(data)
    if @tail.nil?
      @tail = node
      @head = node
    else
      @tail.next_node = node
      @tail = node
    end
    @size += 1
  end

  def prepend(data)
    node = Node.new(data)
    if @head.nil?
      @head = node
      @tail = node
    else
      node.next_node = @head
      @head = node
    end
    @size += 1
  end

  def at(index)
    return @tail if index == @size-1
    if index >= 0 and index < @size
      result = @head
      index.times do
        result = result.next_node
      end
    else
      result = nil
    end
    result
  end

  def pop
    if @size <= 1
      @head = nil
      @tail = nil
      @size = 0
    else
      @tail = self.at(@size-2)
      @tail.next_node = nil
      @size -= 1
    end
  end

  def contains?(value)
    found = false
    node = @head
    while node != nil
      if node.value == value
        found = true
        break
      end
      node = node.next_node
    end
    return found
  end

  def find(data)
    found = false
    node = @head
    index = 0
    while node != nil
      if node.value == data
        found = true
        break
      end
      index += 1
      node = node.next_node
    end
    found ? index : nil
  end

  def to_s
    string = ""
    node = @head
    while node != nil
      string += "( #{node.value} ) -> "
      node = node.next_node
    end
    puts string + "nil"
  end

end
