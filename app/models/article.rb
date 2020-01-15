class Article

    attr_reader :author, :magazine, :title
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

    def author
        @author << author
        author.article = self 
    end

    def magazine
        @magazine << magazine
        magazine.article = self
    end
    
    


end
