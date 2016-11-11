# == Schema Information
#
# Table name: comments
#
#  id         :integer          not null, primary key
#  content    :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  problem_id :integer
#

require 'rails_helper'

RSpec.describe Comment, type: :model do
  describe 'associations' do
    it { should belong_to(:problem) }
  end
end
