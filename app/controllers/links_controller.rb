class LinksController < ApplicationController
	before_action :find_link
	before_action :validate_link 

	def download
		@link.update_downloads
		@product = @link.product
	end
	
	def download_attachment

	end

	private
	def find_link
		@link = Link.find_by(custom_id:params[:id])
	end

	def validate_link
		if @link.nil? || @link.is_invalid?
			redirect_to invalid_path, notice: "El lik de descarga no es valido o ha expirado"
		end
	end
end