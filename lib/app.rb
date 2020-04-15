# frozen_string_literal: true

require 'dotenv' # Appelle la gem dotenv
require 'twitter' # Appelle la gem twitter
Dotenv.load('../.env') if Dotenv.load('.env').empty?

def client
  Twitter::REST::Client.new do |config|
    config.consumer_key        = ENV['TWITTER_CONSUMER_KEY']
    config.consumer_secret     = ENV['TWITTER_CONSUMER_SECRET']
    config.access_token        = ENV['TWITTER_ACCESS_TOKEN']
    config.access_token_secret = ENV['TWITTER_ACCESS_TOKEN_SECRET']
  end
end

# ligne qui permet de tweeter sur ton compte
client.update('My first Tweet with ruby')
