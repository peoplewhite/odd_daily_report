# == Schema Information
#
# Table name: tasks
#
#  id          :integer          not null, primary key
#  title       :string
#  description :string
#  is_checked  :boolean          default(FALSE)
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#  diary_id    :integer
#  project_id  :integer
#

class Task < ApplicationRecord
  belongs_to :diary
  belongs_to :project
  has_many :images, as: :imageable

  scope :recent, -> { order(created_at: :desc) }

  def toggle_check_status
    current_status = is_checked

    update is_checked: !current_status
  end

  def done?
    is_checked
  end

  def show_status
    return "已完成" if done?
    "未完成"
  end

end
