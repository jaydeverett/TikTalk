class WorkJob < ApplicationJob
  queue_as :default
  require 'rake'

  def perform(*args)
    puts "Staring Tasks"
    system("nohup cd #{Rails.root} && RAILS_ENV=#{Rails.env} bundle exec rake livefeed:reddit >> log/delayed_rake.log 2>&1 &")
    system("nohup cd #{Rails.root} && RAILS_ENV=#{Rails.env} bundle exec rake expire:article >> log/delayed_rake.log 2>&1 &")
  end
end
