class CommentsController < ApplicationController

  def new

  end

  def create
    @article = Article.find_by(id: params[:article_id])
    @comment = Comment.new

    @comment.user = current_user
    @comment.content = params[:comment][:content]
    @comment.article_id = params[:article_id]

      if @comment.save!
        flash[:notice] = "Your comment has successfully posted"
        render :show
      else
        flash[:alert] = "Comment failed to save"
        render :show
      end
  end

  def index

  end

  def show
    @article = Article.find_by(id: params[:id])
    @user = User.find_by(id: params[:id])
    @comment = Comment.new

  end

  def edit

  end

  def update

  end

  def destroy

  end

end
