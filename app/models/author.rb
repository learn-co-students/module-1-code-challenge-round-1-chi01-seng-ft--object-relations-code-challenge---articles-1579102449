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
    Article.all.select { |article| article.author == self}
  end 

  def magazines
    my_magazines = articles.map { |article| article.magazine}
    my_magazines.uniq
  end 

  def add_article(magazine, title)
    Article.new(self, magazine, title)
  end 

  def topic_areas
    magazine_categories = magazines.map do |magazine| 
      magazine.category 
    end 
    magazine_categories.uniq
  end 



end
