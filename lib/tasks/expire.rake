namespace :expire do
  desc "TODO"
  task article: :environment do
    @articles = Article.where("created_at < ?", 2.hours.ago)
    @articles.each do |article|
      article.archived = true
      article.save
    end
  end
end
