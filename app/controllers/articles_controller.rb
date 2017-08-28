class ArticlesController < ApplicationController

  require 'redd'

  def new

  end

  def create

  end

  def index
        session = Redd.it(
      client_id:  'tR3gd1Ylo9swdg',
      secret:     '1WNzeFaOGVelOB2hl60XBtyY3AY'
    )

    @articles=[]

    i=0
    session.subreddit('worldnews').post_stream(limit:5) do |post|

        @articles << post.title
        i +=1
        if i >= 5
          break
        end

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
