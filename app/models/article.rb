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

    def self.count_by_author_by_magazine(author, magazine)
        Article.all.count do |article|
            article.author == author && article.magazine == magazine
        end
    end

end
