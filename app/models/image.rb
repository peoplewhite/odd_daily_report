# == Schema Information
#
# Table name: images
#
#  id            :integer          not null, primary key
#  title         :string
#  description   :string
#  created_at    :datetime         not null
#  updated_at    :datetime         not null
#  imagable_id   :integer
#  imagable_type :string
#

class Image < ApplicationRecord
  belongs_to :imagable, polymorphic: true
end
