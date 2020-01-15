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
    my_contributors = Article.all.select do |article_instance|
      article_instance.magazine == self
    end

    my_contributors.map do |article_instance|
      article_instance.author
    end
  end
  # this method is meant to access all Article instances
  # then it's supposed to filter those article instances to a magazine
  # then it's supposed to produce a list of all authors who've contributed to that magazine

  def self.find_by_name(magazine)
    self.all.find do |magazine_instance|
      magazine_instance.name == self
    end
  end
  # this method is meant to access all instances of magazine
  # then find the first instance of the magazine where it matches the argument name

  def article_titles
    all_my_articles = self.all.select do |magazine_instance|
      magazine_instance.name == name
    end

    all_my_articles.map do |magazine_instance|
      magazine_instance.title 
    end
  end

  def contributing_authors
    
  end

end
