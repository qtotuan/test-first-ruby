class Temperature
  attr_reader :temp


  def initialize(temp)
    @temp = temp
  end

  def self.from_celsius(temp)
    Temperature.new(:c => temp)
  end

  def self.from_fahrenheit(temp)
    Temperature.new(:f => temp)
  end

  def in_fahrenheit
    @temp[:f]!= nil ? @temp[:f] : @temp[:c].to_f * 9/5 + 32
  end

  def in_celsius
    @temp[:c] != nil ? @temp[:c] : (@temp[:f] - 32) * 5/9
  end


  private
  def self.ftoc(temp)
    temp * 9/5 + 32
  end

  def self.ctof(temp)
    (temp - 32) * 5/9
  end

end

class Celsius < Temperature
  def initialize(temp)
    @temp = {:c => temp}
  end
end

class Fahrenheit < Temperature
  def initialize(temp)
    @temp = {:f => temp}
  end
end
