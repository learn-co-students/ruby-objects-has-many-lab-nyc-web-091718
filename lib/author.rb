require 'pry'
require_relative './post.rb'

class Author


  attr_accessor :name

  def initialize(name)
    @name = name
    # @posts = []
  end

  def posts
    Post.all.select do |post|
      post.author == self
    end
  end

  def add_post(post)
    post.author = self
  end

  def add_post_by_title(post_title)
    post = Post.new(post_title)
    # @posts << post
    post.author = self
  end

  def self.post_count
    Post.all.count
  end


end

# a1 = Author.new("JK")
# a1.add_post_by_title("harry potter")

#binding.pry
