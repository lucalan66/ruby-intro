# Triangle Side

# Tu solucion abajo:


def valid_triangle? (num1, num2, num3)

  if num1<=0 && num2<=0 && num3<=0 
    return false   
  end

  if num1 < num2 + num3 && num2 < num1 + num3 && num3 < num1 + num2
    true
  else
    false
  end
end


  












