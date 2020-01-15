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
    articles = Article.all.select{|article| article.magazine == self}
    articles.map{|article| article.author}
  end

  def self.find_by_name(name)
    self.all.find{|magazine| magazine.name == name}
  end

  def article_titles
    articles = Article.all.select{|article| article.magazine == self}
    articles.map{|article| article.title}
  end

  def contributing_authors
    contributions = Hash.new(0)
    contributors.each{|author| contributions[author] += 1}
    contributions.select!{|k,v| v > 2}
    contributions.map{|k,v| k}
  end



end
