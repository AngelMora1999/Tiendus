# == Schema Information
#
# Table name: products
#
#  id                  :integer          not null, primary key
#  name                :string
#  pricing             :integer
#  description         :text
#  user_id             :integer
#  avatar_file_name    :string
#  avatar_content_type :string
#  avatar_file_size    :integer
#  avatar_updated_at   :datetime
#  created_at          :datetime         not null
#  updated_at          :datetime         not null
#

class Product < ActiveRecord::Base
  belongs_to :user
  has_many :attachments

  validates_presence_of :name,:user,:pricing
  validates :pricing, numericality: { greater_than: 0 }

  
#Enlazar los avatares con los productos
  has_attached_file :avatar, styles: { medium: "300*300", thumb: "100*100" }, default_url: "missing.png"
#PaperClip nos obliga validar el tipo de archivo que se sube al servidor
  validates_attachment_content_type :avatar, content_type: /\Aimage\/.*\Z/

#Es lo mismo de arriba sino en forma corta
#validates_presence_of :name
#validates_presence_of :user
#validates_presence_of :pricing
end
