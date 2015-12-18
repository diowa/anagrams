require 'sinatra'
require 'sinatra/json'
require './lib/dictionary'

set :dictionary, Dictionary.new

get '/:words' do
  json settings.dictionary.anagrams(params[:words])
end
