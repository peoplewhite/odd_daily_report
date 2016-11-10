# == Schema Information
#
# Table name: problems
#
#  id          :integer          not null, primary key
#  description :string
#  user_id     :string
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#

class Problem < ApplicationRecord
end
