class Notify
  @queue = :notify

  def self.perform(post_id)
    puts 2
    p post = Post.find(post_id)
    puts 3
    sleep(5)
    puts 4
    puts "Notifying about post: '#{post.title}'"
  end
end
