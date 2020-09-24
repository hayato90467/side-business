class CommentsController < ApplicationController

  def index
    @comment = Comment.new
  end

  def new
    @comment = Comment.new
  end
  
  def create
    @comment = Comment.new(comment_params)
  end


  private

  def comment_params
    params.require(:commet).permit(:business_name).merge(user_id: current_user.id)
  end

end
