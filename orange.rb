class OrangeTree
attr_accessor :height, :age

  def initialize(height, age)
    @age = age
    @height = height
  end

  def is_tree_dead?
    @age >= 25 
  end

  def age!
    if @age >= 0 && @age <= 24
      @age + 1
    end
    @height + 1
  end

  def any_fruits?
    @age >= 3 
  end

  def pick_an_orange!
    if any_fruits? == true
      return "you can pick an orange"
    else
      return "NoOrangesError"
    end
  end

end

tree = OrangeTree.new(13,2)
puts tree.age
puts tree.height

p tree.is_tree_dead?
p tree.age!
p tree.any_fruits?
p tree.pick_an_orange!

