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
    @diary = Diary.create(diary_params)
    if @diary.save
      redirect_to :diaries
    else
      render :new
    end

  end

  def update

  end

  def destroy

  end

  private

  def diary_params
    params.required(:diary).permit(:description)

  end

end
