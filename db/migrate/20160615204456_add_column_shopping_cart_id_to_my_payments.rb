class AddColumnShoppingCartIdToMyPayments < ActiveRecord::Migration
  def change
    add_reference :my_payments, :shopping_cart, index: true
  end
end
