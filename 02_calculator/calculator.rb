def add(x, y)
  x + y
end

def subtract(x,y)
  x-y
end

def sum(array)
  array.inject(0) {|sum, i| sum + i}
end

def multiply(a,b)
  a*b
end

def multiply_array(array)
  array.inject {|product, i| product*i}
end

def factorial(x)
  if x == 0
    1
  else
  (1..x).inject {|product, i| product*i}
  end
# (1..x).inject(1,:*)
  # if x == 0
  #   1
  # else
  #   x * factorial(x-1)
  # end
end
