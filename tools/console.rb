require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end


###  WRITE YOUR TEST CODE HERE ###

in_the_rough = Article.new("Bill", "golf", "In The Rough")
on_the_field = Article.new("Tony", "soccer","On The Field")
on_the_court = Article.new("John", "tennis","On The Court")
back_yard_garden = Article.new("John", "gardening", "Back Yard Garden")


golf = Magazine.new("Golf", "Sport")
soccer = Magazine.new("Soccer", "Sport")
tennis = Magazine.new("Tennis", "Sport")


john = Author.new("John")
tony = Author.new("Tony")
bill = Author.new("Bil")




### DO NOT REMOVE THIS
binding.pry

0
