class Triangle
  
  attr_reader :ein, :zwei, :drei
  
  def initialize(ein, zwei, drei)
    @ein = ein
    @zwei = zwei
    @drei = drei
  end
  
    class TriangleError < StandardError
      def message
        "HWAT"
      end
    end
  
  def kind
    
    if @ein <= 0 || @zwei <= 0 || @drei <= 0
      TriangleError
    end
    
    if @ein == @zwei && @zwei == @drei
      :equilateral
    elsif @ein == @zwei || @zwei == @drei || @drei == @ein
      :isosceles
    else
      :scalene
    end
    
  end
  
end
