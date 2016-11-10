# == Schema Information
#
# Table name: diaries
#
#  id          :integer          not null, primary key
#  description :string
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#

FactoryGirl.define do
  factory :diary do
    description "MyString"
  end
end
