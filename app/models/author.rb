class Author
  attr_accessor :name


  def initialize(name)
    @name = name
  
  end

  def articles
    Article.all.select do |article| article.author == self end 
  end 

  def magazines 
    articles = Article.all.select do |article| 
      article.author == self end
      articles.map do |my_articles| 
        my_articles.magazine
      end 
  end 

  def add_article(magazine, title)
    Article.new(self, magazine, title)
  end 

  def topic_areas
    magazines.map do |my_magazines| 
      my_magazines.category 
    end 
  end 


end
