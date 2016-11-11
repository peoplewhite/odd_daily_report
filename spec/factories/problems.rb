# == Schema Information
#
# Table name: problems
#
#  id          :integer          not null, primary key
#  description :string
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#  diary_id    :integer
#  user_id     :integer
#

FactoryGirl.define do
  factory :problem do
    description "MyString"
  end
end
