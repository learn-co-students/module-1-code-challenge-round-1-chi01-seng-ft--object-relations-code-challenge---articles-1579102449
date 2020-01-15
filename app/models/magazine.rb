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

  def article_select
    Article.all.select do |author|
      author.magazine == self
    end
  end

  def magazine_contributors
    article_select.map do |article|
      article.author
    end
  end

  def self.find_by_name(name)
    self.all.find do |magazine| 
      magazine.name == name
    end
  end

  def article_titles
    article_select.map do |article|
      article.title
    end
  end

  def author_count
    magazine_contributors.count
  end

  def contributing_authors
    if magazine_contributors.count > 2
      # author_count.map do |
  end


end
