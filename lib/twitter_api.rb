
 # ligne très importante qui appelle la gem.
 require 'twitter'

 # n'oublie pas les lignes pour Dotenv ici…
 require 'dotenv'
 Dotenv.load('.env')
 
 # quelques lignes qui appellent les clés d'API de ton fichier .env
 client = Twitter::REST::Client.new do |config|
   config.consumer_key        = ENV["TWITTER_API_KEY"]
   config.consumer_secret     = ENV["TWITTER_API_SECRET"]
   config.access_token        = ENV["TWITTER_API_TOKEN"]
   config.access_token_secret = ENV["TWITTER_ACCESS_TOKEN_SECRET"]
 end
 
 # ligne qui permet de tweeter sur ton compte
 client.update('my first tweet in Ruby !!!!')
# tweeter des truc sur le twitter des gens 
  
  tweetcompt = ["@frontendmenteur", "@luuucasog","@Ragnvulf", "@8UK0W5K1", "charleedouard1", "@mrprst", "@L_ChamCham", "@lamour_ronan", "@bigdduwa", "@nathvideobot"]

  random = tweetcompt.sample(5)

  random.each do |current|
    client.update("Bonjour monde ceci est un tweet automatique  #{current}.")
     puts current
  end