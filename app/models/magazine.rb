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
    magazines_issues = Article.all.select {|instances| instances.magazine == self}
    contributors_authors = magazines_issues.map {|instances| instances.author}
    contributors_authors
 end

 def self.find_by_name(name_of)
    magazine_list = Magazine.all.find { |instance| instance.name == name_of}
 end

 def article_titles
  magazine_issues = Article.all.select {|instances| instances.magazine == self}
  magazine_issues.map {|titles| titles.title }
 end

 def contributors_authors
   magazine_issues = Article.all.select{|instance| instance.magazine == self}
   authors_by = magazine_issues.map{|instance| instance.author}
  #  authors_by.find {|instances| instance.name.count > 1}
 end




end
