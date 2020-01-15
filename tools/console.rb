require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end


###  WRITE YOUR TEST CODE HERE ###
# Authors
christine = Author.new("Christine Doherty")
lexie = Author.new("Lexie DeGrandchamp")
remus = Author.new("Remus Doherty-DeGrandchamp")

#Magazines
pinball_today = Magazine.new("Pinball Today", "Pinball")
dog_training = Magazine.new("Dog Training", "Dogs")
forensic_files = Magazine.new("Feline Forensic Files", "Murder")
ff = Magazine.new("Feline Forensic Files", "Cat SVU")

#Articles
starwars = Article.new(christine, pinball_today, "Stern Starwars")
sit = Article.new(lexie, dog_training, "How To Sit")
christine.add_article(pinball_today, "New Stranger Things Game")
remus.add_article(forensic_files, "Cat Murder -- Murder by Cats")
christine.add_article(forensic_files, "Help My Cat's A Serial Killer")
remus.add_article(forensic_files, "My Human is On To Me, Now What?")
remus.add_article(pinball_today, "William's Bad Cats Review")
remus.add_article(forensic_files, "When Mother's Away, the Cat Will Play")
christine.add_article(forensic_files, "Mice Drowning")
christine.add_article(forensic_files, "How To Tell If Your Cat Was a Serial Killer in a Past Life")

p forensic_files.contributors




# ### DO NOT REMOVE THIS
# binding.pry

# 0
