# == Schema Information
#
# Table name: comments
#
#  id         :integer          not null, primary key
#  content    :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  problem_id :integer
#  user_id    :integer
#

class Comment < ApplicationRecord
  belongs_to :problem
  belongs_to :user
end
