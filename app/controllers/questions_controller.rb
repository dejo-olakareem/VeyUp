class QuestionsController < ApplicationController
 def index
   @question = Question.all
 end

 def show
  @question = Question.find(params[:id])
  @survey = Survey.find(@question.survey_id)
 end

def new
  respond_to do |format|
    format.html {}
    format.js {}
  end

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
    if params[:question][:avatar].present?
      render 'crop'
    else
      redirect_to survey_path(@survey)
    end
  else
    render :new
  end
end

def update
  p @question = Question.find(params[:id])
  @survey = Survey.find(@question.survey_id)
  if @question.update_attributes(question_params)
    if params[:question][:avatar].present?
      render :crop
    else
      redirect_to survey_path(@survey)
    end
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
  params.require(:question).permit(:text,:avatar,:crop_x,:crop_y,:crop_w,:crop_h)
end
end
