namespace :expire do
  desc "TODO"
  task article: :environment do
    @articles = Article.where("created_at > ?", 2.hours.ago)
    @articles.each do |article|
      article.archived = true
      article.save
    end


      @old_article = Result.new
      @old_article.winner = article.comments.count(max).user
      total = totallike
      total_commetns = article.comments.count
      started
    endedat
    @result = article.result.new
    @result.wu@
    @resylt.save
    end
  end

end
