class ArticlesController < ApplicationController

  require 'redd'

  def new

  end

  def create

  end

  def index

    @articles = Article.all.limit(15).order('created_at DESC')


    @articles.each do |article|
        if article.archived = true
          article
          @old_article.winner = article.comments.count(max).user
          total = totallike
          total_commetns = article.comments.count
          started
        endedat
        @result = article.result.new
        @result.wu@
        @resylt.save

        end
  end


  def show

  end

  def edit

  end

  def update

  end

  def destroy

  end

end
