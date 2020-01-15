require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end


###  WRITE YOUR TEST CODE HERE ###

#authors

j_k_rowling = Author.new("J.K. Rowling")
tolkien = Author.new("JRR Tolkien")
jesus = Author.new("Jesus")
grumpy_cat = Author.new("Grumpy Cat")


#magazines

opera_news = Magazine.new("Opera News", "Music/Arts")
safari = Magazine.new("Safari", "Travel")
cats = Magazine.new("Cats Weekly", "Entertainment")
star = Magazine.new("Star", "Entertainment")
wow = Magazine.new("WOW", "Entertainment")

#articles

h_p_opera = Article.new(j_k_rowling, opera_news, "Harry Potter: The Opera")
cats_on_safari = Article.new(grumpy_cat, safari, "I was still grumpy on Safari")
jc_superstar = Article.new(jesus, opera_news, "Jesus Christ Superstar: 5 Stars!!!")
im_a_star= Article.new(tolkien, star, "Still Famous, y'all")
h_p_cat = Article.new(j_k_rowling, cats, "I named my cat Harry Potter")
voldemort_cat = Article.new(j_k_rowling, cats, "I named my second cat Voldemort...lol")
cats_grumpy = Article.new(grumpy_cat, cats, "I was still grumpy on Safari")
grumpy_celeb = Article.new(grumpy_cat, star, "I am grumpy and famous")
wow_grumpy = Article.new(grumpy_cat, wow, "WOW I am GRUMPY")



### DO NOT REMOVE THIS
binding.pry

0
