class CommentsController < ApplicationController

  def new

  end

  def create
    @article = Article.find_by(id: params[:id])
    @comment = Comment.new

    @comment.user = current_user
    @comment.content = params[:comment][:content]
    @comment.article = @article

      if @comment.save
        flash.notice = "Your comment has successfully posted"
        redirect_to article_comment_path
      else
        flash.alert = "Comment failed to save"
      end
  end

  def index

  end

  def show
    @article = Article.find_by(id: params[:id])
    @comment = Comment.new

  end

  def edit

  end

  def update

  end

  def destroy

  end

end
