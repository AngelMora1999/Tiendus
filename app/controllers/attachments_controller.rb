class AttachmentsController < ApplicationController
  before_action :authenticate_user!
  before_action :set_attachment, only: [:destroy]
  before_action :set_product, only:[:destroy]
  before_action :authenticate_owner!

  def new
  end
  
  def create
	@attachment = Attachment.new(attachment_params)
	if @attachment.save
		redirect_to @attachment.product, notice: "Se guardo el archivo adjunto"
	else
		redirect_to @attachment.product, notice: "No pudimos guardar el archivo adjunto"
	end
  end

  def destroy
  	@attachment.destroy
  	redirect_to @product
  end

  private
  	def set_attachment
  		@attachment = Attachment.find(params[:id])
  	end

  	def set_product
  		@product = @attachment.product
  	end

  	def authenticate_owner!
  		if params.has_key? :attachment
			@product = Product.find(params[:attachment][:product_id])
	  	end

  		if @product.nil? || @product.user != current_user
  			redirect_to root_path, notice: "No puedes editar ese producto"
  			return
  		end
  	end

  	def attachment_params
  		params.require(:attachment).permit(:product_id,:archivo)
  	end
end
