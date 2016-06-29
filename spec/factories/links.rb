# == Schema Information
#
# Table name: links
#
#  id              :integer          not null, primary key
#  product_id      :integer
#  expiration_date :datetime
#  downloads       :integer
#  downloads_limit :integer
#  custom_id       :string
#  created_at      :datetime         not null
#  updated_at      :datetime         not null
#  email           :string
#

FactoryGirl.define do
  factory :link do
    association :product, factory: :product
    expiration_date "2016-06-26 16:55:08"
    downloads 1
    downloads_limit 1
    custom_id nil
    email "eduardo.aemc@gmail.com"
  end
end
