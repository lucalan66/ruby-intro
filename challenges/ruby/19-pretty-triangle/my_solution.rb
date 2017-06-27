# Pretty Triangle


# Tu solucion abajo:


def print_triangle(lines)
  cont = 0
  if lines <= 0
    return false
  end

  lines.times do
    cont = cont + 1
    puts '*' * cont
  end
  
end


