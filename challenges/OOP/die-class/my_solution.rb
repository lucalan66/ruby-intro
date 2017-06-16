# Pseudocode

class Die
	attr_accessor :sides
	def initialize (sides)
		@sides=sides
	end	
		return raise "ArgumentError" if Die.sides < 1
	end

	def roll
		1 + rand(@sides)
	end

end

die = Die.new(6)
# 1. Solucion Inicial






# 2. Solucion con Refactor





###### DRIVER CODE #########
