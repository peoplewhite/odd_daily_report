# == Schema Information
#
# Table name: images
#
#  id            :integer          not null, primary key
#  title         :string
#  description   :string
#  created_at    :datetime         not null
#  updated_at    :datetime         not null
#  imagable_id   :integer
#  imagable_type :string
#

require 'rails_helper'

RSpec.describe Image, type: :model do
  describe 'associations' do
    it { should belong_to(:imagable) }
  end
end
