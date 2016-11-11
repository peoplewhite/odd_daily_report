# == Schema Information
#
# Table name: comments
#
#  id         :integer          not null, primary key
#  content    :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  user_id    :integer
#  problem_id :integer
#

FactoryGirl.define do
  factory :comment do
    problem_id "MyString"
    content "MyString"
    user_id "MyString"
  end
end
