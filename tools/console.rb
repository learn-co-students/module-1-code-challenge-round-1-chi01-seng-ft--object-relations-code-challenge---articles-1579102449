require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end


###  WRITE YOUR TEST CODE HERE ###
vogue = Magazine.new("vogue", "random")
gossy = Magazine.new("gossy", "gossip")
espn = Magazine.new("espn", "sports")

eric = Author.new("eric")
kobe = Author.new("kobe")
terrance = Author.new("terrance")
lebron = Author.new("lebron")

blog = Article.new(eric, vogue, "blog")
tea = Article.new(terrance, gossy, "tea")
bball = Article.new(kobe, espn, "bball")
life = Article.new(kobe, espn, "life")
strats = Article.new(kobe, espn, "strats")
king = Article.new(lebron, espn, "king?")
champ = Article.new(lebron, espn, "champ")
losing = Article.new(lebron, espn, "losing")
teehee = Article.new(lebron, gossy, "really lebron")








### DO NOT REMOVE THIS
binding.pry

0
