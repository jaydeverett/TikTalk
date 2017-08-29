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


    @articles= []

    i=0
    session.subreddit('worldnews').post_stream(limit:15).map do |post|
        i += 1
        article = {}

        article[:title] = post.title
        article[:domain] = post.domain
        article[:url] = post.url

        @new_article =  Article.new
        @new_article.title = post.title
        @new_article.domain = post.domain
        @new_article.url = post.url

        if @new_article.save
        article[:id] = @new_article.id

       else
         article[:id] = Article.find_by(title: article[:title]).id
        end

        @articles << article
        if i >= 15
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
