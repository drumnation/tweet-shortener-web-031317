def dictionary
  dictionary = {
    "hello" => "hi",
    "to" => "2",
    "two" => "2",
    "too" => "2",
    "for" => "4",
    "four" => "4",
    "be" => "b",
    "you" => "u",
    "at" => "@",
    "and" => "&"
  }
end



def word_substituter(tweet)
  tweet.split.collect { |tweet_word| dictionary.keys.include?(tweet_word.downcase) ?
    tweet_word = dictionary[tweet_word.downcase] : tweet_word }.join(" ")
end

def bulk_tweet_shortener(tweets)
  tweets.each { |tweet| puts word_substituter(tweet) }
end

def selective_tweet_shortener(tweet)
  # shortens tweets that are more than 140 characters
  tweet.length > 140 ? word_substituter(tweet) : tweet
  # does not shorten tweets that are less than 130 characters
end

def shortened_tweet_truncator(tweet)
  # truncates tweets over 140 characters after shortening
  word_substituter(tweet).length > 140 ? word_substituter(tweet)[0..136] + "..." : tweet
  # does not shorten tweets shorter than 140 characters.
end
