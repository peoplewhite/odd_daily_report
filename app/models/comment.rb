# == Schema Information
#
# Table name: comments
#
#  id               :integer          not null, primary key
#  content          :string
#  created_at       :datetime         not null
#  updated_at       :datetime         not null
#  user_id          :integer
#  commentable_id   :integer
#  commentable_type :string
#

class Comment < ApplicationRecord
  belongs_to :commentable, polymorphic: true
  belongs_to :user
end
