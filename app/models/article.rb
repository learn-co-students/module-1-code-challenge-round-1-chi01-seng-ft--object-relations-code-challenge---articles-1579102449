class Article
    attr_reader :author, :magazine
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

    def title
        self.all.select do |article_instance|
            article_instance.title == title
        end
    end
  # this method is meant to access all article instances in Article
  # then find all titles of those instances

    def author
        article_author = self.all.select do |article_instance|
            article_instance.author == author
        end
        article_author.map do |article_instance|
            article_instance.author
        end
    end
    # this method is meant to access all instances of Article
    # then filter to only the articles associated with a particular author

    def magazine
        article_magazine = self.all.select do |article_instance|
            article_instance.magazine == magazine
        end
        article_magazine.map do |article_instance|
            article_instance.magazine
        end
    end
    # this method is meant to access all instances of Article
    # then filter to only the articles associated with a particular magazine


end
