class Author
  attr_accessor :name


  def initialize(name)
    @name = name
  end 

  def articles
    Article.all.select {|instances| instances.author == self}
  end

  def magazines
    authors_list = Article.all.select{|instances| instances.author == self}
    magazines_author = authors_list.map {|instance| instance.magazine}
    magazines_author.uniq
  end

  def add_article (magazine,title)
    Article.new(self, magazine, title)
  end

  def topic_areas
    authors_list = Article.all.select{|instances| instances.author == self}
    magazines_list = authors_list.map{ |instances| instances.magazine}
    topics = magazines_list.map{|instance| instance.category}
    topics.uniq
  end

  



end
