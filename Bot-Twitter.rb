require 'dotenv'
require 'twitter'

Dotenv.load

client = Twitter::REST::Client.new do |config|
  config.consumer_key = "KEY"
  config.consumer_secret = "KEY"
  config.access_token = "KEY"
  config.access_token_secret = "KEY"
end

to_spam = ["@personne_1", "@personne_2"]

to_spam.each do |name|
  client.update("Hey #{name}, j'espère que vous allez bien !")
  sleep(30)
end
