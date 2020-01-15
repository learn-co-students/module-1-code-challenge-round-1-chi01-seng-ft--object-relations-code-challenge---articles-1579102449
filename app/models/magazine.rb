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
    end
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

  def contributing_authors
    contributors = self.contributors.uniq #you could put the uniq here or in the contributors method, I've done it here since the specs for contributors don't mention uniq
    contributors.select do |contributor|
      Article.count_by_author_by_magazine(contributor, self) >= 2
    end
  end

end
