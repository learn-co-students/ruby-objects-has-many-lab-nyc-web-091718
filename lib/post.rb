require 'pry'
class Post
  attr_reader :title
  attr_accessor :author

  @@all = []

  def self.all
    @@all
  end

  def initialize(title)
    @title = title
    @@all << self
  end

  def author_name
    if self.author == nil
      nil
    else
      self.author.name
    end
  end


  # p1 = Post.new("How")
  # p2 = Post.new("What")
  #binding.pry
end
