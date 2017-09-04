namespace :livefeed do


  desc "Push posts as they come in"
  task :reddit => :environment do

    session = Redd.it(
  client_id:  ENV["REDDIT_KEY"],
  secret:     ENV["REDDIT_SECRET"]
  )





  session.subreddit('worldnews').post_stream(limit:50).map do |post|

     @new_article =  Article.new
     @new_article.title = post.title
     @new_article.domain = post.domain
     @new_article.url = post.url

     puts post.title
     if @new_article.save
       puts "Saved!!"
     else
       puts "Unable to Save"
     end


  end

    # All your magic here
    # Any valid Ruby code is allowed
  end
  end
