require 'lib/fraccion'
require 'test/unit'

class TestFraccion < Test::Unit::TestCase
  
  def setup
    @origen = Fraccion.new(5,4)
    @unidad = Fraccion.new(2,5)
    
    @prueba1 = Fraccion.new(10,20)
    @prueba2 = Fraccion.new(30,40)
    
    
    
  end
  
  def test_simple
    assert_equal("(5,4)", @origen.to_s)
    assert_equal("(33,20)", (@origen + @unidad).to_s)  
    assert_equal("(-2,-5)", (-@unidad).to_s)
    assert_equal("(17,20)", (@origen - @unidad).to_s)
    assert_equal("(10,20)", (@origen * @unidad).to_s)  ##multiplicacion de fracciones
    assert_equal("(400,600)", (@prueba1 ** @prueba2).to_s)  ##division de fracciones
  end
  

    

end