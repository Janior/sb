class PostsController < ApplicationController
	def index
  		@posts= Post.all.order('created_at ASC') 
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

	def edit
		@posts = Post.find(params[:id])
	end

	def update
		posts = Post.find(params[:id])
		if posts.update(post_params)
			redirect_to posts_path, notice: "El post fue modificadoo con EXITO"
		else
			render :edit
		end
	end

 	
  	def destroy
  	  posts = Post.find(params[:id])
  	  posts.destroy

  	  redirect_to posts_path, notice: "El post  fue eliminado con éxito"
  	end

	private 
		def post_params
			params.require(:post).permit(:titulo, :cuerpo)
		end
end