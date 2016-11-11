# == Schema Information
#
# Table name: problems
#
#  id          :integer          not null, primary key
#  description :string
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#  diary_id    :integer
#

require 'rails_helper'

RSpec.describe Problem, type: :model do
  describe 'associations' do
    it { should belong_to(:diary) }
    it { should have_many(:comments) }
  end

end
