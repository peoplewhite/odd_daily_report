# == Schema Information
#
# Table name: diaries
#
#  id          :integer          not null, primary key
#  description :string
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#

require 'rails_helper'

RSpec.describe Diary, type: :model do
  describe 'associations' do
    it { should belong_to(:user) }
    it { should have_many(:problems) }
    it { should have_many(:tasks) }
  end
end
