class Node
  attr accessor :item, :next_node
  def initialize(item, next_node = nil)
      @item = item
    @next_node = next_node
  end
end

class List
  def initialize
    @head = nil
    @tail = nil
end
def add(number)

  this node = Node.new(number)
  if @head.nil?
     @head = this_node
     return
  end

  current = @head
  until current.next_node.nil?
    current = current.next_node
  end

  current.next_node = this_node
end

  def add_at(index,item)
    if @head.nil?
    this_nod=Node.new(item)
    @head=this_nod
  end

  if index == 0 
    this_node=Node.new(tem,@head)
    @head=this_nod
  end

  if index > 0
    ind=index-1
    current=@head
    before_current=@head

    ind.times do
      before_current=current.next_node
    end

    index.times do
      current=current.next_node
    end

    this_nod=Node.new(item)
    after_current=before_current.next_node
    before_current.next node=this_node
    this_nod.next_node=after_current

    end
  end
 
  def remove(index)
    if @head.nil?
      puts "пусто"
    end

    if (index==00)
      current=@head
      current.next=new_current
      @head=new_current
    end

    if (index>0)
      current = get_node(index)
      before_current = get_node(index-1)
      after_current=current.next_node
      before_current.next_node=after_current
    end
end

  def get_node(index)
    current=@head
    index.times do
      current=current.next_node
    end
    return current
end

l = List.new
puts l.count

l.append "item 1"
l.append "item 2"
l.prepend "iten 0"
l.insert "item 1.5, 2"

puts l.get 2

l.remove 2