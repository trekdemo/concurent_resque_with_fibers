class GoogleSearchJob
  @queue = :remote

  def self.perform(word)
    puts "Searching for: #{word}"
  end
end
