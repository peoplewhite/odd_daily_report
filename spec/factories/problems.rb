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

FactoryGirl.define do
  factory :problem do
    description "MyString"
    user_id "MyString"
  end
end