class Author
  attr_accessor :name, :posts
  @@posts = 0

  def initialize(name)
    @name = name
    @posts = []
  end

  def add_post(new_post)
    new_post.author = self
    self.posts << new_post
    @@posts += 1
  end

  def add_post_by_title(new_post_title)
    new_post = Post.new(new_post_title,self)
    self.posts << new_post
    @@posts += 1
  end

  def self.post_count
    @@posts
  end
end #end of Author class
