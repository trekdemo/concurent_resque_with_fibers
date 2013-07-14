require_relative './google_search_job.rb'

class SearchJob
  @queue = :remote

  def self.perform(words)
    print Time.now
    puts " >> Create workers for #{words}"
    EM::Synchrony.sleep(2)
    words.each { |word| Resque.enqueue(GoogleSearchJob, word) }
  end

end
