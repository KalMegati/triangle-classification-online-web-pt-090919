class Triangle
  
  attr_reader :ein, :zwei, :drei
  
  def initialize(ein, zwei, drei)
    @ein = ein
    @zwei = zwei
    @drei = drei
  end
  
  def kind
    
    
    
    if @ein == @zwei && @zwei == @drei
      :equilateral
    elsif @ein == @zwei || @zwei == @drei || @drei == @ein
      :isosceles
    else
      :scalene
    end
    
  end
  
end
