# lib/blog.rb

class Blog
  attr_accessor(:posts)
  def initialize
    @posts = []
    @page_start = 0
    @page_end = 2
  end

  def add_post(new_post)
    @posts.push(new_post)
  end

  def latest_date
    sorted_by_date = @posts.sort {|post1,post2| post2.date <=> post1.date}
  end

  def go_next
    @page_start += 3
    @page_end += 3
  end

  def go_prev
    @page_start -= 3
    @page_end -= 3
  end

  def print_current_page
    puts ""

    current_posts = @posts[@page_start..@page_end]

    current_posts.each do |the_post|
      the_post.print
    end
  end
end