class Blog

	@@number_of_posts = 0
	@@all_posts = []

	def initialize
		@@number_of_posts =+ 1
	end

	def self.get_count
		puts "There are #{@@number_of_posts}"
		return @@number_of_posts
	end

	def self.add_posts(all_posts)
		@@all_posts << all_posts
	end

	def self.get_all_posts
		return @@all_posts
	end

end

class BlogPost < Blog

	def set_post_date()
		@post_date = Time.now
	end

	def get_post_date
		return @post_date
	end


	def set_post_title=(title)
		puts "Title: "
		@post_title = title
		Blog.add_posts(title)
	end

	def get_post_title
		return @post_title
	end


	def set_post_body=(body)
		puts "Enter the body of your post: "
		@post_body = body
		Blog.add_posts(body)

	end

	def get_post_body
		return @post_body
	end

end


def write_new_post

	all_posts = []

	puts "Do you want to create a post? Y/N"
		if gets.chomp.downcase == "y"

			post_number = Blog.get_count + 1

			all_posts[post_number] = BlogPost.new
			all_posts[post_number].set_post_date

			puts "Enter the title:"
			all_posts[post_number].set_post_title= gets.chomp

			puts "Enter the body"
			all_posts[post_number].set_post_body= gets.chomp

			Blog.add_posts(all_posts)

			write_new_post

		else
			# Show Posts
			all_the_posts = Blog.get_all_posts
			all_the_posts.inspect
		end
end

write_new_post