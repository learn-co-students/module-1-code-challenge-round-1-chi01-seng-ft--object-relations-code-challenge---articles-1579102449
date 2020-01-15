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
    my_articles = Article.all.select do |article_instances|
      article_instances.author == self
    end

    my_articles.map do |article_instances|
      article_instances.title
    end
  end
  # this method is meant to access all article instances in Article
  # then find all authors of those instances
  # then filter by the specific author
  # then filter to artile name of the associated article

  def magazines
    my_magazines = Article.all.select do |article_instances|
      article_instances.magazine == magazine
    end

    my_magazines.map do |article_instances|
      article_instances.author
    end.uniq
  end
  # this method is meant to access all article instances in Article
  # then find all magazines of those instances
  # then filter by the specific author
  # then filter to artile name of the associated magazine

  def add_article(magazine, title)
    Article.new(self, magazine, title)
  end

  def topic_areas
    my_topic_areas = Article.all.select do |article_instances|
      article_instances.author == self
    end

    my_topic_areas.map do |article_instances|
      article_instances.category
    end.uniq
  end
  # this method is meant to access all instances in Article
  # then filter to the instances where author = self
  # then filter further to only the associated categoies




end
