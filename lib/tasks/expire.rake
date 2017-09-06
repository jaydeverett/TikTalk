namespace :expire do
  desc "TODO"
  task article: :environment do
    while 1
    @articles = Article.where("created_at < ?", 2.hours.ago)
    @articles.each do |article|
      article.archived = true
      @user = article.winner
      @user.total_wins += 1
      @user.save
      article.save

    end
  end
  end
end
