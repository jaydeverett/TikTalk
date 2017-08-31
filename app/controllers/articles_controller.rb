class ArticlesController < ApplicationController

  require 'redd'

  def new

  end

  def create

  end

  def index


        @articles =Article.all.limit(10)

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
