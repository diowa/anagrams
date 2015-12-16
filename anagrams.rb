require 'sinatra'
require 'sinatra/json'

set :dictionary, Dictionary.new

get '/:words' do
  json options.dictionary.anagrams(params[:words])
end
