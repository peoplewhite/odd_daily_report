# == Schema Information
#
# Table name: projects
#
#  id           :integer          not null, primary key
#  title        :string
#  is_completed :boolean
#  created_at   :datetime         not null
#  updated_at   :datetime         not null
#

require 'rails_helper'

RSpec.describe Project, type: :model do

  describe 'associations' do
    it { should have_many(:tasks) }
  end

end
