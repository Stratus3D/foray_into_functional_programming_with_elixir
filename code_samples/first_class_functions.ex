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
