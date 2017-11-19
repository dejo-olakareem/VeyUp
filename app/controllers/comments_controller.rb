class CommentsController < ApplicationController
  def index
    @comment = Comment.all
  end

  def show
    @question = Question.find(params[:id])
    @comment = @question.comments
  end

  def new
    @question = Question.find(params[:question_id])
    @comment = Comment.new
  end

  def create
  @question = Question.find(params[:question_id])
  user_id = current_user.id #or whatever is you session name
  @comment = @question.comments.create(comment_params)
  @user = current_user.id
  if @comment.save
    redirect_to user_path(@user)
  else
    flash.now[:danger] = "error"
  end
  end

   private
    def comment_params
      params.require(:comment).permit(:text,:user_id,:question_id)
    end
end
