# == Schema Information
#
# Table name: diaries
#
#  id          :integer          not null, primary key
#  description :string
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#

class Diary < ApplicationRecord
  belongs_to :user
end
