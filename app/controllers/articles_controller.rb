class ArticlesController < ApplicationController

  require 'redd'

  def new

  end

  def create

  end

  def index

    @articles = Article.all



  end


  def show

  end

  def edit

  end

  def update

  end

  def destroy

  end

  def runbackgroundjobs
    if params[:pass] == 'gurjant'
    WorkJob.perform_later
    end
      redirect_to(action:'index')
  end

end
