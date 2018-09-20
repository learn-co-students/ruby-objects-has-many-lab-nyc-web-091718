class Author
  attr_accessor :name, :post, :posts
@@all = []

    def initialize(name)
      @name = name
      @posts = []
    end


    def add_post(post)
      @@all << post
      @posts << post
      post.author = self
    end

    def add_post_by_title(post_name)
      self.add_post(Post.new(post_name))
    end

    def self.post_count
      @@all.count
    end




end
