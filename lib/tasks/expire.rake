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
    end
end
