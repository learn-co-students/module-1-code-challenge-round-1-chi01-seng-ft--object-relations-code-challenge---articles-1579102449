class Magazine
  attr_accessor :name, :category

  @@all = []

  def initialize(name, category)
    @name = name
    @category = category

    @@all << self
  end

  def articles 
    Article.all.select {|a| a.magazine == self}
  end

  def contributors 
    authors = articles.map {|mag| mag.author}.uniq
    # authors.map {|a| a.name}  ## Returns only names in array
  end 

  def article_titles
   articles.map {|a| a.title}
  end

  def contributing_authors
    authors = articles.map {|mag| mag.author}
    contr = authors.find_all{ |a| authors.count(a) > 2}## Found on 
    #https://stackoverflow.com/questions/8921999/ruby-how-to-find-and-return-a-duplicate-value-in-array/31354262
    contr.map {|c| c.name}.uniq ## Maybe not the best syntax?


    # authors.any? do |y| x = authors.count(y) > 2 
    # end
    # authors.count{|a| a.name}
  end

  def self.find_by_name(name)
    self.all.find {|m| m.name == name}
  end

  def self.all 
    @@all
  end


end
