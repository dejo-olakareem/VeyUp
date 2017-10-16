class SurveysController < ApplicationController

  def index
    @survey = Survey.all
  end

  def show
    @user = current_user
    @survey = Survey.find(params[:id])
  end

  def new
    @user = User.find(params[:user_id])
    @survey = Survey.new
  end


  def edit

  end

  def create
    @user = User.find(params[:user_id])
    @survey = @user.surveys.create(survey_params)


    if @survey.save
      redirect_to user_path(@user)
    else
      render new
    end
  end




  def update

  end

  def delete
  end

  private
  def survey_params
    params.require(:survey).permit(:name)
  end
end
