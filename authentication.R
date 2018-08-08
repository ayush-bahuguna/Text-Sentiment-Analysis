#install.packages("twitteR") 
#and
#install.packages("ROAuth")

library(ROAuth)
library(twitteR)

consumer_key <- #Insert consumer key
  
consumer_secret <- #Insert consumer secret

access_token <- #Insert access token
  
access_secret <- #Insert access secret
 
download.file(url="http://curl.haxx.se/ca/cacert.pem", destfile="cacert.pem")
#downloads the certificate

setup_twitter_oauth(consumer_key, consumer_secret, access_token, access_secret)

cred <- OAuthFactory$new(consumerKey=consumer_key, 
                         consumerSecret=consumer_secret,
                         requestURL='https://api.twitter.com/oauth/request_token',
                         accessURL='https://api.twitter.com/oauth/access_token',
                         authURL='https://api.twitter.com/oauth/authorize')
cred$handshake(cainfo="cacert.pem")
#After this redirected to a URL automatically, click on Authorize App and enter the PIN generated there
