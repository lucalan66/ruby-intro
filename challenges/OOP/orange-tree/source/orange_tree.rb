# Esta es la forma en que se crean errores personalizados
class NoOrangesError < StandardError
end

class OrangeTree
  attr_accessor :age, :oranges, :tree_heigh
  def initialize 
    @age = 0
    @height = 0
    @oranges = []
    @tree_heigh = tree_heigh
  end
  
  # Envejeze el arbol
  def age!
    @age = @age + 1
    if @age > 2
      rand(1..50).times { 
        @oranges << Orange.new(rand(2..4))
      }      
    end      
  end


  def height
    @height = @height + 0.2  
  end
  

  # Devuelve true si hay naranjas en el arbol, false si no
  def any_oranges?
    if @oranges.empty? == true
      false
    else
      true
    end
  end

  # Devuelve una naranja si hay una
  # Dispara un NoOrangesError de lo contrario
  def pick_an_orange!
    raise NoOrangesError, "This tree has no oranges" unless self.any_oranges?
    # Logica para sacar naranjas va aca
    @oranges.pop
  end
  def dead?
    if @age > 7
      true
    else
      false
    end
     
  end


end

class Orange
  # Crea una naranja con determinado +diameter+
  attr_accessor :diameter
  def initialize(diameter)    
    @diameter = diameter
  end
end


######## DRIVER CODE ###########

tree = OrangeTree.new

tree.age! until tree.any_oranges?

puts "El arbol tiene #{tree.age} años y mide #{tree.height} metros"

until tree.dead?
  basket = []

  # Pone las naranjas en la canasta
  while tree.any_oranges?
    basket << tree.pick_an_orange!
  end


  avg_diameter = basket.map { |orange| orange.diameter}
  avg_diameter = avg_diameter.reduce(:+) / basket.length
  puts "Reposte Año #{tree.age}"
  puts "Altura arbol: #{tree.height} metros"
  puts "Cosecha: #{basket.size} naranjas con un diametro promedio de #{avg_diameter} cm"
  puts ""

  # Envejeze el arbol en 1 año
  #
  tree.age!
end

puts "Miercoles, se murio el arbol!"

