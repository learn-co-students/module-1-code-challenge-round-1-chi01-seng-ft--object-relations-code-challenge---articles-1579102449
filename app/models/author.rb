class Author
  attr_reader :name, :magazine, :title

  @@all = []

  def initialize(name)
    @name = name
  
    @@all << self
  end

  def add_article(magazine, title)
    @magazine = magazine 
    @title = title

    Article.new(self, magazine, title)
  end

  def articles
    Article.all.select {|a| a.author == self}
  end

  def magazines
    x = articles.map{|a| a.magazine}.uniq
    # x.map {|m| m.name}  ##Re turns only name of mags in array  -- easier to see 
  end

  def topic_areas
    mags = articles.map {|a| a.magazine}.uniq
    mags.map {|m| m.category}
  end

  def self.all
    @@all
  end


end
