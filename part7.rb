class CartesianProduct
  #include Enumerable
  
  require 'pp'




  def initialize(a1,a2)
  	@produ = Array.new()
  		a1.each do |x|
  			a2.each do |y|
  			@produ << [x,y]
  		end
  	end
  end
  
  def to_a
  	@produ 
  end


  def each
  	@produ.each do |x|
  		yield x
  end
  	



  end

end
