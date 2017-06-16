# OOP

# Modelar el mundo x, atravez de objetos los cuales tienen atributos y comportamientos.

# Las clases son los planos que describen como crear los objetos

# class Person
# end

class Dog
  # attr_reader :name, :breed, :color, :age
  # attr_writer :name, :breed, :color, :age
  attr_accessor :name, :breed, :color, :age, :alive

  def initialize(name, breed, color, age) # Constructor
    # Crear variables de instancia, asiganarlas a sus correspondientes valores
    @name = name
    @breed = breed
    @color = color
    @age = age
    @alive = true
  end


  # Metodos de instancia
  def grow
    @age = @age + 1
  end

  def bark
    "Woff woff my name is #{@name}"
  end

  def die
    @alive = false
  end



  # # Getter
  # def age
  #   @age
  # end

  # # Setters
  # def age=(new_age)
  #   @age = new_age
  # end


end

# Instancias
tulia = Dog.new('tulia', 'poddle', 'brown', 2)
jeska = Dog.new('jeska', 'criollo', 'brown', 2)
ozu = Dog.new('ozu', 'bulldog', 'brown', 2)

# Syntactic sugar
#p tulia.age=(7)
#p tulia.age = 7
# felipe = Person.new

#Mutabilidad

map 
map! # Métodos peligrosos porque mutan el input

#Injección de Dependencias


#Patrones de diseño
#herencia
#Módulos (Composición)

class Figure # cuando no tiene papá, e papá es object
  attr_accessor :stroke, :fill
  def to_s
    "Yo soy .."
  end
end

class Square < Figure
    attr_accessor :side
    def to_s
      "un circulo de radio #{radius}"
    end
    

end

class Circle < Figure
  attr_accessor :radius

  def to_s
    "un circulo de radio #{radius}"
  end

end

#hay métodos de Object que se heredan a todas las clases
#mirar el método
respond_to? #sirve para conocer qué tipo de parámetro estoy recibiendo

#duck typing 

#Módulos (Composición)
  #Namespace
  #Incluir comportamientos a una clase


class Bird
  include Flyable # incluye los métodos como métodos de instancia
  extend Flyable # incluye los métodos como métodos de clase
end

class Airpane
  include Flyable
end

module Flyable #los módulos no tienen atributos
    def able_to_fly?
      if @speed > @drag + @weight
        true
      else
        false
      end
    end
end

#leer intro_oop.rb


