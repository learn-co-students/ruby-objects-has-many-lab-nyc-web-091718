require 'pry'
class Author

  attr_accessor :name, :posts, :author

  def initialize(name)
    @name = name
    @posts = []
  end

  def add_post(post)
    post.author = self
    @posts << post
  end

  def add_post_by_title(post_title)
    #binding.pry
    post = Post.new(post_title)
    post.author = self
    self.posts << post
  end

  def self.post_count
    #binding.pry
    Post.all.count
  end

end
