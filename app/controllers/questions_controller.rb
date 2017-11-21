class QuestionsController < ApplicationController
 def index
   @question = Question.all.sort
 end

 def show
    @user = current_user
    @question = Question.find(params[:id])
 end

def new
  respond_to do |format|
    format.html {}
    format.js {}
  end

  @user = User.find(params[:user_id])
  @question = Question.new
end

def edit
  @question = Question.find(params[:id])
end

def create
  @user = User.find(params[:user_id])
  @question = @user.questions.create(question_params)
  if @question.save
    if params[:question][:avatar].present?
      render 'crop'
    else
      redirect_to action: "index"
    end
  else
    render :new
  end
end

def update
  @question = Question.find(params[:id])
  @user = User.find(@question.user_id)
  if @question.update_attributes(question_params)
    if params[:question][:avatar].present?
      render :crop
    else
      redirect_to action: "index"
    end
  else
    render 'edit'
  end
end

def destroy
  @question = Question.find(params[:id])
  @user = User.find(@question.user_id)
  @question.destroy
  redirect_to user_path(@user)
end

private
def question_params
  params.require(:question).permit(:text,:avatar,:crop_x,:crop_y,:crop_w,:crop_h,:user_id)
end
end
