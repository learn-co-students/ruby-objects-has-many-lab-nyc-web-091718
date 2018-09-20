require 'pry'
class Post

  attr_accessor :title, :author

  @@all = []

  def self.all
    @@all
  end

  def initialize(title)
    @title = title
    @author = nil
    @@all << self
  end

  def author_name
    self.author != nil ? self.author.name : nil
  end
end #end Post
