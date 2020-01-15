require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end


###  WRITE YOUR TEST CODE HERE ###


niko = Author.new("niko")
blaizine = Magazine.new("blaize", "dance")
cruzticle = Article.new(niko, blaizine, "brothers")
tonto = Article.new(niko, blaizine, "siblings")
mumzine = Magazine.new("mum", "mma")
niko.add_article(mumzine, "steps")






### DO NOT REMOVE THIS
binding.pry

0
