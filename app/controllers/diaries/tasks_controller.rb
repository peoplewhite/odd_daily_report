class Diaries::TasksController < ApplicationController

  def index
    @diary = Diary.find(params[:diary_id])
    @tasks = Task.all
  end

  def new
    @diary = Diary.find(params[:diary_id])
    @task = @diary.tasks.new
  end


  def create
    @diary = Diary.find(params[:diary_id])
    @task = @diary.tasks.new(task_params)

    if @task.save
      redirect_to diary_path(@diary), :notice => "Task Create Success"
    else
      render :new
    end

  end

  def edit
    @diary = Diary.find(params[:diary_id])
    @task = Task.find(params[:id])
  end

  def update
    @diary = Diary.find(params[:diary_id])
    @task = Task.find(params[:id])
    if @task.update(task_params)
      redirect_to diary_path(@diary), :notice => "Task Update Success"

    else
      render :edit
    end

  end

  def destroy
    @diary = Diary.find(params[:diary_id])
    @task = Task.find(params[:id])
    @task.destroy
    redirect_to diary_path(@diary), :notice => "Task Delete Success"
  end

  private

  def task_params
    params.required(:task).permit(:title, :description, :diary_id)
  end
end
