class DiariesController < ApplicationController
  def index
    @diaries = Diary.all
  end

  def new
    @diary = Diary.new
  end

  def edit
    @diary = Diary.find(params[:id])
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
    @diary = Diary.find(params[:id])
    if @diary.update(diary_params)
      redirect_to :diaries
    else
      render :edit
    end
  end

  def destroy
    @diary = Diary.find(params[:id])
    @diary.destroy
    redirect_to :diaries
  end

  private

  def diary_params
    params.required(:diary).permit(:description)

  end

end
