class CreateInShoppingCarts < ActiveRecord::Migration
  def change
    create_table :in_shopping_carts do |t|
      t.references :product, index: true, foreign_key: true
      t.references :shopping_cart, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
