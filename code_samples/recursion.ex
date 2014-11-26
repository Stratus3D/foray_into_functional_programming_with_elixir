# Third slide
# Added all the items in the list together to compute the sum
def sum_list([head | tail], acc) do
  sum_list(tail, acc + head)
end

def sum_list([], acc) do
  acc
end

# Fourth slide
def factorial(0) do
  1
end

def factorial(number) do
  factoral(number - 1) * number
end

# Fifth slide
# Tail call optimized version of factorial function
def factorial(0, result) do
  result
end

def factorial(number, result) do
  factoral(number - 1, result * number)
end

# Misc
# Implementation of reduce
def reduce([], value, _) do
  value
end

def reduce([head|tail], value, fun) do
  reduce(tail, fun.(head, value), fun)
end
