# == Schema Information
#
# Table name: images
#
#  id             :integer          not null, primary key
#  title          :string
#  description    :string
#  created_at     :datetime         not null
#  updated_at     :datetime         not null
#  imageable_id   :integer
#  imageable_type :string
#

FactoryGirl.define do
  factory :image do
    title "MyString"
    description "MyString"
  end
end
