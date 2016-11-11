# == Schema Information
#
# Table name: projects
#
#  id           :integer          not null, primary key
#  title        :string
#  is_completed :boolean
#  created_at   :datetime         not null
#  updated_at   :datetime         not null
#

FactoryGirl.define do
  factory :project do
    title "MyString"
    is_completed false
  end
end
