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
{num, num} = {1, 1} #=> {1, 1}
{num, num} = {1, 2} #=> ** (MatchError) no match of right hand side value: {1, 2}

# Fourth slide
{_, _} = {1, 1} #=> {1, 1}
{_, _} = {1, 2} #=> {1, 2}
# This fails
{num, num} = {1, 2} #=> ** (MatchError) no match of right hand side value: {1, 2}

# Fifth slide
# It's common practice to assign a value to `_` if we don't need it
{status, _} = {:error, :crashed}
status #=> :error
# Patter matching a list
[head|tail] = [1,2,3]
head #=> 1
tail #=> [2,3]

# Sixth slide
