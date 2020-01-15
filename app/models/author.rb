class Author
  
  attr_accessor :name

  @@all = []


  def initialize(name)
    @name = name
    @@all << self
  end

  def self.all
    @@all
  end

  def articles
    Article.all.select do |articles|
      articles.author == self
    end
  end

  def magazines
    articles.map do |articles|
      articles.magazine
    end
  end

  def add_article(magazine, title)
    Article.new(self, magazine, title)
  end

  def topic_areas
    magazines.map do |magazine|
      magazine.category.uniq
    end
  end



end
