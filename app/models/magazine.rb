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
    self.author.map {|m| m.author}
  end

  def self.find_by_name(name)
    @@all.find {|x| x.name == name}
  end

  def article_titles
    self.article.map {|a| a.article}
  end

  def contributing_authors
    #ran out of time for this method need more Practice. 
  end

end
