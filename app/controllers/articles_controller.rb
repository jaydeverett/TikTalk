class ArticlesController < ApplicationController

  require 'redd'

  def new

  end

  def create

  end

  def index

    @articles = Article.where(archived: false).order('created_at DESC')

  
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
