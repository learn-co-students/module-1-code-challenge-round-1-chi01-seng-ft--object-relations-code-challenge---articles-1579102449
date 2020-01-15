require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end


###  WRITE YOUR TEST CODE HERE ###

keenan = Author.new("Keenan")
odin = Magazine.new("Odin", "Business")
blazing = Article.new(keenan, odin, "Blazing")

jessie = Author.new("Jessie")
roses = Magazine.new("Roses", "News")
rose_water = Article.new(jessie, roses, "RoseWater")

linda = Author.new("Linda")
monsters = Magazine.new("Monsters", "History")
women = Article.new(linda, odin, "Women")


legends = Article.new(keenan, monsters, "History")

mythical_legends = Article.new(keenan, odin, "Futures")













### DO NOT REMOVE THIS
binding.pry

0
