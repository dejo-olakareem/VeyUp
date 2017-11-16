class AnswersController < ApplicationController
  def index
    @answer= Answer.all
  end

  def show
    @answer = Answer.find(params[:id])
    @question = Question.find(@answer.question_id)
  end

  def new
    respond_to do |format|
      format.html {}
      format.js {}
    end

    @question = Question.find(params[:question_id])
    @answer = Answer.new
  end

  def edit
    @answer = Answer.find(params[:id])
  end

  def create
    @question = Question.find(params[:question_id])
    @answer = @question.answers.create(answer_params)

    if @answer.save
      if params[:answer][:picture].present?
        render 'design'
      else
        redirect_to question_path(@question)
      end
    else
      render :new
    end
  end


  def update
    @answer = Answer.find(params[:id])
    @question = Question.find(@answer.question_id)

    if @answer.update(answer_params)
      redirect_to question_path(@question)
    else
      render 'edit'
    end
  end

  def destroy
    @answer = Answer.find(params[:id])
    @question = Question.find(@answer.question_id)
    @answer.destroy
    redirect_to question_path(@question)
  end

  def design
    p params[:design_id]
    if request.xhr?
      render json:{answers:params[:design_id]}
    end
  end

  private
  def answer_params
    params.require(:answer).permit(:text, :picture, :video)
  end
end
