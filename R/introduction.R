library(twitteR)

install.packages("twitteR")

library(twitteR)
reqURL <- "https://api.twitter.com/oauth/request_token"
accessURL <- "https://api.twitter.com/oauth/access_token"
authURL <- "https://api.twitter.com/oauth/authorize"

#  This is where the keys are, but they're hidden.
source('R/unread.R')

twitCred <- OAuthFactory$new(consumerKey=consumerKey,
                             consumerSecret=consumerSecret,
                             requestURL=reqURL,
                             accessURL=accessURL,
                             authURL=authURL)

twitCred$handshake(ssl.verifypeer = FALSE) #Pause here for the Handshake Pin Code

registerTwitterOAuth(twitCred) #Wait till you see True

#  Takes about 1 min to register.
test_tweet <- searchTwitter("#bzlgrrrg", n=2000, ssl.verifypeer = FALSE) #Get the Tweets
