require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end



mag_one = Magazine.new("The Atlantic", "Politics & Culture")
mag_two = Magazine.new("Harpers", "Social Commentary")
mag_three = Magazine.new("New Left Review", "Extra Left commentary")
mag_four = Magazine.new("Time", "Flim-flam-fluff")

max = Author.new("Max")
jesse = Author.new("Jesse")
dana = Author.new("Dana")

article_one = Article.new(max, mag_one, "Politics Under Trump")
article_two = Article.new(jesse, mag_four, "Politics Under Obama")
article_three = Article.new(dana, mag_three, "The New 3rd Wave Feminists")
article_four = Article.new(max, mag_two, "Escape from New York")
article_four = Article.new(dana, mag_three, "Radical Feminist Ethics")
article_five = Article.new(dana, mag_three, "Feminism Under Attack")

### DO NOT REMOVE THIS
binding.pry

0
