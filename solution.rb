# Please copy/paste all three classes into this file to submit your solution!

class Author
    attr_accessor
    attr_reader :name
  
  
    def initialize(name)
      @name = name
    
    end
  
    def articles
      Article.all.select do |article_instance|
        article_instance.author == self
      end
    end
  
    def my_article_instances
      my_instances = Article.all.select do |article_instance|
        article_instance.author == self
      end
    end
  
    def magazines
      #refactored this to use the above method to be called on by topic areas
      # my_instances = Article.all.select do |article_instance|
      #   article_instance.author == self
      # end
      # my_instances
      self.my_article_instances.map do |instance|
        instance.magazine
      end.uniq
    end
  
  
    def add_article(magazine, title)
      Article.new(self, magazine, title)
    end
  
    def topic_areas
      #map over all magazines, not unique, to collect all the articles, then return unique categories
      my_magazines = self.my_article_instances.map do |instance|
        instance.magazine
      end
      my_magazines.map do |magazines|
        magazines.category
      end.uniq
    end
  end

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
      my_instances = Article.all.select do |instance|
        instance.magazine == self
      end
      my_instances.map do |article|
        article.author
      end
    end
  
    #COME BACK TO THIS ONE
    def self.find_by_name(name)
      @@all.find do |instance|
         instance.name == name
      end
    end
  
    def article_titles
      my_articles= Article.all.select do |instance|
        instance.magazine == self
      end
  
      my_articles.map do |article|
        article.title
      end
    end
  
    def contributing_authors
      my_articles= Article.all.select do |instance|
        instance.magazine == self
      end
      author_instances = my_articles.map do |article|
        article.author
      end
    end
  end

  class Article

    attr_accessor :author, :magazine, :title

    @@all = []

    def initialize(author, magazine, title)
        @author = author
        @magazine = magazine
        @title = title
        @@all << self
    end

    def self.all
        @@all
    end
end

