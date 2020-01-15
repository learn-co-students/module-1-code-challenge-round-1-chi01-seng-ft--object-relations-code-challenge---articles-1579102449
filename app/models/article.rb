class Article

    attr_reader :author, :magazine, :title, :all

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


        def author 
            @author
        end

        def magazine
            @magazine
        end

        def self.all
            @@all
        end

end
