class Animal
	
end

class Mammal < Animal
	warm_blooded? = true
	@num_legs = 4
	
end

class Amphibian < Animal
	warm_blooded? = false
	@num_legs = 4
end

class Primate < Animal
	warm_blooded? = true

end

class Frog < Animal
	warm_blooded? = false
end

class Bat < Animal
	warm_blooded? = true
end

class Chimpanzee < Primate 
	warm_blooded? = true
	@num_legs = 4
end

class Human < Primate
	warm_blooded? = true
	@num_legs = 2
end
