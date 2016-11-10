# == Schema Information
#
# Table name: tasks
#
#  id          :integer          not null, primary key
#  title       :string
#  description :string
#  is_checked  :boolean
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#

FactoryGirl.define do
  factory :task do
    title "MyString"
    description "MyString"
    is_check false
    user_id "MyString"
  end
end
