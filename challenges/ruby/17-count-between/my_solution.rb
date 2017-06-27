# Count Between

# Tu solucion abajo:

def count_between(array,min,max)
	if max < min 
		nil
	end
	
	if array.empty? == true
		0
	else array.count { |val| val >= min && val <=max }

	end
		
end

