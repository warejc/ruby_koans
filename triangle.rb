# Triangle Project Code.

# Triangle analyzes the lengths of the sides of a triangle
# (represented by a, b and c) and returns the type of triangle.
#
# It returns:
#   :equilateral  if all sides are equal
#   :isosceles    if exactly 2 sides are equal
#   :scalene      if no sides are equal
#
# The tests for this method can be found in
#   about_triangle_project.rb
# and
#   about_triangle_project_2.rb
#
def triangle(a, b, c)
  @ab = a + b
  @ac = a + c
  @cb = c + b
  
  if @ab <= c
    raise TriangleError
  elsif @ac <= b
    raise TriangleError
  elsif @cb <= a
    raise TriangleError
  end 
  
  if a <= 0 or b <= 0 or c <= 0
    raise TriangleError
  end

  return_val = nil
  return_val = if a == b and a == c
                :equilateral
               elsif a != b and a != c and b != c
                :scalene
               else
                :isosceles
            end

  return return_val
end

# Error class used in part 2.  No need to change this code.
class TriangleError < StandardError
end
