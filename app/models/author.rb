class Author
  attr_accessor
  attr_reader :name


  def initialize(name)
    @name = name
  
  end

  def articles
    Article.all.select do |article_instance|
      article_instance.author == self
    end
  end

  def my_article_instances
    my_instances = Article.all.select do |article_instance|
      article_instance.author == self
    end
  end

  def magazines
    #refactored this to use the above method to be called on by topic areas
    # my_instances = Article.all.select do |article_instance|
    #   article_instance.author == self
    # end
    # my_instances
    self.my_article_instances.map do |instance|
      instance.magazine
    end.uniq
  end


  def add_article(magazine, title)
    Article.new(self, magazine, title)
  end

  def topic_areas
    #map over all magazines, not unique, to collect all the articles, then return unique categories
    my_magazines = self.my_article_instances.map do |instance|
      instance.magazine
    end
    my_magazines.map do |magazines|
      magazines.category
    end.uniq
  end


end

# #### Author

# - `Author#initialize(name)` DONE
#   - An author is initialized with a name, as a string.
#   - A name **cannot** be changed after it is initialized.
# - `Author#name` DONE
#   - Returns the name of the author

#### Author

# - `Author#articles` DONE
#   - Returns an array of Article instances the author has written
# - `Author#magazines` DONE
#   - Returns a **unique** array of Magazine instances for which the author has contributed to

#### Author

# - `Author#add_article(magazine, title)` DONE
#   - Given a magazine (as Magazine instance) and a title (as a string), creates a new Article instance and associates it with that author and that magazine.
# - `Author#topic_areas`  DONE
#   - Returns a **unique** array of strings with the categories of the magazines the author has contributed to