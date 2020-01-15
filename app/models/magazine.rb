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
    Author.all.select { |item| item.name == self}
  end

  def self.find_by_name(name)
    @@all.find { |item| item.name == self }
  end

  def article_titles
    Article.all.select { |item| item.title ==  self }
  end

  def contributing_authors
    new_arr = []
    new arr << Authors.all.select { |item| items.name >= self + 2}
    new_arr.count
  end

end
