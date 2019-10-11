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
      begin
        raise TriangleError
      rescue TriangleError => error
        puts error.message
      end
    end
    
    unless @ein + @zwei > @drei && @zwei + @drei > @ein && @drei + @ein > @zwei
      raise TriangleError
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
