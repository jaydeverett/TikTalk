class CommentsController < ApplicationController

  def new

  end

  def create
    @article = Article.find_by(id: params[:article_id])
    @comment = Comment.new

    @comment.user = current_user
    @comment.content = params[:comment][:content]
    @comment.article_id = params[:article_id]
    @comment.article = @article
      if @comment.save
        flash[:notice] = "Your comment has successfully posted"
        redirect_to allcomments_path(@article.id)
      else
        flash[:alert] = "Comment failed to save"
        redirect_to allcomments_path(@article.id)
      end
  end

  def index

  end

  def show
    @article = Article.find_by(id: params[:id])
    @user = User.find_by(id: params[:id])
    @comment = Comment.new
    @comments = {}
    @article.comments.each do |comment|
      @comments[comment] = comment.get_likes.size
    end
    @comments=Hash[@comments.sort_by{|k, v| v}.reverse]

  end

  def edit

  end

  def update

  end

  def destroy

  end

  def upvote
    @comment =Comment.find(params[:id])
    if current_user.voted_up_on? @comment
      @comment.downvote_from current_user
    else
      @comment.upvote_from current_user
    end

    redirect_to allcomments_path(params[:article_id])
  end

  def downvote

  end

end
