class DiariesController < ApplicationController
  def index
    @diaries = Diary.all
  end

  def new
    @diary = Diary.new
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
