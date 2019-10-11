class Triangle
  
  def initialize(ein, zwei, drei)
    
  end
  
  def kind
    
    
    
    if ein == zwei && zwei == drei
      :equilateral
    elsif ein == zwei || zwei == drei
      :isosceles
    else
      :scalene
    end
    
  end
  
end
