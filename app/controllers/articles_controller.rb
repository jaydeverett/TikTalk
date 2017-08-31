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
