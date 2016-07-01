class PostsController < ApplicationController
	def index
	end

	def new
	end

	def create
		puts "--------------------------"
		puts "--------------------------"
		puts "--------------------------"
		puts params
		puts "--------------------------"
		puts "--------------------------"
		puts "--------------------------"

		@post = Post.new(post_params)

		if @post.save
			redirect_to @post, notice: "The post #{@post.title} was added to the system."
		else
    		render action: 'new'
    	end
	end

	def show
		@post = Post.find(params[:id])
	end

	private
		def post_params
			params.require(:post).permit(:title, :post)
		end

end
