class CommentsController < ApplicationController

  def index
    @comments = Comment.order('created_at DESC')
  end

  def new
    @comment = Comment.new
  end
  
  def create
    @comment = Comment.new(comment_params)
    if @comment.save
      redirect_to root_path
    else
      render :new
    end
  end

  # def update
  #   if @comment.update(comment_params)
  #     render :new
  #   else
  #     render :edit
  #   end
  # end

  def show
  end


  private

  def comment_params
    params.require(:comment).permit(:user_id, :business_name, :explanation, :image).merge(user_id: current_user.id)
  end

end
