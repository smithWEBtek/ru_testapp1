class PermittedParams < Struct.new(:params, :post)

	def post
		params.require(:post).permit(*post_attributes)
	end
end