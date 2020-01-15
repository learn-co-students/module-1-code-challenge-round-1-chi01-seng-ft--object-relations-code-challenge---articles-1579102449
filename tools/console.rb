require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end


###  WRITE YOUR TEST CODE HERE ###

#author
john = Author.new("John Grisham")
danielle = Author.new("Danielle Steele")

#magazine
harpers = Magazine.new("Harper's Bazaar", "culture")
si = Magazine.new("Sports Illustrated", "athletics")

#article
article1 = Article.new(danielle, harpers, "How to Love")
article2 = Article.new(john, si, "Sports Things")




### DO NOT REMOVE THIS
binding.pry

0

# ruby tools/console.rb