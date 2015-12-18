ENV['RACK_ENV'] = 'test'

require './anagrams'
require 'rspec'
require 'rack/test'

describe 'Anagrams' do
  include Rack::Test::Methods

  def app
    Sinatra::Application
  end

  describe "/tree,last's" do
    before do
      get "/tree,last's"
    end

    it "returns HTTP status 200" do
      expect(last_response).to be_ok
    end

    it "returns json" do
      expect(last_response.header['Content-Type']).to include 'application/json'
    end

    it "returns anagrams" do
      expect(JSON.parse(last_response.body)).to eq({ "tree" => %w(reet teer), "last" => %w(salt slat) })
    end
  end
end
