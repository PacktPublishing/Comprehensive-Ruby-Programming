class Blog
  def edit_post
    puts "Post edited"
  end

  def delete_post
    puts "Post removed"
  end

  def create_post
    puts "Post created"
  end
end

blog = Blog.new
blog.edit_post
blog.delete_post
blog.create_post 