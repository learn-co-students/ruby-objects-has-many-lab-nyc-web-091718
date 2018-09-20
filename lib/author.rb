class Author

  @@authors = []

  attr_accessor :name, :posts

  def initialize(name)
    @name = name
    @posts = []
    @@authors << self
  end

  def add_post(post)
    @posts << post
    post.author = self
  end

  def add_post_by_title(title)
    post = Post.new(title)
    @posts << post
    post.author = self
  end

  def self.post_count
    sum = 0
    @@authors.each do |author|
        sum += author.posts.size
    end
    sum
  end

end
