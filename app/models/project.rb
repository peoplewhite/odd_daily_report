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

class Project < ApplicationRecord
  has_many :tasks
end
