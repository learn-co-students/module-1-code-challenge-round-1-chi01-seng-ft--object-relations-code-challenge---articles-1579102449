require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end


###  WRITE YOUR TEST CODE HERE ###
stephen_king = Author.new("Stephen King")
neil_gaiman = Author.new("Neil Gaiman")

wired = Magazine.new("Wired", "science")
new_yorker = Magazine.new("New Yorker", "stories")

on_writing = Article.new(stephen_king, new_yorker, "On Writing")
american_gods = Article.new(neil_gaiman, wired, "American Gods")
carrie = Article.new(stephen_king, new_yorker, "Carrie")



### DO NOT REMOVE THIS
binding.pry

0
