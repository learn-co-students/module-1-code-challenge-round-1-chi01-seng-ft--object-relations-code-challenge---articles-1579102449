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
  magazines = Article.all.select do |article| 
    article.magazine == self 
  end 
  magazines.map do |magazine| magazine.author 
  end 
  end 

  def self.find_by_name(name)
    @@all.find do |magazines| 
      magazines.name == name 
    end 
  end 

    def article_titles
      articles = Article.all.select do |article| 
      if articles.magazine == self
        articles 
    end 
  end 
end 

    def contributing_authors 
        Articles.all.select do |article| 
        article.magazine == self && article.author.length > 2 
      end
       end 
       
    
    



 
  


end
