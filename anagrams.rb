require 'sinatra'
require 'sinatra/json'

set :dictionary, Dictionary.new

get '/:words' do
  json settings.dictionary.anagrams(params[:words])
end
