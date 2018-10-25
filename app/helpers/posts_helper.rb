module PostsHelper
	def form_title
		@posts.new_record? ? "Publicar Post" : "Modificar Post"
	end
end