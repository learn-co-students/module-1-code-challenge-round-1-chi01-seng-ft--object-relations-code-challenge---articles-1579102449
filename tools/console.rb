require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end


###  WRITE YOUR TEST CODE HERE ###

#---------------Authors--------------#
author_1 = Author.new("Jack London")
author_2 = Author.new("Agatha Christie")
author_3 = Author.new("Dr.Suess")

#---------------Magazine-------------#
mag_1 = Magazine.new("Maker", "Tech Hardware")
mag_2 = Magazine.new("Vroom", "Automobiles")
mag_3 = Magazine.new("La Casa", "Home Goods")

#---------------Article-------------#
article_1 = Article.new(author_1, mag_1, "Wild Machines")

article_2 = Article.new(author_2, mag_3, "Imagery Inspiration")

article_3 = Article.new(author_3, mag_2, "Go! Go! Vroom! Vroom!")

article_4 = Article.new(author_1, mag_2, "Some Titlea")










### DO NOT REMOVE THIS
binding.pry

0
