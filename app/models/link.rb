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

require "digest/md5"
class Link < ActiveRecord::Base
  before_create :set_defaults
  after_create :send_email
  belongs_to :product

  private
  def set_defaults
  	self.custom_id = Digest::MD5.hexdigest("#{DateTime.now}#{self.id}#{self.product_id}")
  	self.downloads ||= 0
  end

  def send_email
  	LinkMailer.download_link(self).deliver_now
  end
end
