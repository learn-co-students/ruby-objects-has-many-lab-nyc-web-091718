require 'pry'

class Author
  attr_accessor :name, :posts

  def initialize(name)
    @name = name
    @posts = []
  end # end initialize

  def add_post(post)
    post.author = self
    self.posts << post
  end # end add_post

  def add_post_by_title(title)
    post = Post.new(title)
    self.posts << post
    post.author = self
  end # end add_post_by_title

  def self.post_count
    Post.all.count
  end # end self.post_count

end # end Author class
