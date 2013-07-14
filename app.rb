require 'bundler/setup'
require 'sinatra'
require_relative './lib/async_workers/search_job.rb'

get '/' do
  haml :form
end

post '/' do
  words = params['words'].split
  puts "Words for searching #{words.inspect}"

  create_job(words)

  redirect '/'
end

def create_job(words)
  Resque.enqueue(SearchJob, words)
end


__END__
@@form
%h1 Searcher

%form{action: '/', method: :post }
  %input{type: 'text', name: 'words', placeholder: 'Keywords' }
  %input{type: 'submit', value: 'Search' }
