class Author
  attr_reader :name


  def initialize(name)
    @name = name
  
  end

  # def author_instances
  #   
  # end

  def articles #fix!
    Article.all.select do |articles|
       articles.author == self
    end
  end

  def magazines
      author_articles = Article.all.select do |articles|
      articles.author == self
      end
      author_articles.select do |articles|
        articles.magazine
      end

  end

  def add_article(magazine,title)
      new_article = Article.new(self, magazine, title)
      new_article.author = self
  end

  def topic_areas
    Magazine.all.select do |articles|
    articles.author == self
    end. select do |articles|
    articles.category
    end
  end

end
