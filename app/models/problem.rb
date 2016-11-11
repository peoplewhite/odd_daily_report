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

class Problem < ApplicationRecord
  has_many :comments, as: :commentable
  belongs_to :diary
  belongs_to :user
end
