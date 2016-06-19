# == Schema Information
#
# Table name: shopping_carts
#
#  id         :integer          not null, primary key
#  status     :string
#  ip         :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class ShoppingCart < ActiveRecord::Base
	include AASM
	
	has_many :products, through: :in_shopping_carts
	has_many :in_shopping_carts

	#Vamos a utilizar un metodo de ruby bien interesante
	#En el cual vamos a asignar el stado por nombre y no por numeros
	# status = 0, status = 1
	# no pagado    pagado
	#enum status: {payed: 1, default: 0}


	aasm column: "status" do
		state :created, initial: true
		state :payed
		state :failed

		event :pay do
			after do
			#TODO mandar los archivos que el usuario compro
			end
			transitions from: :created, to: :payed
		end
	end


	def items
		self.products.map{|product| product.paypal_form}
	end

	def total
		products.sum(:pricing)
	end
end
