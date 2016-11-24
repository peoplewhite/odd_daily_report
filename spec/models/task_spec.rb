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

require 'rails_helper'

RSpec.describe Task, type: :model do
  describe '#show_status' do
    context 'if a task is unchecked' do
      it 'should show 未完成' do
        task = create :task
        message = task.show_status
        expect(message).to eq "未完成"
      end
    end
    context 'if a task is checked' do
      it 'should show 已完成' do
        task = create :task
        task.is_checked = true
        message = task.show_status
        expect(message).to eq "已完成"
      end
    end
  end

  describe '#done?' do
    context 'if a task is not done yet' do
      it "should return false" do
        task = create :task

        result = task.done?

        expect(result).to eq false
      end
    end

    context 'if a task was done already' do
      it "should return true" do
        task = create :task, is_checked: true

        result = task.done?

        expect(result).to eq true
      end
    end
  end

  describe '#toggle_check_status' do
    it 'should reverse `is_checked` value' do
      task = create :task
      current_status = task.is_checked

      task.toggle_check_status

      expect(task.is_checked).to eq(!current_status)
    end
  end

  describe 'associations' do
    it { should belong_to(:diary) }
    it { should belong_to(:project) }
    it { should have_many(:images) }
  end
end
