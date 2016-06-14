# == Schema Information
#
# Table name: in_shopping_carts
#
#  id               :integer          not null, primary key
#  product_id       :integer
#  shopping_cart_id :integer
#  created_at       :datetime         not null
#  updated_at       :datetime         not null
#

FactoryGirl.define do
  factory :in_shopping_cart do
    product nil
    shopping_cart nil
  end
end
