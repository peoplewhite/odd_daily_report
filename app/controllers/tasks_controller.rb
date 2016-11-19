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

  end

  def update

  end

  def destroy

  end

end
