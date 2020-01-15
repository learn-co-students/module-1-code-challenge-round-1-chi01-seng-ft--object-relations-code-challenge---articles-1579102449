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


  def articles
    Article.all.select do |article|
      article.magazine == self
    end
  end


  def contributors
    self.articles.map do |article|
      article.author
    end.uniq
  end


  def self.find_by_name(name)
    Magazine.all.find do |magazine|
      magazine.name == name
    end
  end


  def article_titles
    self.articles.map do |article|
      article.title
    end
  end


  def contributions(author)
    self.articles.select do |article|
      article.author == author
    end
  end


  def contributing_authors
    contributing_authors = []
    self.contributors.each do |author|
      if self.contributions(author).length > 2
        contributing_authors << author
      end
    end
    contributing_authors
  end


end
