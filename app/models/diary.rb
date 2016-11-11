# == Schema Information
#
# Table name: diaries
#
#  id          :integer          not null, primary key
#  description :string
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#  user_id     :integer
#

class Diary < ApplicationRecord
  belongs_to :user
  has_many :problems
  has_many :tasks
end
