class Temperature
  # attr_accesor :fahrenheit, :celsius


  def initialize(input)
    @fahrenheit = input[:f]
    @celsius = input[:c]
  end

  def to_celsius
    @celsius || (@fahrenheit - 32) * 5.0/9.0
  end

  def to_fahrenheit
    @fahrenheit || (@celsius) * 9.0/5.0 + 32
  end

  def self.in_celsius(value)
    self.new({:c => value})
  end

  def self.in_fahrenheit(value)
    self.new({:f => value})
  end

end

class Celsius < Temperature

  def initialize(value)
    @celsius = value
  end
end

class Fahrenheit < Temperature

  def initialize(value)
    @fahrenheit = value
  end
end
