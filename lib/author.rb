
  class Author
  attr_accessor :name
  
  

def posts
    Post.all.select {|post| post.author == self}
  end 

end