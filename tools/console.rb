require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end


###  WRITE YOUR TEST CODE HERE ###
carlos=Author.new("Carlos")
john=Author.new("John")
max=Author.new("Max")

news1=Article.new("carlos", "Times", "Weather")
news2=Article.new("john", "Times", "NEWS!")
news3=Article.new("max", "Times", "WorldNews!")

mag1=Magazine.new("carlos", "Human")
mag2=Magazine.new("john", "Human-2.0")
mag3=Magazine.new("max", "Human-3.0")








### DO NOT REMOVE THIS
binding.pry

0
