class ArticlesController < ApplicationController

  require 'redd'

  def new

  end

  def create

  end

  def index
        session = Redd.it(
      client_id:  'tR3gd1Ylo9swdg',
      secret:     '1WNzeFaOGVelOB2hl60XBtyY3AY',
    )

    @articles = []

    session.subreddit('showerthoughts').post_stream(limit:5) do |post|
      byebug
      @articles << post.title
    end
    byebug
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
