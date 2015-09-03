class Blog

	@@number_of_posts = 0
	@@all_posts = []

	def initialize
		@@number_of_posts =+ 1
	end

	def self.concat_posts(the_post)
		@@all_posts << the_post
	end

	def self.publish
		@@all_posts.each do |post|

			puts post.inspect
			puts "Time: #{post.get_time}"
			puts "Title: #{post.get_title}"
			puts "Body: #{post.get_body}"
		end
	end


end


class BlogPost < Blog

	def self.new_post

		post = new

		puts "Enter title"
		post.set_title= gets.chomp

		puts "Enter body"
		post.set_body= gets.chomp

		post.set_time= Time.now

		Blog.concat_posts(post)


		make_new_post

	end


	def set_title=(title)
		@title = title
	end

	def get_title
		return @title
	end


	def set_body=(body)
		@body = body
	end

	def get_body
		return @body
	end


	def set_time=(time)
		@time = time
	end

	def get_time
		return @time
	end


end

def make_new_post

	puts "Do you want to create a post? Y/N"

	if gets.chomp.downcase == "y"
		BlogPost.new_post

	else
		puts Blog.publish
	end
end

make_new_post