require_relative './google_search_job.rb'

class SearchJob
  @queue = :remote

  def self.perform(words)
    puts "Create workers for #{words}"
    words.each { |word| Resque.enqueue(GoogleSearchJob, word) }
  end

end
