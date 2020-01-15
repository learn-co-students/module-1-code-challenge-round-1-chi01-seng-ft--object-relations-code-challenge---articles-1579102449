class Author

  attr_reader :name

  @@all = []

  def initialize(name)
    @name = name
    @@all << self
  end

  def self.all
    @@all
  end

  def articles
    Article.all.select do |article|
      article.author == self
    end
  end

  def magazines
    magazines = self.articles.map do |article|
      article.magazine
    end
    magazines.uniq
  end

  def add_article(magazine, title)
    Article.new(self, magazine, title)
  end

  def topic_areas
    categories = self.magazines.map do |magazine|
      magazine.category
    end
    categories.uniq
  end

end
