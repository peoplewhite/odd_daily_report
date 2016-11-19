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

    if @task.save
      redirect_to :tasks
    else
      render :new
    end

  end

  def update

  end

  def destroy

  end

end
