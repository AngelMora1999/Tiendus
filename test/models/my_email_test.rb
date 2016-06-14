# == Schema Information
#
# Table name: my_emails
#
#  id         :integer          not null, primary key
#  email      :string
#  ip         :string
#  state      :integer
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

require 'test_helper'

class MyEmailTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
