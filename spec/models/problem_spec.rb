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

require 'rails_helper'

RSpec.describe Problem, type: :model do
  pending "add some examples to (or delete) #{__FILE__}"
end
