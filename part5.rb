class Class
  def attr_accessor_with_history(attr_name)
    attr_name = attr_name.to_s   # make sure it's a string
    attr_reader attr_name        # create the attribute's getter
    attr_reader attr_name+"_history" # create bar_history getter
    hisname = attr_name+"_history"

    class_eval %Q{
    	
        
        def #{hisname}   
            @#{hisname} ||= [nil]
        end
        
    	def #{attr_name}=(value)
	      @#{attr_name} = value
	      @#{hisname} << value	
	    end
    } 
  end
end

class Foo
    attr_accessor_with_history :foo
    attr_accessor_with_history :bar
end

f = Foo.new     # => #<Foo:0x127e678>
f.bar = 3       # => 3
f.bar = :wowzo  # => :wowzo
f.bar = 'boo!'  # => 'boo!'
f.bar_history   # => [nil, 3, :wowzo, 'boo!']

f.foo = 2       # => 3
f.foo = :wawzo  # => :wowzo
f.foo = 'boo!'  # => 'boo!'
f.foo_history   # => [nil, 3, :wowzo, 'boo!']
