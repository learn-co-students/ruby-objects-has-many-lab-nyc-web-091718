class Post
  attr_accessor :title, :name, :author
 #
 @@all = []

 def self.all
   @@all
 end

 def initialize(title, author = nil)
    @title = title
    @author = author
    @@all << self
 end

 def author_name
   if @author != nil
     author.name
   end
 end
end
