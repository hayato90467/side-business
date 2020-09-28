class CommentsController < ApplicationController
  before_action :set_comment, only: [:show, :edit, :update, :destroy]

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

  def edit
  end

   def update
    if @comment.update(comment_params)
      redirect_to root_path
     else
       render :edit
     end
   end

  def show
  end
 
  def destroy
    if @comment.destroy
      redirect_to root_path
    else
    render :show
    end
  end

  private

  def comment_params
    params.require(:comment).permit(:user_id, :business_name, :explanation, :image).merge(user_id: current_user.id)
  end

  def set_comment
    @comment = Comment.find(params[:id])
  end
end
