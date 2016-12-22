class ExamsController < ApplicationController
  layout 'exams'
  before_action :set_exam, only: [:edit, :update, :destroy]

  def index
    @exam = Exam.new
    @exams = Exam.all
  end
  
  def new
    @exam = Exam.new(exams_params)
  end  
  
  def confirm
    @exam = Exam.new(exams_params)
    render :new if @exam.invalid?
  end

  def create
    @exam = Exam.new(exams_params)
    @exams = Exam.all
    if @exam.save
      redirect_to exams_path, notice: "ブログを作成しました！"
    else
      render 'index'
    end
  end
  
  def edit
  end
  
  def update
    
    if @exam.update(exams_params)
      redirect_to exams_path, notice: "ブログを編集しました！"
    else
      render 'edit'
    end
  end
  
  def destroy
    @exam.destroy
    redirect_to exams_path, notice: "ブログを削除しました！"
  end

  private
    def exams_params
      params.require(:exam).permit(:content)
    end
    
    def set_exam
      @exam = Exam.find(params[:id])
    end
    
end
