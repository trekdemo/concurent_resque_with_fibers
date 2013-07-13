require 'bundler/setup'
require 'sinatra'

get '/' do
  haml :form
end

post '/' do
  # TODO: Create a new task
  redirect '/'
end


__END__
@@form
%h1 Searcher

%form{action: '/', method: :post }
  %input{type: 'text', name: 'words', placeholder: 'Keywords' }
  %input{type: 'submit', value: 'Search' }
