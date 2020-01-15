require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end


###  WRITE YOUR TEST CODE HERE ###
dave = Author.new("Dave")
si = Magazine.new("Sports Illustrated", "sports")
espn = Magazine.new("ESPN", "sports")
garth = Author.new("Garth")
home = Magazine.new("Home", "home")

a1 = Article.new(dave, si, "Brady Sucks")
a2 = Article.new(garth, espn, "NASCAR RULEZZZZ!!!!!")
a3 = Article.new(dave, espn, "What's Wrong With Portland?")
a4 = Article.new(dave, home, "Decorating")
a5 = Article.new(dave, espn, "Is Curry the Greatest Shooter of all Time? Yes")
a6 = Article.new(dave, espn, "Does Harden Choke in the Playoffs?")
garth.add_article(si, "DEJR 4 LYFE")


p espn.contributing_authors
# p si.article_titles
# p Magazine.find_by_name("ESPN")

# p dave.topic_areas

# p dave.articles
# p Magazine.all
# p Author.all

# p Article.all

# p a1.author
# p a1.magazine
# p dave.magazine

# p espn.articles









### DO NOT REMOVE THIS
# binding.pry

0
