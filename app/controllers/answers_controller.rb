class AnswersController < ApplicationController
  require 'json'
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

  def edit
    @answer = Answer.find(params[:id])
  end

  def update
     @answer = Answer.find(params[:id])
     @question = Question.find(@answer.question_id)
     @answer.update_attributes(answer_params)
     @answer.filter
     if @answer.save
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
    if request.xhr?
      # when this request happens update attribute filter of question
      render json: {filter: params[:filter]}
    end
  end

  private
  def answer_params
    params.fetch(:answer,{}).permit(:text, :question_id, :picture, :filter, :video)
  end
end
