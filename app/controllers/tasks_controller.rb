class TasksController < ApplicationController

  def index
    @tasks = Task.all
  end

  def new
    @task = Task.new
  end

  def edit

  end

  def create
    @task = Task.create(task_params)

    # if @task.save
    #   redirect_to :tasks
    # else
    #   render :new
    # end

  end

  def update
    @task = Task.find(params[:id])
    if @task.update(task_params)
      redirect_to root_path
    else
      render :edit
    end

  end

  def destroy

  end

  private

  def task_params
    params.required(:task).permit(:title, :description)
  end

end
