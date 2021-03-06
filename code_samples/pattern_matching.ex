# First slide
:a = :a #=> :a
:a = :b #=> ** (MatchError) no match of right hand side value: :b
letter = :a #=> :a
letter #=> :a

# Second slide
# Atoms can be used in pattern matching
{:ok, foo} = {:ok, "foo bar baz"}
foo #=> "foo bar baz"
{:ok, foo} = {:error, :crashed}
#=> ** (MatchError) no match of right hand side value: {:error, :crashed}

# Third slide
# Patter matching a list
[head|tail] = [1,2,3]
head #=> 1
tail #=> [2,3]
[first,second,third] = [1,2,3]
second #=> 2
[one,two] = [1,2,3] #=> ** (MatchError) no match of right hand side value: [1, 2, 3]
[first,second|rest] = [1,2,3]
second #=> 2

# Fourth slide
{num, num} = {1, 1} #=> {1, 1}
{num, num} = {1, 2} #=> ** (MatchError) no match of right hand side value: {1, 2}

# Fifth slide
{_, _} = {1, 1} #=> {1, 1}
{_, _} = {1, 2} #=> {1, 2}
# This fails
{num, num} = {1, 2} #=> ** (MatchError) no match of right hand side value: {1, 2}

# Sixth slide
username = "José"

{:name, ^username} = {:name, "Joe"}
#=> ** (MatchError) no match of right hand side value: {:name, "Joe"}

{:name, ^username} = {:name, "José"}
#=> {:name, "José"}

# Seventh slide
# These are not parameters, they are patterns
# evaluated if value passed in matches `0`
def fib(0) do 0 end
# evaluated if value passed in matches `1`
def fib(1) do 1 end
# evaluated if the first two clauses don't match
def fib(n) do fib(n-1) + fib(n-2) end

# Eighth slide
case do_something(work) do
  {:ok, result} -> # success
    do_something_with_result(result)
  {:error, :invalid_work} -> # special case
    handle_invalid_work(error)
  error -> # error
    handle_error(error)
end
