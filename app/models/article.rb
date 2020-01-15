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

# #### Article

# - `Article#initialize(author, magazine, title)` DONE
#   - An article is initialized with an author as an Author object, a magazine as a Magazine object, and title as a string.
#   - An article **cannot** change its author, magazine, or title after it is has been initialized.
# - `Article#title` DONE
#   - Returns the title for that given article
# - `Article.all` DONE
#   - Returns an array of all Article instances

# #### Article

# - `Article#author` instance DONE or name????
#   - Returns the author for that given article
# - `Article#magazine` instance DONE or name???
#   - Returns the magazine for that given article