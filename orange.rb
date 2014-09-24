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

class Orange
attr_accessor :diameter

  def initialize(diameter)
    @diameter = diameter
  end

  def orange_diameter_check
    if @diameter < 10
      puts "your orange can grow more"
    else 
      puts "that`s too much for an orange to grow!"
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

orange = Orange.new(11)
puts orange.diameter
puts orange.orange_diameter_check
