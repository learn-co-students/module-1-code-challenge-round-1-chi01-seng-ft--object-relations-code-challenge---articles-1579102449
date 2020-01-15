class Magazine
  attr_accessor :name, :category

  @@all = []


  def initialize(name, category)
    @name = name
    @category = category
    @@all << self

  end

  def self.all
    @@all
  end

  def contributors
    my_instances = Article.all.select do |instance|
      instance.magazine == self
    end
    my_instances.map do |article|
      article.author
    end
  end

  #COME BACK TO THIS ONE
  def self.find_by_name(name)
    @@all.find do |instance|
       instance.name == name
    end
  end

  def article_titles
    my_articles= Article.all.select do |instance|
      instance.magazine == self
    end

    my_articles.map do |article|
      article.title
    end
  end

  def contributing_authors
    my_articles= Article.all.select do |instance|
      instance.magazine == self
    end
    author_instances = my_articles.map do |article|
      article.author
    end

  end

end


# #### Magazine

# - `Magazine#initialize(name, category)` DONE
#   - A magazine is initialized with a name as a string and a category as a string
#   - The name and category of the magazine **can be** changed after being initialized.
# - `Magazine#name` DONE
#   - Returns the name of this magazine
# - `Magazine#category` DONE
#   - Returns the category of this magazine
# - `Magazine.all` DONE
#   - Returns an array of all Magazine instances

# #### Magazine

# - `Magazine#contributors` DONE
#   - Returns an array of Author instances who have written for this magazine

#### Magazine

# - `Magazine.find_by_name(name)` DONE
#   - Given a string of magazine's name, this method returns the first magazine object that matches
# - `Magazine#article_titles` DONE
#   - Returns an array strings of the titles of all articles written for that magazine
# - `Magazine#contributing_authors` OUT OF TIME
#   - Returns an array of authors who have written more than 2 articles for the magazine