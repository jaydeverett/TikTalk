class WorkJob < ApplicationJob
  queue_as :default
  require 'rake'

  def perform(*args)
    puts "Staring Tasks"
    system("cd #{Rails.root} && RAILS_ENV=#{Rails.env} bundle exec rake livefeed:reddit >> log/delayed_rake.log  &")
    system("cd #{Rails.root} && RAILS_ENV=#{Rails.env} bundle exec rake expire:article >> log/delayed_rake.log  &")
  end
end
