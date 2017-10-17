class SurveysController < ApplicationController

  def index
    @survey = Survey.all
  end

  def show

    @user = current_user
    @survey = Survey.find(params[:id])

  end

  def new
    respond_to do |format|
      format.html {}
      format.js {}
    end

    @user = User.find(params[:user_id])
    @survey = Survey.new
  end


  def edit
    @survey = Survey.find(params[:id])
  end

  def create

    @user = User.find(params[:user_id])
    @survey = @user.surveys.create(survey_params)


    if @survey.save
      redirect_to user_path(@user)
    else
      render :new
    end
  end

  def update
    @user = current_user
    @survey = Survey.find(params[:id])

    if @survey.update(survey_params)
      redirect_to user_path(@user)
    else
      render 'edit'
    end

  end

  def destroy
    @user = current_user
    @survey = @user.surveys.find(params[:id])
    @survey.destroy
    redirect_to user_path(@user)
  end

  def get_question_partial
    render partial: 'question'
  end

  private
  def survey_params
    params.require(:survey).permit(:name, :number_of_questions, questions_attributes: [:id, :text, :_destroy])
  end
end
