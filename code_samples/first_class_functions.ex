# Second slide
defmodule Hello do
  def greet("SunJUG") do "hello everyone!" end
  def greet(name) do "hello" <> name end
end

hello = &Hello.greet/1 #=> #Function<6.90072148/1 in :erl_eval.expr/5>
hello.("SunJUG") #=> "hello everyone!"
Hello.greet("José") #=> "hello José

# Third slide
special_greeting = "hello everyone!"
greet = fn
  "SunJUG" -> special_greet
  name -> "hello" <> name
end

greet #=> #Function<6.90072148/1 in :erl_eval.expr/5>
greet.("SunJUG")

# Fourth Slide
user1 = [first_name: "Joe", last_name: "Armstrong", lang: "Erlang"]
user2 = [first_name: "José", last_name: "Valim", lang: "Elixir"]
users = [user1, user2]

# Function that fetches the :first_name from a keyword list
first_name = fn(user) ->
  Keyword.fetch!(user, :first_name)
end

# Map the first_name function to every item in the users list
Enum.map(users, first_name) #=> ["Joe", "José"]

#Fifth Slide
user1 = [first_name: "Joe", last_name: "Armstrong", lang: "Erlang"]
user2 = [first_name: "José", last_name: "Valim", lang: "Elixir"]
users = [user1, user2]

# Function that returns a function that fetches the `field` key value from a keyword list
get_field = fn(field) ->
  fn(user) ->
    Keyword.fetch!(user, field)
  end
end

Enum.map(users, get_field.(:last_name)) #=> ["Armstrong", "Valim"]

