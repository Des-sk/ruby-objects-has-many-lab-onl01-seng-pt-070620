
class Author 
  attr_accessor :name, :posts
  
  def initialize(name)
    @name=name
 
  end
  
  def posts
    Post.all.select do |post| 
      post.author == self
  end
end

  def add_post(post)
    post.author = self
    
end
  
  def add_post_by_title(title)
    post = Post.new(title)
    post.author == self
  end
  

end
    
    # #describe "#posts" do
    #   it "has many posts" do
    #     expect(betty.posts).to be_a(Array)
    #     post = Post.new("My Post")
    #     post.author = betty
    #     expect(betty.posts).to eq([post])
    #   end
    