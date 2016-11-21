class Diaries::TasksController < ApplicationController
  def index
    @diary = Diary.find(params[:diary_id])
    @tasks = Task.all
  end

  def new
    @diary = Diary.find(params[:diary_id])
    @task = @diary.tasks.new
  end

  def edit
    @task = Task.find(params[:id])
  end

  def create
    @diary = Diary.find(params[:diary_id])
    @task = @diary.tasks.new(task_params)

    if @task.save
      redirect_to diary_path(@diary)
    else
      render :new
    end

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
    @task = Task.find(params[:id])
    @task.destroy
    redirect_to :back
  end

  private

  def task_params
    params.required(:task).permit(:title, :description, :diary_id)
  end
end
