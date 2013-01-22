class Numeric
  @@currencies = {'dollar' => 1.0, 'yen' => 0.013, 'euro' => 1.292, 'rupee' => 0.019}
  def method_missing(method_id)
    singular_currency = method_id.to_s.gsub( /s$/, '')
    if @@currencies.has_key?(singular_currency)
      self * @@currencies[singular_currency]
    else
      super
    end
  end

  def in(currency)
     currency = currency.to_s.gsub( /s$/, '')
     self / @@currencies[currency]
  end

end



class String
  def palindrome?()
    self.split(/\W+/).join("").downcase == self.split(/\W+/).join("").downcase.reverse
  end
end



module Enumerable
  def palindrome?()
    if self.class == Hash
      true
    elsif self.class != Array
      m = self.to_a
      m.reverse == m
    else 
      self.reverse == self

    end
  end
end

puts ('a'..'b').palindrome?
