class TasksController < ApplicationController
  def check
    @task = Task.find(params[:id])
    @task.is_checked = true
    @task.save
    redirect_to :back
  end
  def uncheck
    @task = Task.find(params[:id])
    @task.update is_checked: false
    redirect_to :back
  end
end
