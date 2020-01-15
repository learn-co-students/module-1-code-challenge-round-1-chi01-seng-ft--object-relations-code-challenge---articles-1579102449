
#think about attr_reader & attr_accessor

# attr_accessor :magazine, :title
# attr_reader :author

class Article

    # attr_reader :author #:magazine, :title
    attr_accessor :author, :magazine, :title
    @@all = []

    def initialize(author, magazine, title)
        @author = author
        @magazine = magazine
        @title = title
        @@all << self
    end

    def title
        @title
    end

    def self.all
        @@all
    end

    def authors
        self.author.name
    end

    def magazines
        self.magazine.name # I know article_1.magazine will give me the instance of the magazine
    end

end
