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
    Article.all.select { |item| item.author == self }
  end

  def magazines
    Magazine.all.map { |item| item.name == self}
  end

  def add_article(magazine, title)
    Article.new(self,magazine,title)
  end

  def topic_areas
    Magazines.all.map { |item| item.category == self }
  end
  
end
