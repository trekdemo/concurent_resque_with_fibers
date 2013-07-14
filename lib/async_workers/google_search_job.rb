# require 'em-synchrony/em-http'

class GoogleSearchJob
  @queue = :remote

  def self.perform(word)
    print Time.now
    puts " >> Searching for: #{word}"
    EM::Synchrony.sleep(5)
    print Time.now
    puts " << Search ended for: #{word}"
  end
end
