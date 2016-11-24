class TasksController < ApplicationController
  def check
    @task = Task.find(params[:id])
    @task.update is_checked: !@task.is_checked
    redirect_to :back
  end
end
