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
      contributor_ = Article.all.select do |articles|
      articles.magazine == self
    end
      contributor_.select do |articles|
       p articles.author
    end

  end
  

  def self.find_by_name(name)
    self.all.find do |magazines|
      magazines.name == self
    end
  end

  def article_titles
    Article.all.select do |articles|
      articles.magazine == self 
    end.select do |magazine_in|
      magazine_in.title

  end
end

  def contributing_authors

  end






end
