class CreateLinks < ActiveRecord::Migration
  def change
    create_table :links do |t|
      t.references :product, index: true, foreign_key: true
      t.datetime :expiration_date
      t.integer :downloads
      t.integer :downloads_limit
      t.string :custom_id

      t.timestamps null: false
    end
  end
end
