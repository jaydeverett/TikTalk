namespace :livefeed do


  desc "Push posts as they come in"
  task :reddit => :environment do

    session = Redd.it(
  client_id:  'tR3gd1Ylo9swdg',
  secret:     '1WNzeFaOGVelOB2hl60XBtyY3AY'
  )





  session.subreddit('worldnews').post_stream(limit:25).map do |post|

     @new_article =  Article.new
     @new_article.title = post.title
     @new_article.domain = post.domain
     @new_article.url = post.url

     puts post.title
     if @new_article.save
       puts "Saved!!"
     else
       puts "Unable to Saved"
     end


  end

    # All your magic here
    # Any valid Ruby code is allowed
  end
  end
