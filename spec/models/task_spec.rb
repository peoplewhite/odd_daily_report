# == Schema Information
#
# Table name: tasks
#
#  id          :integer          not null, primary key
#  title       :string
#  description :string
#  is_checked  :boolean
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#  diary_id    :integer
#  project_id  :integer
#

require 'rails_helper'

RSpec.describe Task, type: :model do

  describe 'associations' do
    it { should belong_to(:diary) }
    it { should belong_to(:project) }
    it { should have_many(:images) }
  end

end
