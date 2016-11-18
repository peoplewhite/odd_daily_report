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

class Task < ApplicationRecord
  belongs_to :diary
  belongs_to :project
  has_many :images, as: :imageable
end
