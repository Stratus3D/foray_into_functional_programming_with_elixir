# Added all the items in the list together to compute the sum
def sum_list([head | tail], acc) do
  sum_list(tail, acc + head)
end

def sum_list([], acc) do
  acc
end

def factoral(0) do
  1
end
def factoral(number) do
  factoral(number - 1) * number
end

# Implementation of reduce
def reduce([], value, _) do
  value
end

def reduce([head|tail], value, fun) do
  reduce(tail, fun.(head, value), fun)
end
