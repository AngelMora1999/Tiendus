# == Schema Information
#
# Table name: link_attachments
#
#  id              :integer          not null, primary key
#  link_id         :integer
#  expiration_date :datetime
#  attachment_id   :integer
#  created_at      :datetime         not null
#  updated_at      :datetime         not null
#

require 'rails_helper'

RSpec.describe LinkAttachment, type: :model do
  pending "add some examples to (or delete) #{__FILE__}"
end
