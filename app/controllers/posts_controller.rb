class PostsController < ApplicationController
	def index
		@posts = Post.all
	end

	def new
		@posts = Post.new
	end		

	def create
		@posts = Post.new(post_params)
		if @posts.save
			redirect_to posts_path, notice: "El post fue publicado con EXITO"
		else
			render :new
		end
	end				

	def show
		@posts = Post.find(params[:id])
	end


	private 
		def post_params
			params.require(:post).permit(:titulo, :cuerpo)
		end
end