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
    Article.all.select { |article| article.magazine == self}
  end 

  def contributors
    articles.map { |article| article.author}
  end 

  def self.find_by_name(magazine_name)
    @@all.find { |magazine| magazine.name == magazine_name}
  end 

  def article_titles
    articles.map { |article| article.title}
  end 

  def contributing_authors
    final_array = []
    contributors_hash = contributors.group_by(&:itself)
    authors_more_than_two = contributors_hash.select do |key, value| 
      value.count > 2
      end 
    authors_more_than_two.each do |key, value|
      final_array << key
      end 
    final_array
  end 

end
