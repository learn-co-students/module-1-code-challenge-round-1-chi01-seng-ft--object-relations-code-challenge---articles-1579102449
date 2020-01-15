class Author
  attr_accessor :name
  #origninally attr_accessor, but to change to attr_reader to not change?


  def initialize(name)
    @name = name

  end

  def articles
    # want the articles written by the author(Jack London)
    Article.all.map do |author_instances|
      author_instances.name
    end

    # loop through articles
    # get to names that match the articles
    #
    
    
    # select through the articles and pull out == name
  end

  def magazingess

  end


end
