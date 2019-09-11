class Triangle
  
  attr_accessor :a, :b, :c, :triangle
  
  def initialize(a:, b:, c:)
    @a = a
    @b = b
    @c = c
  end
  
  def kind
    if (a == 0 || b == 0 || c == 0) ||
      begin
        raise TriangleError
      rescue TriangleError => error 
        puts error.message
      end
    elsif a == b && b == c 
      puts :equilateral
      elsif (a == b && b != c) || (a == c && c != b) || (c == b && b != a) 
      puts :isoceles
    else
      a != b && b != c && a != c
      puts :scalene
    end
  end
    
  class TriangleError < StandardError
    def message 
      puts "This is not a valid triangle."
    end
  end
end
