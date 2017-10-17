class QuestionsController < ApplicationController
   def show
    @question = Question.find(params[:id])
    @survey = Survey.find(@question.survey_id)
  end

  def new
    @survey = Survey.find(params[:survey_id])
    @question = Question.new
  end

  def edit
    @question = Question.find(params[:id])
  end

  def create
    @survey = Survey.find(params[:survey_id])
    @question = @survey.questions.create(question_params)


    if @question.save
      redirect_to survey_path(@survey)
    else
      render :new
    end
  end

  def update
    @question = Question.find(params[:id])
    @survey = Survey.find(@question.survey_id)



    if @question.update(question_params)
      redirect_to survey_path(@survey)
    else
      render 'edit'
    end
  end

  def destroy
    @question = Question.find(params[:id])
    @survey = Survey.find(@question.survey_id)
    @question.destroy
    redirect_to survey_path(@survey)
  end

  private
  def question_params
    params.require(:question).permit(:text)
  end
end
