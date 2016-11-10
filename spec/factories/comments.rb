# == Schema Information
#
# Table name: comments
#
#  id         :integer          not null, primary key
#  problem_id :string
#  content    :string
#  user_id    :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

FactoryGirl.define do
  factory :comment do
    problem_id "MyString"
    content "MyString"
    user_id "MyString"
  end
end
