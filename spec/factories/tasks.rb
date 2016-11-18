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
#  diary_id    :integer
#  project_id  :integer
#

FactoryGirl.define do
  factory :task do
    title "MyString"
    description "MyString"
    is_checked false
  end
end
