require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end


###  WRITE YOUR TEST CODE HERE ###

author_1 = Author.new("peter")
author_2 = Author.new("Tom")
author_3 = Author.new("Anthony")


magazine_1 = Magazine.new("Hightimes","Cannibis News")
magazine_2 = Magazine.new("Politico","Political news")
magazine_3 = Magazine.new("Vogue","Fashion News")

article_1 = Article.new(author_1, magazine_2, "TRUMP'S  Impeachment")
article_2 = Article.new(author_3, magazine_1, "Recreational in Illinios")
article_3 = Article.new(author_1, magazine_3, "MET GALA 2020")

### DO NOT REMOVE THIS
binding.pry

0
