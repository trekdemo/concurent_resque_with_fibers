web: bundle exec shotgun app.rb
resque-web: bundle exec resque-web --foreground
resque: bundle exec rake em_resque:work QUEUE="*" FIBERS=50
# resque: rake jobs:work
