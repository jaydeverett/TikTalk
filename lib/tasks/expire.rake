namespace :expire do
  desc "TODO"
  task article: :environment do

    @articles = Article.where("created_at < ?", 2.hours.ago).where(archived: false)

    @articles.each do |article|
      article.archived = true

      @user = article.winner

      if @user.blank?
        article.destroy
      else
        if article.save
          @user.total_wins += 1
          @user.save
        end
      end
    end



    session = Redd.it(client_id:  ENV["REDDIT_KEY"],
                      secret:     ENV["REDDIT_SECRET"])



    session.subreddit('worldnews').post_stream(limit:50).map do |post|
      @new_article =  Article.new
      @new_article.title = post.title
      @new_article.domain = post.domain
      @new_article.url = post.url

      puts post.title

      if @new_article.save
        puts "Saved: #{post.title}"
      else
        puts "Unable to Save"
      end
    end
  end
end
