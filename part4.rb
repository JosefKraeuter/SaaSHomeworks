class Dessert
  def initialize(name, calories)
    @name = name
    @calories = calories
  end
  
  attr_accessor :name
  attr_accessor :calories


  def healthy?
    @calories < 200
  end
  
  def delicious?
    true  
  end
end


class JellyBean < Dessert
  def initialize(name, calories, flavor)
     @name = name
     @calories = calories
     @flavor = flavor
  end
 
  attr_accessor :flavor
  
  def delicious?
    unless (@flavor == "black licorice")
      true 
    else 
      false
    end
  end
end


kuchen = JellyBean.new("Kuchen",300,"Ss")

puts kuchen.delicious?
kuchen.flavor = "black licorice"
puts kuchen.delicious?