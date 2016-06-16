class DropDefaultFromFromShoppingCartsStatus < ActiveRecord::Migration
  def change
  	change_column_default(:shopping_carts, :status, nil)
  end
end
