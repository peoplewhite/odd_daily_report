class TasksController < ApplicationController
  def check
    @task = Task.find(params[:id])
    @task.update is_checked: !@task.is_checked
    redirect_to :back
  end

  def edit
    @task = Task.find(params[:id])
  end

  def update
    @task = Task.find(params[:id])
    if @task.update(task_params)
      redirect_to :back
    else
      render :edit
    end
  end

  private

  def task_params
    params.required(:task).permit(:title, :description, :diary_id)
  end
end
