class Fraccion
  
  attr_reader :numerador, :denominador
  
  
  def initialize(num, dem)
    @numerador, @denominador = num, dem
  end
  
  def to_s
    "(#{@numerador},#{@denominador})"
  end
  
  def + (other)
    mcm = @denominador.lcm(other.denominador)
    num1 = (mcm * @numerador) / @denominador
    num2 = (mcm * other.numerador) / other.denominador
    Fraccion.new(num1+num2, mcm)
  end
  
  
  def - (other)
    mcm = @denominador.lcm(other.denominador)
    num1 = (mcm * @numerador) / @denominador
    num2 = (mcm * other.numerador) / other.denominador
    Fraccion.new(num1-num2, mcm)
  end
  
  
  
  
  
  def * (value)
    Fraccion.new(@numerador * value, @denominador * value)
  end
  
  def -@
    Fraccion.new(@numerador * -1, @denominador * -1)
  end
  
  
  def * (other) #multipliacion de fracciones
    Fraccion.new(@numerador * other.numerador, @denominador * other.denominador)
  end
  
  def ** (other) #division de fracciones
    Fraccion.new(@numerador * other.denominador, @denominador * other.numerador)
  end
  
  
  
  
end